package com.lucifer.repository;

import com.lucifer.domain.Classroom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import javax.validation.constraints.NotBlank;
import java.util.List;

/**
 * @author lucifer
 */
public interface ClassRoomRepository extends JpaRepository<Classroom, Long>, JpaSpecificationExecutor<Classroom> {

    /**
     * 根据教学楼Id查询教室
     * @param teachBuildId
     * @return
     */
    List<Classroom> queryAllByTeachBuildId(Long teachBuildId);

    /**
     * 根据教学楼编号查询教室
     * @param teachBuildNo
     * @return
     */
    List<Classroom> queryAllByTeachBuildNo(@NotBlank String teachBuildNo);
}
