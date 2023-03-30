package com.lucifer.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.domain.Semester;
import com.lucifer.service.dto.SemesterDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
 * @author lucifer
 */
@Mapper(componentModel = "spring",uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface SemesterMapper extends BaseMapper<SemesterDto, Semester> {
}
