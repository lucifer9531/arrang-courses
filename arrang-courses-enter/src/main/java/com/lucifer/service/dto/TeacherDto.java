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
public class TeacherDto extends BaseDTO implements Serializable {

    private Long id;

    private String name;

    private String gender;

    private String faculty;

    private String classes;

    private String course;
}
