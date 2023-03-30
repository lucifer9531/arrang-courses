package com.lucifer.service.impl;

import com.lucifer.domain.Classes;
import com.lucifer.exception.EntityExistException;
import com.lucifer.repository.ClassesRepository;
import com.lucifer.service.ClassesService;
import com.lucifer.service.dto.ClassesDto;
import com.lucifer.service.dto.ClassesQueryCriteria;
import com.lucifer.service.mapstruct.ClassesMapper;
import com.lucifer.utils.PageUtil;
import com.lucifer.utils.QueryHelp;
import com.lucifer.utils.ValidationUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

/**
 * @author lucifer
 */
@Service
@RequiredArgsConstructor
public class ClassesServiceImpl implements ClassesService {

    private final ClassesRepository classesRepository;
    private final ClassesMapper classesMapper;


    @Override
    public Object queryAll(ClassesQueryCriteria criteria, Pageable pageable) {
        Page<Classes> page = classesRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(classesMapper::toDto));
    }

    @Override
    public List<ClassesDto> queryAll() {
        return classesMapper.toDto(classesRepository.findAll());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(Classes resources) {
        if (classesRepository.findByClassNo(resources.getClassNo()) != null) {
            throw new EntityExistException(Classes.class, "classNo", resources.getClassNo());
        }
        classesRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(Classes resources) {
        Classes classes = classesRepository.findById(resources.getId()).orElseGet(Classes::new);
        ValidationUtil.isNull(classes.getId(), "Class", "id", resources.getId());
        classes.copy(resources);
        classesRepository.save(classes);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            classesRepository.deleteById(id);
        }
    }
}
