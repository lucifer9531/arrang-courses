package com.lucifer.repository;

import com.lucifer.domain.ClassTask;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import javax.validation.constraints.NotBlank;
import java.util.List;

/**
 * @author lucifer
 */
public interface ClassTaskRepository extends JpaRepository<ClassTask, Long>, JpaSpecificationExecutor<ClassTask> {

    /**
     * 查询全部的教学任务
     * @param collegeNo
     * @param semester
     * @param pageable
     * @return
     */
    @Query(value = "SELECT clt.task_id, clt.semester, cl.name as class_no, co.name as course_no, te.name as teacher_no, coll.name as college_no," +
            " clt.course_attr,clt.student_number, clt.weeks_sum, clt.weeks_number, clt.is_fix, clt.class_time, clt.create_by, clt.create_time, clt.update_by, " +
            "clt.update_time FROM cms_class_task clt, enter_class cl, enter_course co, enter_teacher te, enter_college coll WHERE cl.class_no = clt.class_no and" +
            " co.course_no = clt.course_no and clt.teacher_no = te.teacher_no and clt.college_no = coll.college_no and (clt.college_no = ?1 or ?1 is null) " +
            "and (clt.semester = ?2 or ?2 is null)", nativeQuery = true)
    List<ClassTask> queryAll(String collegeNo, String semester, Pageable pageable);

    /**
     * 查询总条数
     * @return
     */
    @Query(value = "SELECT count(*) FROM cms_class_task", nativeQuery = true)
    Integer classTaskCount();

    /**
     * 根据学期查询所有的课程列表
     * @param semester
     * @return
     */
    List<ClassTask> queryAllBySemester(@NotBlank String semester);

    /**
     * 根据列名查询
     * @return
     */
    @Query(value = "SELECT distinct class_no from cms_class_task", nativeQuery = true)
    List<String> selectClassNoList();

    /**
     * 根据列名查询
     * @return
     */
    @Query(value = "SELECT distinct college_no from cms_class_task", nativeQuery = true)
    List<String> selectCollegeNoList();
}
