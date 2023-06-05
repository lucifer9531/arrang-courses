package com.lucifer.service;

import com.lucifer.domain.Classroom;
import com.lucifer.service.dto.ClassesDto;
import com.lucifer.service.dto.ClassroomDto;
import com.lucifer.service.dto.ClassroomQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Set;

/**
 * @author lucifer
 */
public interface ClassroomService {
    /**
     * 全部查询教室
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(ClassroomQueryCriteria criteria, Pageable pageable);

    /**
     * 全部查询教室
     * @return
     */
    List<ClassroomDto> queryAll();

    /**
     * 创建教室
     * @param resources
     */
    void create(Classroom resources);

    /**
     * 修改教室
     * @param resources
     */
    void update(Classroom resources);

    /**
     * 删除教室
     * @param ids
     */
    void delete(Set<Long> ids);
}
