package com.lucifer.rest;

import com.lucifer.domain.Classroom;
import com.lucifer.service.ClassroomService;
import com.lucifer.service.dto.ClassroomQueryCriteria;
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
@Api(tags = "录入：教室管理")
@RequestMapping("/api/classroom")
public class ClassroomController {

    private final ClassroomService classroomService;

    @ApiOperation(value = "查询教室")
    @GetMapping
    @PreAuthorize("@el.check('classroom:list')")
    public ResponseEntity<Object> query(ClassroomQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(classroomService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation("返回全部教室")
    @GetMapping(value = "/all")
    @PreAuthorize("@el.check('classroomOccupancy:list','classroomOccupancy:add','classroomOccupancy:edit')")
    public ResponseEntity<Object> queryAll(){
        return new ResponseEntity<>(classroomService.queryAll(), HttpStatus.OK);
    }

    @ApiOperation(value = "新增教室")
    @PostMapping
    @PreAuthorize("@el.check('classroom:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody Classroom resources) {
        classroomService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改教室")
    @PutMapping
    @PreAuthorize("@el.check('classroom:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody Classroom resources) {
        classroomService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除教室")
    @DeleteMapping
    @PreAuthorize("@el.check('classroom:del')")
    public ResponseEntity<Object> delete(@RequestBody Set<Long> ids) {
        classroomService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
