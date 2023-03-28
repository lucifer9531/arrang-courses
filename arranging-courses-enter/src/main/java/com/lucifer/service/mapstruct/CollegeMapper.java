package com.lucifer.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.domain.College;
import com.lucifer.service.dto.CollegeDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
 * @author lucifer
 */
@Mapper(componentModel = "spring",uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface CollegeMapper extends BaseMapper<CollegeDto, College> {
}
