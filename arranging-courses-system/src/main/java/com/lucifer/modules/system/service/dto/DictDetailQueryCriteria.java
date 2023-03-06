package com.lucifer.modules.system.service.dto;

import com.lucifer.annotation.Query;
import lombok.Data;

/**
* @author lucifer
*/
@Data
public class DictDetailQueryCriteria {

    @Query(type = Query.Type.INNER_LIKE)
    private String label;

    @Query(propName = "name",joinName = "dict")
    private String dictName;
}
