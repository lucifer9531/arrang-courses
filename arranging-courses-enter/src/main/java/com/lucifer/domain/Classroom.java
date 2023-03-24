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

    @NotBlank
    @ApiModelProperty(value = "教室名称")
    private String name;

    @ApiModelProperty(value = "所属教学楼", hidden = true)
    @JSONField(serialize = false)
    @ManyToOne(cascade = {CascadeType.MERGE, CascadeType.REFRESH}, optional = false)
    @JoinColumn(name = "teach_build_id")
    private TeachBuild teachBuild;

    @NotBlank
    @ApiModelProperty(value = "教室容量")
    private Long capacity;


    @ApiModelProperty(value = "是否使用")
    private Boolean isUsed;

    @ApiModelProperty(value = "备注")
    private String marks;

    public void copy(Classroom source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
