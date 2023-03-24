package com.lucifer.service.impl;

import com.lucifer.domain.Classroom;
import com.lucifer.repository.ClassRoomRepository;
import com.lucifer.service.ClassroomService;
import com.lucifer.service.dto.ClassroomQueryCriteria;
import com.lucifer.service.mapstruct.ClassroomMapper;
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
public class ClassroomServiceImpl implements ClassroomService {

    private final ClassRoomRepository classroomRepository;
    private final ClassroomMapper classroomMapper;


    @Override
    public Object queryAll(ClassroomQueryCriteria criteria, Pageable pageable) {
        Page<Classroom> page = classroomRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(classroomMapper::toDto));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(Classroom resources) {
        classroomRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(Classroom resources) {
        Classroom classroom = classroomRepository.findById(resources.getId()).orElseGet(Classroom::new);
        ValidationUtil.isNull(classroom.getId(), "Classroom", "id", resources.getId());
        classroom.copy(resources);
        classroomRepository.save(classroom);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            classroomRepository.deleteById(id);
        }
    }
}
