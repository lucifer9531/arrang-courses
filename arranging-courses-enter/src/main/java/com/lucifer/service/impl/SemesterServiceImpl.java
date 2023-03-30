package com.lucifer.service.impl;

import com.lucifer.domain.Semester;
import com.lucifer.repository.SemesterRepository;
import com.lucifer.service.SemesterService;
import com.lucifer.service.dto.SemesterDto;
import com.lucifer.service.dto.SemesterQueryCriteria;
import com.lucifer.service.mapstruct.SemesterMapper;
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
public class SemesterServiceImpl implements SemesterService {

    private final SemesterRepository semesterRepository;
    private final SemesterMapper semesterMapper;


    @Override
    public Object queryAll(SemesterQueryCriteria criteria, Pageable pageable) {
        Page<Semester> page = semesterRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(semesterMapper::toDto));
    }

    @Override
    public List<SemesterDto> queryAll() {
        return semesterMapper.toDto(semesterRepository.findAll());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(Semester resources) {
        semesterRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(Semester resources) {
        Semester semester = semesterRepository.findById(resources.getId()).orElseGet(Semester::new);
        ValidationUtil.isNull(semester.getId(), "Semester", "id", resources.getId());
        semester.copy(resources);
        semesterRepository.save(semester);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            semesterRepository.deleteById(id);
        }
    }
}
