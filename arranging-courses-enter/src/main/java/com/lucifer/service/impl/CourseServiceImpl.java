package com.lucifer.service.impl;

import com.lucifer.domain.Course;
import com.lucifer.repository.CourseRepository;
import com.lucifer.service.CourseService;
import com.lucifer.service.dto.CourseDto;
import com.lucifer.service.dto.CourseQueryCriteria;
import com.lucifer.service.mapstruct.CourseMapper;
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
public class CourseServiceImpl implements CourseService {

    private final CourseRepository courseRepository;
    private final CourseMapper courseMapper;


    @Override
    public Object queryAll(CourseQueryCriteria criteria, Pageable pageable) {
        Page<Course> page = courseRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder), pageable);
        return PageUtil.toPage(page.map(courseMapper::toDto));
    }

    @Override
    public List<CourseDto> queryAll() {
        return courseMapper.toDto(courseRepository.findAll());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(Course resources) {
        courseRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(Course resources) {
        Course course = courseRepository.findById(resources.getId()).orElseGet(Course::new);
        ValidationUtil.isNull(course.getId(), "Course", "id", resources.getId());
        course.copy(resources);
        courseRepository.save(course);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            courseRepository.deleteById(id);
        }
    }
}
