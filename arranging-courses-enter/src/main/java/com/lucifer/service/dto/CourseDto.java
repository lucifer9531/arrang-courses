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
public class CourseDto extends BaseDTO implements Serializable {

    private Long id;

    private String courseNo;

    private String type;

    private String name;

    private String courseAttr;

    private String remarks;
}
