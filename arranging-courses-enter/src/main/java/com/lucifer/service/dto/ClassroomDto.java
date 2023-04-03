package com.lucifer.service.dto;

import com.lucifer.base.BaseDTO;
import com.lucifer.domain.TeachBuild;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * @author lucifinil
 */
@Getter
@Setter
public class ClassroomDto extends BaseDTO implements Serializable {

    private Long id;

    private String classroomNo;

    private TeachBuild teachBuild;

    private String teachBuildNo;

    private Long capacity;

    private String classroomAttr;

    private String remarks;
}
