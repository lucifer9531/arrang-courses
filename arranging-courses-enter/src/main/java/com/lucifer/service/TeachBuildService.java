package com.lucifer.service;

import com.lucifer.domain.TeachBuild;
import com.lucifer.service.dto.TeachBuildDto;
import com.lucifer.service.dto.TeachBuildQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Set;

/**
 * @author lucifer
 */
public interface TeachBuildService {
    /**
     * 全部查询教室
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(TeachBuildQueryCriteria criteria, Pageable pageable);

    /**
     * 创建教室
     * @param resources
     */
    void create(TeachBuild resources);

    /**
     * 修改教室
     * @param resources
     */
    void update(TeachBuild resources);

    /**
     * 删除教室
     * @param ids
     */
    void delete(Set<Long> ids);

    /**
     * 查询全部教学区
     * @return
     */
    List<TeachBuildDto> queryAll();
}
