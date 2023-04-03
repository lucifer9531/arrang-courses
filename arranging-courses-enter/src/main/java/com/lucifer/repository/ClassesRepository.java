package com.lucifer.repository;

import com.lucifer.domain.Classes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import javax.validation.constraints.NotBlank;

/**
 * @author lucifer
 */
public interface ClassesRepository extends JpaRepository<Classes, Long>, JpaSpecificationExecutor<Classes> {
    /**
     * 根据code查询
     * @param classNo
     * @return
     */
    Classes findByClassNo(@NotBlank String classNo);
}
