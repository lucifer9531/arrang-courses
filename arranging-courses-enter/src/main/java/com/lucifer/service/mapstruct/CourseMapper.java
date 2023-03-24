package com.lucifer.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.domain.Course;
import com.lucifer.service.dto.CourseDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
 * @author lucifer
 */
@Mapper(componentModel = "spring",uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface CourseMapper extends BaseMapper<CourseDto, Course> {
}
