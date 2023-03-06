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
 * @author lucifinil
 */
@Entity
@Getter
@Setter
@Table(name = "enter_class")
public class Classes extends BaseEntity implements Serializable {

    @Id
    @Column(name = "class_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @ApiModelProperty(value = "编码")
    private String code;

    @ApiModelProperty(value = "是否占用")
    private Boolean isUsed = false;

    @ApiModelProperty(value = "容量")
    private Long volume;

    @ApiModelProperty(value = "位置")
    private String position;

    public void copy(Classes source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
