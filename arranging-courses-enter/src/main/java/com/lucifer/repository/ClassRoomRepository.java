package com.lucifer.repository;

import com.lucifer.domain.Classroom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @author lucifer
 */
public interface ClassRoomRepository extends JpaRepository<Classroom, Long>, JpaSpecificationExecutor<Classroom> {
}
