package com.lucifer.repository;

import com.lucifer.domain.ClassroomOccupancy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import javax.validation.constraints.NotBlank;
import java.util.List;

/**
 * @author lucifer
 */
public interface ClassRoomOccupancyRepository extends JpaRepository<ClassroomOccupancy, Long>, JpaSpecificationExecutor<ClassroomOccupancy> {

}
