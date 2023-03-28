package com.lucifer.service.impl;

import com.lucifer.domain.College;
import com.lucifer.repository.CollegeRepository;
import com.lucifer.service.CollegeService;
import com.lucifer.service.dto.CollegeDto;
import com.lucifer.service.dto.CollegeQueryCriteria;
import com.lucifer.service.mapstruct.CollegeMapper;
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
public class CollegeServiceImpl implements CollegeService {

    private final CollegeRepository collegeRepository;
    private final CollegeMapper collegeMapper;


    @Override
    public Object queryAll(CollegeQueryCriteria criteria, Pageable pageable) {
        Page<College> page = collegeRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(collegeMapper::toDto));
    }

    @Override
    public List<CollegeDto> queryAll() {
        return collegeMapper.toDto(collegeRepository.findAll());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public CollegeDto findById(Long id) {
        College college = collegeRepository.findById(id).orElseGet(College::new);
        ValidationUtil.isNull(college.getId(), "College", "id", id);
        return collegeMapper.toDto(college);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(College resources) {
        collegeRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(College resources) {
        College college = collegeRepository.findById(resources.getId()).orElseGet(College::new);
        ValidationUtil.isNull(college.getId(), "College", "id", resources.getId());
        college.copy(resources);
        collegeRepository.save(college);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            collegeRepository.deleteById(id);
        }
    }
}
