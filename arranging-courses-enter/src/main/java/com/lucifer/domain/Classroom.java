package com.lucifer.domain;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import com.alibaba.fastjson.annotation.JSONField;
import com.lucifer.base.BaseEntity;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @author lucifer
 */
@Entity
@Getter
@Setter
@Table(name = "enter_classroom")
public class Classroom extends BaseEntity implements Serializable {

    @Id
    @Column(name = "classroom_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @ApiModelProperty(value = "编号")
    private String classroomNo;

    @ApiModelProperty(value = "所属教学楼", hidden = true)
    @JSONField(serialize = false)
    @ManyToOne(cascade = {CascadeType.MERGE, CascadeType.REFRESH}, optional = false)
    @JoinColumn(name = "teach_build_id")
    private TeachBuild teachBuild;


    @NotBlank
    @ApiModelProperty(value = "教学楼编号")
    private String teachBuildNo;

    @NotNull
    @ApiModelProperty(value = "教室容量")
    private Long capacity;


    @ApiModelProperty(value = "属性")
    private String classroomAttr;

    @ApiModelProperty(value = "备注")
    private String remarks;

    public void copy(Classroom source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
