package com.lucifer.service.impl;

import com.lucifer.domain.Teacher;
import com.lucifer.repository.TeacherRepository;
import com.lucifer.service.TeacherService;
import com.lucifer.service.dto.TeacherQueryCriteria;
import com.lucifer.service.mapstruct.TeacherMapper;
import com.lucifer.utils.PageUtil;
import com.lucifer.utils.QueryHelp;
import com.lucifer.utils.ValidationUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Set;

/**
 * @author lucifer
 */
@Service
@RequiredArgsConstructor
public class TeacherServiceImpl implements TeacherService {

    private final TeacherRepository teacherRepository;
    private final TeacherMapper teacherMapper;


    @Override
    public Object queryAll(TeacherQueryCriteria criteria, Pageable pageable) {
        Page<Teacher> page = teacherRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(teacherMapper::toDto));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(Teacher resources) {
        teacherRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(Teacher resources) {
        Teacher Teacher = teacherRepository.findById(resources.getId()).orElseGet(Teacher::new);
        ValidationUtil.isNull(Teacher.getId(), "Teacher", "id", resources.getId());
        Teacher.copy(resources);
        teacherRepository.save(Teacher);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            teacherRepository.deleteById(id);
        }
    }
}
