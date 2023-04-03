package com.lucifer.service.dto;

import lombok.Data;

import java.sql.Timestamp;
import java.util.List;

/**
 * @author lucifer
 */
@Data
public class CoursePlanQueryCriteria {

    private String name;

    private List<Timestamp> createTime;
}
