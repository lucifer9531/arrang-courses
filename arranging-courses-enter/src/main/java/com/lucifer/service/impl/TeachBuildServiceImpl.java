package com.lucifer.service.impl;

import com.lucifer.domain.TeachBuild;
import com.lucifer.repository.TeachBuildRepository;
import com.lucifer.service.TeachBuildService;
import com.lucifer.service.dto.TeachBuildDto;
import com.lucifer.service.dto.TeachBuildQueryCriteria;
import com.lucifer.service.mapstruct.TeachBuildMapper;
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
public class TeachBuildServiceImpl implements TeachBuildService {

    private final TeachBuildRepository teachBuildRepository;
    private final TeachBuildMapper teachBuildMapper;


    @Override
    public Object queryAll(TeachBuildQueryCriteria criteria, Pageable pageable) {
        Page<TeachBuild> page = teachBuildRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(teachBuildMapper::toDto));
    }

    @Override
    public List<TeachBuildDto> queryAll() {
        return teachBuildMapper.toDto(teachBuildRepository.findAll());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(TeachBuild resources) {
        teachBuildRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(TeachBuild resources) {
        TeachBuild teachBuild = teachBuildRepository.findById(resources.getId()).orElseGet(TeachBuild::new);
        ValidationUtil.isNull(teachBuild.getId(), "TeachBuild", "id", resources.getId());
        teachBuild.copy(resources);
        teachBuildRepository.save(teachBuild);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            teachBuildRepository.deleteById(id);
        }
    }
}
