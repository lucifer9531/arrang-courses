package com.lucifer.service.dto;

import com.lucifer.annotation.Query;
import lombok.Data;

import java.sql.Timestamp;
import java.util.List;

/**
 * @author lucifer
 */
@Data
public class CourseQueryCriteria {

    /**
     * 模糊
     */
    @Query(type = Query.Type.INNER_LIKE)
    private String name;

    @Query(type = Query.Type.BETWEEN)
    private List<Timestamp> createTime;
}
