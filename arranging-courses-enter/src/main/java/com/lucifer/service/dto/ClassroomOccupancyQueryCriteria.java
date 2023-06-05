package com.lucifer.service.dto;

import com.lucifer.annotation.Query;
import lombok.Data;

import java.sql.Timestamp;
import java.util.List;

/**
 * @author lucifer
 */
@Data
public class ClassroomOccupancyQueryCriteria {

    @Query(type = Query.Type.BETWEEN)
    private List<Timestamp> createTime;
}
