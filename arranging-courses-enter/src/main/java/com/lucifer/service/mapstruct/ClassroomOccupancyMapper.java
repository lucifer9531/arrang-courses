package com.lucifer.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.domain.ClassroomOccupancy;
import com.lucifer.service.dto.ClassroomOccupancyDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
 * @author lucifer
 */
@Mapper(componentModel = "spring",uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ClassroomOccupancyMapper extends BaseMapper<ClassroomOccupancyDto, ClassroomOccupancy> {
}
