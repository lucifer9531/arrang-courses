package com.lucifer.service;

import com.lucifer.domain.Teacher;
import com.lucifer.service.dto.TeacherQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.Set;

/**
 * @author lucifer
 */
public interface TeacherService {
    /**
     * 全部查询教师
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(TeacherQueryCriteria criteria, Pageable pageable);

    /**
     * 创建教师
     * @param resources
     */
    void create(Teacher resources);

    /**
     * 修改教师
     * @param resources
     */
    void update(Teacher resources);

    /**
     * 删除教师
     * @param ids
     */
    void delete(Set<Long> ids);
}
