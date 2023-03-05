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
public class ClassesDto extends BaseDTO implements Serializable {

    private Long id;

    private String code;

    private Boolean isUsed;

    private Long volume;

    private String position;
}
