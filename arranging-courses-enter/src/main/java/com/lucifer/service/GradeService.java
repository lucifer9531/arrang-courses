package com.lucifer.service;

import com.lucifer.domain.Grade;
import com.lucifer.service.dto.GradeQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.Set;

/**
 * @author lucifer
 */
public interface GradeService {
    /**
     * 全部查询年级
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(GradeQueryCriteria criteria, Pageable pageable);

    /**
     * 创建年级
     * @param resources
     */
    void create(Grade resources);

    /**
     * 修改年级
     * @param resources
     */
    void update(Grade resources);

    /**
     * 删除年级
     * @param ids
     */
    void delete(Set<Long> ids);
}
