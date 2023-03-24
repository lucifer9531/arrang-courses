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
public class ClassroomDto extends BaseDTO implements Serializable {

    private Long id;

    private String classroomNo;

    private String name;

    private Long teachBuildId;

    private Long capacity;

    private Boolean isUsed;

    private String marks;
}
