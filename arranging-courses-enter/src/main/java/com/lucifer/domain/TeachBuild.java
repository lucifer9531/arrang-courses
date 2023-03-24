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
import java.util.List;

/**
 * @author lucifer
 */
@Entity
@Getter
@Setter
@Table(name = "enter_teach_build")
public class TeachBuild extends BaseEntity implements Serializable {


    @Id
    @Column(name = "teach_build_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @ApiModelProperty(value = "编号")
    private String teachBuildNo;

    @NotBlank
    @ApiModelProperty(value = "教室名称")
    private String name;

    @ApiModelProperty(value = "教学楼位置")
    private String location;

    @ApiModelProperty(value = "教室", hidden = true)
    @JSONField(serialize = false)
    @OneToMany(mappedBy = "teachBuild", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
     private List<Classroom> classroom;

    @ApiModelProperty(value = "备注")
    private String marks;

    public void copy(TeachBuild source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
