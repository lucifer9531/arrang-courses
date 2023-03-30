package com.lucifer.service;

import com.lucifer.domain.Classes;
import com.lucifer.service.dto.ClassesDto;
import com.lucifer.service.dto.ClassesQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Set;

/**
 * @author lucifer
 */
public interface ClassesService {
    /**
     * 全部查询班级
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(ClassesQueryCriteria criteria, Pageable pageable);

    /**
     * 创建班级
     * @param resources
     */
    void create(Classes resources);

    /**
     * 修改班级
     * @param resources
     */
    void update(Classes resources);

    /**
     * 删除班级
     * @param ids
     */
    void delete(Set<Long> ids);

    /**
     * 查询全部班级
     * @return
     */
    List<ClassesDto> queryAll();
}
