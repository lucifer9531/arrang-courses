package com.lucifer.modules.system.service.dto;

import com.lucifer.annotation.Query;
import lombok.Data;

/**
 * @author lucifer
 * 公共查询类
 */
@Data
public class DictQueryCriteria {

    @Query(blurry = "name,description")
    private String blurry;
}
