package com.lucifer.modules.system.service.dto;

import com.lucifer.annotation.Query;
import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @author lucifer
 */
@Data
public class UserQueryCriteria implements Serializable {

    @Query
    private Long id;

    @Query(blurry = "username")
    private String blurry;

    @Query
    private Boolean enabled;

    @Query(type = Query.Type.BETWEEN)
    private List<Timestamp> createTime;
}
