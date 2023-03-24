package com.lucifer.service.dto;

import com.lucifer.base.BaseDTO;
import com.lucifer.domain.TeachBuild;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

/**
 * @author lucifinil
 */
@Getter
@Setter
public class LocationDto extends BaseDTO implements Serializable {

    private Long id;

    private String name;

    private List<TeachBuild> teachBuildList;

    private String remarks;
}
