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
public class ClassTaskDto extends BaseDTO implements Serializable {

    private Long id;

    private String semester;

    private String collegeNo;

    private String classNo;

    private String courseNo;

    private String teacherNo;

    private String courseAttr;

    private Integer studentNumber;

    private Integer weeksSum;

    private Integer weeksNumber;

    private String isFix;

    private String classTime;
}
