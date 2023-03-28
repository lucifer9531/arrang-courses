package com.lucifer.repository;

import com.lucifer.domain.College;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author lucifer
 */
public interface CollegeRepository extends JpaRepository<College, Long>, JpaSpecificationExecutor<College> {
}
