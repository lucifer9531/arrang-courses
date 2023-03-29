package com.lucifer.repository;

import com.lucifer.domain.CoursePlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
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
}
