package com.lucifer.repository;

import com.lucifer.domain.ClassTask;
import com.lucifer.domain.CoursePlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author lucifer
 */
public interface CoursePlanRepository extends JpaRepository<CoursePlan, Long>, JpaSpecificationExecutor<CoursePlan> {

    /**
     * 查询全部课程
     * @param semester
     * @param collegeNo
     * @return
     */
    @Query(value = "SELECT cop.course_plan_id, cop.college_no, cop.semester, cl.name as class_no, co.name as course_no, te.name as teacher_no, cop.classroom_no," +
            "cop.class_time, cop.weeks_sum, cop.create_by, cop.create_time, cop.update_by, cop.update_time FROM cms_course_plan cop, enter_class cl, enter_course co, " +
            "enter_teacher te WHERE cop.class_no = cl.class_no and cop.course_no = co.course_no and cop.teacher_no = te.teacher_no and" +
            "(cop.semester = ?1 or ?1 is null) and (cop.college_no = ?2 or ?2 is null) order by cop.class_time asc", nativeQuery = true)
    List<CoursePlan> queryCoursePlan(String semester, String collegeNo);


    /**
     * 更新操作
     * @param weeksSum
     * @param semester
     * @param collegeNo
     * @param classNo
     * @param courseNo
     * @param teacherNo
     */
    @Modifying
    @Query(value = "update cms_course_plan cop set weeks_sum = ?1, semester = ?2 where cop.college_no = ?3 and cop.class_no = ?4 and cop.course_no = ?5 " +
            "and cop.teacher_no = ?6", nativeQuery = true)
    void updateWeeksSumAndSemester(Integer weeksSum, String semester, String collegeNo, String classNo, String courseNo, String teacherNo);
}
