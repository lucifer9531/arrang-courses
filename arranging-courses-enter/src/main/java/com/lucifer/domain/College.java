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
import java.util.ArrayList;
import java.util.List;

/**
 * @author lucifinil
 */
@Entity
@Getter
@Setter
@Table(name = "enter_college")
public class College extends BaseEntity implements Serializable {

    @Id
    @Column(name = "college_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @ApiModelProperty(value = "编码")
    private String collegeNo;

    @NotBlank
    @ApiModelProperty(value = "学院名称")
    private String name;

    @ApiModelProperty(value = "所属教学楼", hidden = true)
    @JSONField(serialize = false)
    @ManyToOne(cascade = {CascadeType.MERGE, CascadeType.REFRESH}, optional = false)
    @JoinColumn(name = "teach_build_id")
    private TeachBuild teachBuild;

    @ApiModelProperty(value = "教师", hidden = true)
    @JSONField(serialize = false)
    @OneToMany(mappedBy = "college", cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Teacher> teachers;

    @NotNull
    @ApiModelProperty(value = "备注")
    private String remarks;

    public void copy(College source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
