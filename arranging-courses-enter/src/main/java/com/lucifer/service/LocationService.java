package com.lucifer.service;

import com.lucifer.domain.Location;
import com.lucifer.service.dto.LocationDto;
import com.lucifer.service.dto.LocationQueryCriteria;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Set;

/**
 * @author lucifer
 */
public interface LocationService {
    /**
     * 全部查询位置
     * @param criteria
     * @param pageable
     * @return
     */
    Object queryAll(LocationQueryCriteria criteria, Pageable pageable);

    /**
     * 创建位置
     * @param resources
     */
    void create(Location resources);

    /**
     * 修改位置
     * @param resources
     */
    void update(Location resources);

    /**
     * 删除位置
     * @param ids
     */
    void delete(Set<Long> ids);

    /**
     * 查询全部位置
     * @return
     */
    List<LocationDto> queryAll();
}
