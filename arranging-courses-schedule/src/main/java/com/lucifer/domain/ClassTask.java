package com.lucifer.domain;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import com.lucifer.base.BaseEntity;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @author lucifinil
 */
@Entity
@Getter
@Setter
@Table(name = "cms_class_task")
public class ClassTask extends BaseEntity implements Serializable {

    @Id
    @Column(name = "task_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @ApiModelProperty(value = "学期")
    private String semester;

    @NotBlank
    @ApiModelProperty(value = "学院编号")
    private String collegeNo;

    @NotBlank
    @ApiModelProperty(value = "班级编号")
    private String classNo;

    @NotBlank
    @ApiModelProperty(value = "课程编号")
    private String courseNo;

    @NotBlank
    @ApiModelProperty(value = "教师编号")
    private String teacherNo;

    @NotBlank
    @ApiModelProperty(value = "课程属性")
    private String courseAttr;

    @NotNull
    @ApiModelProperty(value = "学生人数")
    private Integer studentNumber;

    @NotNull
    @ApiModelProperty(value = "周学时")
    private Integer weeksSum;

    @NotNull
    @ApiModelProperty(value = "周数")
    private Integer weeksNumber;

    @ApiModelProperty(value = "是否固定")
    private String isFix;

    @ApiModelProperty(value = "上课时间")
    private String classTime;

    public void copy(ClassTask source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
