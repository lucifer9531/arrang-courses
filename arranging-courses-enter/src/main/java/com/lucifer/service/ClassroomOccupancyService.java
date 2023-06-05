package com.lucifer.service;

import com.lucifer.domain.ClassroomOccupancy;
import com.lucifer.service.dto.ClassroomOccupancyQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.Set;

/**
 * @author lucifer
 */
public interface ClassroomOccupancyService {
    /**
     * 全部查询教室
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(ClassroomOccupancyQueryCriteria criteria, Pageable pageable);

    /**
     * 创建教室
     * @param resources
     */
    void create(ClassroomOccupancy resources);

    /**
     * 修改教室
     * @param resources
     */
    void update(ClassroomOccupancy resources);

    /**
     * 删除教室
     * @param ids
     */
    void delete(Set<Long> ids);
}
