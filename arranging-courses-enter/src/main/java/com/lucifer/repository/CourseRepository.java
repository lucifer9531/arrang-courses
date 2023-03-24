package com.lucifer.repository;

import com.lucifer.domain.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author lucifer
 */
public interface CourseRepository extends JpaRepository<Course, Long>, JpaSpecificationExecutor<Course> {
}
