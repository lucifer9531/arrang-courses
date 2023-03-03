package com.lucifer.modules.system.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.modules.system.domain.Menu;
import com.lucifer.modules.system.service.dto.MenuDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
 * @author lucifer
 */
@Mapper(componentModel = "spring",unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface MenuMapper extends BaseMapper<MenuDto, Menu> {
}
