package com.lucifer.modules.system.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.modules.system.domain.Role;
import com.lucifer.modules.system.service.dto.RoleSmallDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
 * @author lucifer
 */
@Mapper(componentModel = "spring",unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface RoleSmallMapper extends BaseMapper<RoleSmallDto, Role> {

}
