package com.lucifer.service;

import com.lucifer.domain.Classes;
import com.lucifer.service.dto.ClassesQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.Set;

/**
 * @author lucifer
 */
public interface ClassesService {
    /**
     * 全部查询教室
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(ClassesQueryCriteria criteria, Pageable pageable);

    /**
     * 创建教室
     * @param resources
     */
    void create(Classes resources);

    /**
     * 修改教室
     * @param resources
     */
    void update(Classes resources);

    /**
     * 删除教室
     * @param ids
     */
    void delete(Set<Long> ids);
}
