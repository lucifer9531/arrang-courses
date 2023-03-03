package com.lucifer.modules.system.service.dto;

import com.lucifer.base.BaseDTO;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

/**
* @author lucifer
*/
@Getter
@Setter
public class DictDto extends BaseDTO implements Serializable {

    private Long id;

    private List<DictDetailDto> dictDetails;

    private String name;

    private String description;
}
