package com.lucifer.service.dto;

import com.lucifer.base.BaseDTO;
import com.lucifer.domain.College;
import com.lucifer.domain.TeachBuild;
import com.lucifer.domain.Teacher;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

/**
 * @author lucifinil
 */
@Getter
@Setter
public class TeacherDto extends BaseDTO implements Serializable {

    private Long id;

    private String teacherNo;

    private String name;

    private College college;

    private Integer age;

    private String title;
}
