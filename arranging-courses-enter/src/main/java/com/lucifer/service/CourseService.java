package com.lucifer.service;

import com.lucifer.domain.Course;
import com.lucifer.service.dto.CourseDto;
import com.lucifer.service.dto.CourseQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Set;

/**
 * @author lucifer
 */
public interface CourseService {
    /**
     * 全部查询课程
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(CourseQueryCriteria criteria, Pageable pageable);

    /**
     * 创建课程
     * @param resources
     */
    void create(Course resources);

    /**
     * 修改课程
     * @param resources
     */
    void update(Course resources);

    /**
     * 删除课程
     * @param ids
     */
    void delete(Set<Long> ids);

    /**
     * 查询全部课程
     * @return
     */
    List<CourseDto> queryAll();
}
