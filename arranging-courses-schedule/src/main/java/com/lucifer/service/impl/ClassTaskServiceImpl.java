package com.lucifer.service.impl;

import com.lucifer.domain.ClassTask;
import com.lucifer.domain.Classroom;
import com.lucifer.domain.CoursePlan;
import com.lucifer.domain.vo.SemesterVo;
import com.lucifer.repository.*;
import com.lucifer.service.ClassTaskService;
import com.lucifer.service.dto.ClassTaskDto;
import com.lucifer.service.mapstruct.ClassTaskMapper;
import com.lucifer.utils.ArrangingConstant;
import com.lucifer.utils.ClassScheduleUtil;
import com.lucifer.utils.ValidationUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * @author lucifer
 */
@Service
@RequiredArgsConstructor
public class ClassTaskServiceImpl implements ClassTaskService {

    private final ClassTaskRepository classTaskRepository;
    private final CollegeRepository collegeRepository;
    private final ClassRoomRepository classRoomRepository;
    private final ClassesRepository classesRepository;
    private final CoursePlanRepository coursePlanRepository;
    private final ClassTaskMapper classTaskMapper;

    private final String UNFIXED_TIME = "unFixedTime";
    private final String IS_FIXED_TIME = "isFixedTime";

    @Override
    public List<ClassTaskDto> queryAll(String collegeNo, String semester, Pageable pageable) {
        return classTaskMapper.toDto(classTaskRepository.queryAll(collegeNo, semester, pageable));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(ClassTask resources) {
        classTaskRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(ClassTask resources) {
        ClassTask classTask = classTaskRepository.findById(resources.getId()).orElseGet(ClassTask::new);
        ValidationUtil.isNull(classTask.getId(), "ClassTask", "id", resources.getId());
        classTask.copy(resources);
        classTaskRepository.save(classTask);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            classTaskRepository.deleteById(id);
        }
    }

    @Override
    public Integer classTaskCount() {
        return classTaskRepository.classTaskCount();
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void classScheduling(SemesterVo semesterVo) {
        // 获取开课任务
        List<ClassTask> classTaskList = classTaskRepository.queryAllBySemester(semesterVo.getSemester());
        // 将开课任务进行编码
        List<Map<String, List<String>>> geneList = coding(classTaskList);
        // 开始进行时间分配
        List<String> resultGeneList = codingTime(geneList);
        // 对已分配好时间的基因进行分类，生成以班级为范围的个体
        Map<String, List<String>> individualMap = transformIndividual(resultGeneList);
        // 进行遗传进化操作
        individualMap = geneticEvolution(individualMap);
        // 分配教室
        List<String> resultList = finalResult(individualMap);
        //第七步对分配好时间教室的基因进行解码，准备存入数据库
         List<CoursePlan> coursePlanList = decoding(resultList);
        //将分配好时间和教室的对象更新到数据库中的course_plan数据表中
         coursePlanRepository.saveAll(coursePlanList);
        //将开课学期还有上课周数更新进上课计划表(course_plan)，在编码里不包括开课学期以及上课周数 所以需要这一步操作
        for (ClassTask classTask : classTaskList) {
            coursePlanRepository.updateWeeksSumAndSemester(classTask.getWeeksSum(), classTask.getSemester(), classTask.getCollegeNo(),
                    classTask.getClassNo(), classTask.getCourseNo(), classTask.getTeacherNo());
        }
    }

    private Map<String, List<String>> transformIndividual(List<String> resultGeneList) {
        Map<String, List<String>> individualMap = new HashMap<>();
        List<String> classNoList = classTaskRepository.selectClassNoList();
        for (String classNo : classNoList) {
            List<String> geneList = new ArrayList<>();
            for (String gene : resultGeneList) {
                if (classNo.equals(ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_NO, gene))) {
                    geneList.add(gene);
                }
            }
            if (geneList.size() > 1) {
                individualMap.put(classNo, geneList);
            }
        }
        return individualMap;
    }

    /**
     * 遗传操作
     * @param individualMap
     * @return
     */
    private Map<String, List<String>> geneticEvolution(Map<String, List<String>> individualMap) {
        // 进化代数设为100
        int generation = ArrangingConstant.GENERATION;
        List<String> resultGeneList;
        for (int i = 0; i < generation; ++i) {
            // 完成交叉操作,产生新一代的父本
            individualMap = hybridization(individualMap);
            // 合拢个体准备变异
            closedGene(individualMap);
            // 开始变异
            resultGeneList = geneticMutation(closedGene(individualMap));
            // 进行冲突检测并消除
            conflictResolution(resultGeneList);
            // 将冲突消除后的个体再次进行分割，按班级进行分配准备进入下一次的进化
            individualMap = transformIndividual(conflictResolution(resultGeneList));
        }
        return individualMap;
    }

    /**
     * 解决冲突，同一时间一个教师上多门课的冲突
     * @param resultGeneList
     * @return
     */
    private List<String> conflictResolution(List<String> resultGeneList) {
        exit:
        for (int i = 0; i < resultGeneList.size(); ++i) {
            String gene = resultGeneList.get(i);
            String teacherNo = ClassScheduleUtil.cutGene(ArrangingConstant.TEACHER_NO, gene);
            String classTime = ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_TIME, gene);
            for (int j = i + 1; j < resultGeneList.size(); ++j) {
                String tempGene = resultGeneList.get(j);
                String tempTeacherNo = ClassScheduleUtil.cutGene(ArrangingConstant.TEACHER_NO, tempGene);
                String tempClassTime = ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_TIME, tempGene);
                if (teacherNo.equals(tempTeacherNo) && classTime.equals(tempClassTime)) {
                    String newClassTime = ClassScheduleUtil.randomTime(gene, resultGeneList);
                    gene = gene.substring(0, 29) + newClassTime;
                    continue exit;
                }
            }
        }
        return resultGeneList;
    }

    private Map<String, List<String>> hybridization(Map<String, List<String>> individualMap) {
        for (String classNo : individualMap.keySet()) {
            List<String> individualList = individualMap.get(classNo);
            List<String> oldIndividualList = individualList;
            // 进行基因的交叉操作生成新个体
            individualList = selectiveGene(individualList);
            // 对父代的适应度值和新生成的子代适应值进行对比，选择适应度值高的一个进入下一代的遗传
            if (ClassScheduleUtil.alculateExpectedValue(individualList) >= ClassScheduleUtil.alculateExpectedValue(oldIndividualList)) {
                individualMap.put(classNo, individualList);
            } else {
                individualMap.put(classNo, oldIndividualList);
            }
        }
        return individualMap;
    }

    /**
     * 基因变异操作
     * @param resultGeneList
     * @return
     */
    private List<String> geneticMutation(List<String> resultGeneList) {
        int min = 0;
        int max = resultGeneList.size() - 1;
        //变异概率
        double mutationRate = 0.01;
        //每一代所要选取的变异个数,计算公式为基因数量*变异率
        int mutationNumber = (int) (resultGeneList.size() * mutationRate);
        if (mutationNumber < 1) {
            mutationNumber = 1;
        }
        for (int i = 0; i < mutationNumber; ) {
            // 生成随机数
            int temp = min + (int) (Math.random() * (max + 1 - min));
            String gene = resultGeneList.get(temp);
            if ("2".equals(ClassScheduleUtil.cutGene(ArrangingConstant.IS_FIX, gene))) {
                break;
            } else {
                String newClassTime = ClassScheduleUtil.randomTime(gene, resultGeneList);
                gene = gene.substring(0, 29) + newClassTime;
                resultGeneList.remove(temp);
                resultGeneList.add(temp, gene);
                i = i + 1;
            }
        }
        return resultGeneList;
    }

    /**
     * 个体间的随机选择两条基因准备进行杂交并生成一个新个体
     * @param individualList
     * @return
     */
    private List<String> selectiveGene(List<String> individualList) {
        int min = 0;
        int max = individualList.size() - 1;
        boolean flag;
        do {
            // 随机生成0到individualList.size - 1的两个数，用来选取基因
            // 选取第一个随机数
            int firstTemp = min + (int) (Math.random() * (max + 1 - min));
            // 选取第二个随机数
            int secondTemp = min + (int) (Math.random() * (max + 1 - min));
            // 获取第一条基因
            String firstGene = individualList.get(firstTemp);
            // 获取第二条基因
            String secondGene = individualList.get(secondTemp);
            //判断选择的两个随机数为否相同，确保不会选择同一条基因进行交叉操作
            if (firstTemp == secondTemp) {
                flag = false;
            } else if ("2".equals(ClassScheduleUtil.cutGene(ArrangingConstant.IS_FIX, firstGene)) || "2".equals(ClassScheduleUtil.cutGene(ArrangingConstant.IS_FIX, secondGene))) {
                // 判断选择的两条基因对应的时间值是否固定，如果固定则重新选择两条
                flag = false;
            } else {
                // 分别获取所选的两条基因的时间片值
                String firstClassTime = ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_TIME, firstGene);
                String secondClassTime = ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_TIME, secondGene);
                // 将它们的时间进行交换
                firstGene = firstGene.substring(0, 29) + secondClassTime;
                secondGene = secondGene.substring(0, 29) + firstClassTime;
                // 对原有的基因进行移除，然后将交换过时间的两条基因添加进去
                individualList.remove(firstTemp);
                individualList.add(firstTemp, firstGene);
                individualList.remove(secondTemp);
                individualList.add(secondTemp, secondGene);
                flag = true;
            }
        } while (!flag);
        return individualList;
    }

    private List<String> closedGene(Map<String, List<String>> individualMap) {
        List<String> resultGeneList = new ArrayList<>();
        for (List<String> individualList : individualMap.values()) {
            resultGeneList.addAll(individualList);
        }
        return resultGeneList;
    }

    /**
     * 分配教室
     * @param individualMap
     * @return
     */
    private List<String> finalResult(Map<String, List<String>> individualMap) {
        //用来存放结果（加上教室编号的基因）
        List<String> resultList = new ArrayList<>();
        //合拢个体
        List<String> resultGeneList = closedGene(individualMap);
        //教室编号
        String classroomNo;
        //学院编号集合
        List<String> collegeNoList = classTaskRepository.selectCollegeNoList();
        //将基因按学院分配
        Map<String, List<String>> map = geneByCollege(resultGeneList, collegeNoList);
        for (String collegeNo : map.keySet()) {
            // 根据教务处划分的教学区域，查询学院对应的教学楼编号
            Long teachBuildId = collegeRepository.findCollegeByCollegeNo(collegeNo).getTeachBuild().getId();
            // 根据学院编号查询出该学院下的基因准备开始安排教室
            List<String> tempResultGeneList = map.get(collegeNo);
            // 根据教学楼编号查询出该教学楼下所有的教室来进行随机分配
            List<Classroom> classroomList = classRoomRepository.queryAllByTeachBuildId(teachBuildId);
            for (String gene : tempResultGeneList) {
                classroomNo = assignClassroom(gene, classroomList, resultList);
                gene = gene + classroomNo;
                resultList.add(gene);
            }
        }
        return resultList;
    }

    private Map<String, List<String>> geneByCollege(List<String> resultGeneList, List<String> collegeNoList) {
        Map<String, List<String>> map = new HashMap<>();
        for (String collegeNo : collegeNoList) {
            List<String> geneList = new ArrayList<>();
            for (String gene : resultGeneList) {
                if (ClassScheduleUtil.cutGene(ArrangingConstant.COLLEGE_NO, gene).equals(collegeNo)) {
                    geneList.add(gene);
                }
            }
            if (geneList.size() > 0) {
                map.put(collegeNo, geneList);
            }
        }
        return map;
    }

    private String assignClassroom(String gene, List<Classroom> classroomList, List<String> resultList) {
        //体育大楼
        List<Classroom> sportsBuildingInfo = classRoomRepository.queryAllByTeachBuildNo("08");
        //实验大楼
        List<Classroom> experimentalBuildingInfo = classRoomRepository.queryAllByTeachBuildNo("09");
        //医学实验大楼
        List<Classroom> medicalBuildingInfo = classRoomRepository.queryAllByTeachBuildNo("10");

        String classNo = ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_NO, gene);
        Long studentNumber = classesRepository.findByClassNo(classNo).getVolume();
        String courseAttr = ClassScheduleUtil.cutGene(ArrangingConstant.COURSE_ATTR, gene);
        //如果课程属性是"03"表示体育课，从体育楼里选择一个教室
        switch (courseAttr) {
            case ArrangingConstant.PHYSICAL_CODE:
                return chooseClassroom(studentNumber, gene, sportsBuildingInfo, resultList);
            case ArrangingConstant.ELECTRICITY_CODE:
            case ArrangingConstant.COMPUTER_CODE:
            case ArrangingConstant.PHYSICAL_EXPERIMENT_CODE:
                //如果课程属性是"08"、"10"、"12"表示电子实验课、计算机实验课、物理实验课则需要在实验楼里选择一个教室
                return chooseClassroom(studentNumber, gene, experimentalBuildingInfo, resultList);
            case ArrangingConstant.MEDICAL_CODE:
                //如果课程属性是"04"表示医学实验课，需要从医学楼里选择一个教室
                return chooseClassroom(studentNumber, gene, medicalBuildingInfo, resultList);
            default:
                //理论实验课码值以及其他特殊的码值，不需要在特殊的教学楼里分配。由教务处指定的楼已经可以直接获取
                return chooseClassroom(studentNumber, gene, classroomList, resultList);
        }
    }

    /**
     * 选择教室
     * @param studentNumber
     * @param gene
     * @param classroomList
     * @param resultList
     * @return
     */
    private String chooseClassroom(Long studentNumber, String gene, List<Classroom> classroomList, List<String> resultList) {
        int min = 0;
        int max = classroomList.size() - 1;
        //生成一个随机数，用来选取一个教室
        int temp = min + (int) (Math.random() * (max + 1 - min));
        Classroom classroom = classroomList.get(temp);
        if (judgingClassroom(studentNumber, gene, classroom, resultList)) {
            return classroom.getClassroomNo();
        } else {
            return chooseClassroom(studentNumber, gene, classroomList, resultList);
        }
    }

    private Boolean judgingClassroom(Long studentNumber, String gene, Classroom classroom, List<String> resultList) {
        String courseAttr = ClassScheduleUtil.cutGene(ArrangingConstant.COURSE_ATTR, gene);
        //如果课程属性是"01"或者"02"则表示是理论课教室，则教室属性为"01"即可
        if (courseAttr.equals(ArrangingConstant.PROFESSIONAL_CODE) || courseAttr.equals(ArrangingConstant.ELECTIVE_CODE)) {
            //课程属性"01"或者"02"同时教室属性为"01"
            if ("01".equals(classroom.getClassroomAttr())) {
                //教室容量大于学上课人数
                if (studentNumber <= classroom.getCapacity()) {
                    //判断教室上课时间是否重复
                    return isRedundant(gene, resultList, classroom);
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } else {
            //如果课程属性不为"01或者"02"则课程属性和教室属性一一对应
            if (ClassScheduleUtil.cutGene(ArrangingConstant.COURSE_ATTR, gene).equals(classroom.getClassroomAttr())) {
                //教室容量大于学生容量
                if (studentNumber <= classroom.getCapacity()) {
                    //判断教室上课时间是否重复
                    return isRedundant(gene, resultList, classroom);
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

    }

    /**
     * 判断在同一时间片是否有同时两个班级在同一个教室上课
     * @param gene
     * @param resultList
     * @param classroom
     * @return
     */
    private Boolean isRedundant(String gene, List<String> resultList, Classroom classroom) {
        //当教室还没有开始分配时，第一个分配的班级可以随意分配教室而不会重复
        if (resultList.size() == 0) {
            return true;
        } else {
            for (String resultGene : resultList) {
                //如果分配的教室已经在之前分配了则需要去判断时间是否有冲突
                if (ClassScheduleUtil.cutGene(ArrangingConstant.CLASSROOM_NO, resultGene).equals(classroom.getClassroomNo())) {
                    //如果时间一样的话测表示有冲突
                    if (ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_TIME, gene).equals(ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_TIME, resultGene))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private List<String> codingTime(List<Map<String, List<String>>> geneList) {
        List<String> resultGeneList = new ArrayList<>();
        List<String> isFixedTimeGeneList = geneList.get(0).get(IS_FIXED_TIME);
        List<String> unFixedTimeGeneList = geneList.get(0).get(UNFIXED_TIME);
        // 已经固定时间的编码时间已经排好，不需要再排
        resultGeneList.addAll(isFixedTimeGeneList);
        // 时间不固定的基因由程序进行随机分配
        for (String gene : unFixedTimeGeneList) {
            //获取一个不重复的时间片值
            String classTime = ClassScheduleUtil.randomTime(gene, resultGeneList);
            gene = gene.substring(0, 29) + classTime;
            resultGeneList.add(gene);
        }
        return resultGeneList;
    }

    private List<Map<String, List<String>>> coding(List<ClassTask> classTaskList) {
        List<Map<String, List<String>>> geneList = new ArrayList<>();
        Map<String, List<String>> geneListMap = new HashMap<>();
        // 不固定时间的编码基因组
        List<String> unFixedTimeGeneList = new ArrayList<>();
        // 固定时间的编码基因组
        List<String> isFixedTimeGeneList = new ArrayList<>();
        for (ClassTask classTask : classTaskList) {
            // 根据isFix的值判断是否固定，为1则不固定classTime默认填充”00“
            if ("1".equals(classTask.getIsFix())) {
                // 计算一周的上课次数，一次对应一个基因，2次对应两个基因。依此类推
                int size = classTask.getWeeksNumber() / 2;
                for (int i = 0; i < size; i++) {
                    String gene = classTask.getIsFix() + classTask.getCollegeNo() + classTask.getClassNo() + classTask.getTeacherNo() + classTask.getCourseNo() + classTask.getCourseAttr() + ArrangingConstant.DEFAULT_CLASS_TIME;
                    unFixedTimeGeneList.add(gene);
                }
            }
            // isFix的值为2则classTime有值，需要对classTime的值进行切割
            if ("2".equals(classTask.getIsFix())) {
                int size = classTask.getWeeksNumber() / 2;
                for (int i = 0; i < size; i++) {
                    String classTime = classTask.getClassTime().substring(i * 2, (i + 1) * 2);
                    String gene = classTask.getIsFix() + classTask.getCollegeNo() + classTask.getClassNo() + classTask.getTeacherNo() + classTask.getCourseNo() + classTask.getCourseAttr() + classTime;
                    isFixedTimeGeneList.add(gene);
                }
            }
        }
        geneListMap.put(UNFIXED_TIME, unFixedTimeGeneList);
        geneListMap.put(IS_FIXED_TIME, isFixedTimeGeneList);
        geneList.add(geneListMap);
        return geneList;
    }

    /**
     * 开始解码，将基因字符串解码为对象
     * @param resultList
     * @return
     */
    private List<CoursePlan> decoding(List<String> resultList) {
        List<CoursePlan> coursePlanList = new ArrayList<>();
        for (String gene : resultList) {
            CoursePlan coursePlan = new CoursePlan();
            coursePlan.setCollegeNo(ClassScheduleUtil.cutGene(ArrangingConstant.COLLEGE_NO, gene));
            coursePlan.setClassNo(ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_NO, gene));
            coursePlan.setCourseNo(ClassScheduleUtil.cutGene(ArrangingConstant.COURSE_NO, gene));
            coursePlan.setTeacherNo(ClassScheduleUtil.cutGene(ArrangingConstant.TEACHER_NO, gene));
            coursePlan.setClassroomNo(ClassScheduleUtil.cutGene(ArrangingConstant.CLASSROOM_NO, gene));
            coursePlan.setClassTime(ClassScheduleUtil.cutGene(ArrangingConstant.CLASS_TIME, gene));
            coursePlanList.add(coursePlan);

        }
        return coursePlanList;
    }
}
