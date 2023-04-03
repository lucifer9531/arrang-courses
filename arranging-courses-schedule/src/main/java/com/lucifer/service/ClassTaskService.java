package com.lucifer.service;

import com.lucifer.domain.ClassTask;
import com.lucifer.domain.vo.SemesterVo;
import com.lucifer.service.dto.ClassTaskDto;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Set;

/**
 * @author lucifinil
 */
public interface ClassTaskService {
    /**
     * 查询全部的教学任务
     * @param collegeNo
     * @param semester
     * @param pageable
     * @return
     */
    List<ClassTaskDto> queryAll(String collegeNo, String semester, Pageable pageable);

    /**
     * 创建教学任务
     * @param resources
     */
    void create(ClassTask resources);

    /**
     * 更新教学任务
     * @param resources
     */
    void update(ClassTask resources);

    /**
     * 删除教学任务
     * @param ids
     */
    void delete(Set<Long> ids);

    /**
     * 查询任务总量
     * @return
     */
    Integer classTaskCount();

    /**
     * 排课
     * @param semesterVo
     */
    void classScheduling(SemesterVo semesterVo);
}
