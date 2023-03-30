package com.lucifer.service.impl;

import com.lucifer.domain.ClassTask;
import com.lucifer.repository.ClassTaskRepository;
import com.lucifer.service.ClassTaskService;
import com.lucifer.service.dto.ClassTaskDto;
import com.lucifer.service.mapstruct.ClassTaskMapper;
import com.lucifer.utils.ValidationUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author lucifer
 */
@Service
@RequiredArgsConstructor
public class ClassTaskServiceImpl implements ClassTaskService {

    private final ClassTaskRepository classTaskRepository;
    private final ClassTaskMapper classTaskMapper;

    @Override
    public List<ClassTaskDto> queryAll(String collegeNo, String semester, Pageable pageable) {
        return classTaskMapper.toDto(classTaskRepository.queryAll(collegeNo, semester, pageable));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(ClassTask resources) {
        classTaskRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(ClassTask resources) {
        ClassTask classTask = classTaskRepository.findById(resources.getId()).orElseGet(ClassTask::new);
        ValidationUtil.isNull(classTask.getId(), "ClassTask", "id", resources.getId());
        classTask.copy(resources);
        classTaskRepository.save(classTask);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            classTaskRepository.deleteById(id);
        }
    }

    @Override
    public Integer classTaskCount() {
        return classTaskRepository.classTaskCount();
    }
}
