package com.lucifer.service.impl;

import com.lucifer.domain.Grade;
import com.lucifer.repository.GradeRepository;
import com.lucifer.service.GradeService;
import com.lucifer.service.dto.GradeQueryCriteria;
import com.lucifer.service.mapstruct.GradeMapper;
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
public class GradeServiceImpl implements GradeService {

    private final GradeRepository gradeRepository;
    private final GradeMapper gradeMapper;


    @Override
    public Object queryAll(GradeQueryCriteria criteria, Pageable pageable) {
        Page<Grade> page = gradeRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(gradeMapper::toDto));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(Grade resources) {
        gradeRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(Grade resources) {
        Grade grade = gradeRepository.findById(resources.getId()).orElseGet(Grade::new);
        ValidationUtil.isNull(grade.getId(), "Grade", "id", resources.getId());
        grade.copy(resources);
        gradeRepository.save(grade);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            gradeRepository.deleteById(id);
        }
    }
}
