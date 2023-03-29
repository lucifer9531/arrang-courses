package com.lucifer.service.impl;

import com.lucifer.repository.CoursePlanRepository;
import com.lucifer.service.CoursePlanService;
import com.lucifer.service.dto.CoursePlanDto;
import com.lucifer.service.mapstruct.CoursePlanMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lucifer
 */
@Service
@RequiredArgsConstructor
public class CoursePlanServiceImpl implements CoursePlanService {

    private final CoursePlanRepository coursePlanRepository;
    private final CoursePlanMapper coursePlanMapper;

    @Override
    public List<CoursePlanDto> queryAll(String semester, String collegeNo) {
        return coursePlanMapper.toDto(coursePlanRepository.queryCoursePlan(semester, collegeNo));
    }
}
