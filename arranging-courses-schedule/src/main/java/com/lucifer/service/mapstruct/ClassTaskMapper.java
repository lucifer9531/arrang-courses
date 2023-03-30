package com.lucifer.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.domain.ClassTask;
import com.lucifer.service.dto.ClassTaskDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
 * @author lucifer
 */
@Mapper(componentModel = "spring",uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ClassTaskMapper extends BaseMapper<ClassTaskDto, ClassTask> {
}
