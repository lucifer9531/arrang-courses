package com.lucifer.service.dto;

import com.lucifer.base.BaseDTO;
import com.lucifer.domain.TeachBuild;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @author lucifinil
 */
@Getter
@Setter
public class ClassroomOccupancyDto extends BaseDTO implements Serializable {

    private Long id;

    private Long classroomId;

    private String classroomName;

    private Timestamp startTime;

    private Timestamp endTime;

    private String courseName;

    private String instructorName;

    private String remarks;

}
