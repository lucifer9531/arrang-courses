package com.lucifer.modules.system.service.mapstruct;

import com.lucifer.base.BaseMapper;
import com.lucifer.modules.system.domain.DictDetail;
import com.lucifer.modules.system.service.dto.DictDetailDto;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

/**
* @author lucifer
*/
@Mapper(componentModel = "spring", uses = {DictSmallMapper.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface DictDetailMapper extends BaseMapper<DictDetailDto, DictDetail> {

}
