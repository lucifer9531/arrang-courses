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
 * @author lucifinil
 */
@Entity
@Getter
@Setter
@Table(name = "enter_teacher")
public class Teacher extends BaseEntity implements Serializable {

    @Id
    @Column(name = "teacher_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @ApiModelProperty(value = "编码")
    private String teacherNo;

    @NotBlank
    @ApiModelProperty(value = "教师名字")
    private String name;

    @ApiModelProperty(value = "所属学院", hidden = true)
    @JSONField(serialize = false)
    @ManyToOne(cascade = {CascadeType.MERGE, CascadeType.REFRESH}, optional = false)
    @JoinColumn(name = "college_id")
    private College college;

    @ApiModelProperty(value = "年龄")
    private Integer age;

    @ApiModelProperty(value = "职称")
    private String title;

    public void copy(Teacher source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
