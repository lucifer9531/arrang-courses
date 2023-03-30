package com.lucifer.service;

import com.lucifer.domain.Semester;
import com.lucifer.service.dto.SemesterDto;
import com.lucifer.service.dto.SemesterQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Set;

/**
 * @author lucifer
 */
public interface SemesterService {
    /**
     * 全部查询学期
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(SemesterQueryCriteria criteria, Pageable pageable);

    /**
     * 创建学期
     * @param resources
     */
    void create(Semester resources);

    /**
     * 修改学期
     * @param resources
     */
    void update(Semester resources);

    /**
     * 删除学期
     * @param ids
     */
    void delete(Set<Long> ids);

    /**
     * 查询全部学期
     * @return
     */
    List<SemesterDto> queryAll();
}
