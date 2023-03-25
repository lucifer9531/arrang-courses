package com.lucifer.domain;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import com.lucifer.base.BaseEntity;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * @author lucifer
 */
@Entity
@Getter
@Setter
@Table(name = "enter_course")
public class Course extends BaseEntity implements Serializable {

    @Id
    @Column(name = "course_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @ApiModelProperty(value = "编号")
    private String courseNo;

    @NotBlank
    @ApiModelProperty(value = "类型")
    private String type;

    @NotBlank
    @ApiModelProperty(value = "课程名称")
    private String name;

    @ApiModelProperty(value = "出版社")
    private String publisher;

    @ApiModelProperty(value = "课程状态(字典)")
    @NotBlank
    private String status;

    @ApiModelProperty(value = "优先级")
    private Integer level;

    @ApiModelProperty(value = "学时")
    private Long hour;

    @ApiModelProperty(value = "学分")
    private Long credit;

    @ApiModelProperty(value = "备注")
    private String remarks;

    public void copy(Course source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
