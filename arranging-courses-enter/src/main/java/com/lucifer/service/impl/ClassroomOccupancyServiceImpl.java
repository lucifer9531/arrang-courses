package com.lucifer.service.impl;

import com.lucifer.domain.ClassroomOccupancy;
import com.lucifer.repository.ClassRoomOccupancyRepository;
import com.lucifer.service.ClassroomOccupancyService;
import com.lucifer.service.dto.ClassesDto;
import com.lucifer.service.dto.ClassroomOccupancyDto;
import com.lucifer.service.dto.ClassroomOccupancyQueryCriteria;
import com.lucifer.service.mapstruct.ClassroomOccupancyMapper;
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
public class ClassroomOccupancyServiceImpl implements ClassroomOccupancyService {

    private final ClassRoomOccupancyRepository classRoomOccupancyRepository;
    private final ClassroomOccupancyMapper classroomOccupancyMapper;


    @Override
    public Object queryAll(ClassroomOccupancyQueryCriteria criteria, Pageable pageable) {
        Page<ClassroomOccupancy> page = classRoomOccupancyRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(classroomOccupancyMapper::toDto));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(ClassroomOccupancy resources) {
        classRoomOccupancyRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(ClassroomOccupancy resources) {
        ClassroomOccupancy classroomOccupancy = classRoomOccupancyRepository.findById(resources.getId()).orElseGet(ClassroomOccupancy::new);
        ValidationUtil.isNull(classroomOccupancy.getId(), "ClassroomOccupancy", "id", resources.getId());
        classroomOccupancy.copy(resources);
        classRoomOccupancyRepository.save(classroomOccupancy);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            classRoomOccupancyRepository.deleteById(id);
        }
    }
}
