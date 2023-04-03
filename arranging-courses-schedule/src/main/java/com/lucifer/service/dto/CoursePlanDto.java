package com.lucifer.service.dto;

import com.lucifer.base.BaseDTO;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * @author lucifinil
 */
@Getter
@Setter
public class CoursePlanDto extends BaseDTO implements Serializable {

    private Long id;

    private String collegeNo;

    private String classNo;

    private String courseNo;

    private String teacherNo;

    private String classroomNo;

    private String classTime;

    private Integer weeksSum;

    private String semester;
}
