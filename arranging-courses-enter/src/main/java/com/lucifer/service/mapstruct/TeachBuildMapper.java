package com.lucifer.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.domain.TeachBuild;
import com.lucifer.service.dto.TeachBuildDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
 * @author lucifer
 */
@Mapper(componentModel = "spring",uses = {ClassroomMapper.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface TeachBuildMapper extends BaseMapper<TeachBuildDto, TeachBuild> {
}
