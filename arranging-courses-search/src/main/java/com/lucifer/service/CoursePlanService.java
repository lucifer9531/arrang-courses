package com.lucifer.service;

import com.lucifer.service.dto.CoursePlanDto;

import java.util.List;

/**
 * @author lucifinil
 */
public interface CoursePlanService {
    /**
     * 查询课程计划
     * @return
     */
    List<CoursePlanDto> queryAll(String semester, String collegeNo);
}
