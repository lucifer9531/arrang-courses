package com.lucifer.repository;

import com.lucifer.domain.TeachBuild;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author lucifer
 */
public interface TeachBuildRepository extends JpaRepository<TeachBuild, Long>, JpaSpecificationExecutor<TeachBuild> {
}
