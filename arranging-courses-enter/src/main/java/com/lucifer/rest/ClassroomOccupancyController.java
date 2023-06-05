package com.lucifer.rest;

import com.lucifer.domain.ClassroomOccupancy;
import com.lucifer.service.ClassroomOccupancyService;
import com.lucifer.service.dto.ClassroomOccupancyQueryCriteria;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Set;

/**
 * @author lucifer
 */
@RestController
@RequiredArgsConstructor
@Api(tags = "录入：教室占用管理")
@RequestMapping("/api/classroomOccupancy")
public class ClassroomOccupancyController {

    private final ClassroomOccupancyService classroomOccupancyService;

    @ApiOperation(value = "查询教室占用")
    @GetMapping
    @PreAuthorize("@el.check('classroomOccupancy:list')")
    public ResponseEntity<Object> query(ClassroomOccupancyQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(classroomOccupancyService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation(value = "新增教室占用")
    @PostMapping
    @PreAuthorize("@el.check('classroomOccupancy:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody ClassroomOccupancy resources) {
        classroomOccupancyService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改教室占用")
    @PutMapping
    @PreAuthorize("@el.check('classroomOccupancy:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody ClassroomOccupancy resources) {
        classroomOccupancyService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除教室占用")
    @DeleteMapping
    @PreAuthorize("@el.check('classroomOccupancy:del')")
    public ResponseEntity<Object> delete(@RequestBody Set<Long> ids) {
        classroomOccupancyService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
