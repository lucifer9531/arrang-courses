package com.lucifer.domain;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import com.alibaba.fastjson.annotation.JSONField;
import com.lucifer.base.BaseEntity;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @author lucifer
 */
@Entity
@Getter
@Setter
@Table(name = "enter_classroom_occupancy")
public class ClassroomOccupancy extends BaseEntity implements Serializable {

    @Id
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ApiModelProperty(value = "教室ID")
    private Long classroomId;

    @NotBlank
    @ApiModelProperty(value = "教室名称")
    private String classroomName;

    @ApiModelProperty(value = "开始时间")
    @NotBlank
    private Timestamp startTime;

    @ApiModelProperty(value = "结束时间")
    @NotBlank
    private Timestamp endTime;

    @ApiModelProperty(value = "占用教室的课程或活动名称")
    private String courseName;

    @ApiModelProperty(value = "占用教室的课程或活动名称")
    private String instructorName;

    @ApiModelProperty(value = "备注")
    private String remarks;

    public void copy(ClassroomOccupancy source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
