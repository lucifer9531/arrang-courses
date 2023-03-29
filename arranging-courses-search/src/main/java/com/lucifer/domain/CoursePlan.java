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
@Table(name = "cms_course_plan")
public class CoursePlan extends BaseEntity implements Serializable {

    @Id
    @Column(name = "course_plan_id")
    @ApiModelProperty(value = "ID", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @ApiModelProperty(value = "学院编码")
    private String collegeNo;

    @NotBlank
    @ApiModelProperty(value = "班级编码")
    private String classNo;

    @NotBlank
    @ApiModelProperty(value = "课程编码")
    private String courseNo;

    @NotBlank
    @ApiModelProperty(value = "教师编码")
    private String teacherNo;

    @NotBlank
    @ApiModelProperty(value = "教室编码")
    private String classroomNo;

    @NotBlank
    @ApiModelProperty(value = "上课时间")
    private String classTime;

    @NotBlank
    @ApiModelProperty(value = "上课周数")
    private Integer weeksSum;

    @NotBlank
    @ApiModelProperty(value = "学期")
    private String semester;

    public void copy(CoursePlan source) {
        BeanUtil.copyProperties(source, this, CopyOptions.create().setIgnoreNullValue(true));
    }
}
