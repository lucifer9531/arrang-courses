package com.lucifer.service;

import com.lucifer.domain.College;
import com.lucifer.service.dto.CollegeDto;
import com.lucifer.service.dto.CollegeQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.Set;

/**
 * @author lucifer
 */
public interface CollegeService {
    /**
     * 全部查询学院
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(CollegeQueryCriteria criteria, Pageable pageable);

    /**
     * 创建学院
     * @param resources
     */
    void create(College resources);

    /**
     * 修改学院
     * @param resources
     */
    void update(College resources);

    /**
     * 删除学院
     * @param ids
     */
    void delete(Set<Long> ids);

    /**
     * 查询全部学院
     * @return
     */
    Object queryAll();

    /**
     * 获取单个college
     * @param id
     * @return
     */
    CollegeDto findById(Long id);
}
