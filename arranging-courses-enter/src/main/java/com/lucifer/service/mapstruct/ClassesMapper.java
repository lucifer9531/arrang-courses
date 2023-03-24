package com.lucifer.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.domain.Classes;
import com.lucifer.service.dto.ClassesDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
 * @author lucifer
 */
@Mapper(componentModel = "spring",uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ClassesMapper extends BaseMapper<ClassesDto, Classes> {
}
