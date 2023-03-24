package com.lucifer.service.dto;

import com.lucifer.base.BaseDTO;
import com.lucifer.domain.Classroom;
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
public class TeachBuildDto extends BaseDTO implements Serializable {

    private Long id;

    private String teachBuildNo;

    private String name;

    private String location;

    private List<Classroom> classroom;

    private String marks;
}
