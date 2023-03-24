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
public class ClassesDto extends BaseDTO implements Serializable {

    private Long id;

    private String classNo;

    private Long volume;

    private TeachBuild teachBuild;

    private String name;
}
