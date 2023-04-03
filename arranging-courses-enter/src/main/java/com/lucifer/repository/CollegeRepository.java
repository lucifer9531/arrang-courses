package com.lucifer.repository;

import com.lucifer.domain.College;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import javax.validation.constraints.NotBlank;

/**
 * @author lucifer
 */
public interface CollegeRepository extends JpaRepository<College, Long>, JpaSpecificationExecutor<College> {

    /**
     * 根据collegeNo查询
     * @param collegeNo
     * @return
     */
    College findCollegeByCollegeNo(@NotBlank String collegeNo);
}
