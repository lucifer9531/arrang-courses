package com.lucifer.modules.system.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.modules.system.domain.Dict;
import com.lucifer.modules.system.service.dto.DictDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author lucifer
*/
@Mapper(componentModel = "spring",unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface DictMapper extends BaseMapper<DictDto, Dict> {

}
