package com.lucifer.rest;

import com.lucifer.domain.Classes;
import com.lucifer.service.ClassesService;
import com.lucifer.service.dto.ClassesQueryCriteria;
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
@Api(tags = "录入：班级管理")
@RequestMapping("/api/classes")
public class ClassesController {

    private final ClassesService classesService;

    @ApiOperation(value = "查询班级")
    @GetMapping
    @PreAuthorize("@el.check('class:list')")
    public ResponseEntity<Object> query(ClassesQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(classesService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation("返回全部班级")
    @GetMapping(value = "/all")
    @PreAuthorize("@el.check('class:list','task:add','task:edit')")
    public ResponseEntity<Object> queryAll(){
        return new ResponseEntity<>(classesService.queryAll(),HttpStatus.OK);
    }

    @ApiOperation(value = "新增班级")
    @PostMapping
    @PreAuthorize("@el.check('class:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody Classes resources) {
        classesService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改班级")
    @PutMapping
    @PreAuthorize("@el.check('class:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody Classes resources) {
        classesService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除班级")
    @DeleteMapping
    @PreAuthorize("@el.check('class:del')")
    public ResponseEntity<Object> delete(@RequestBody Set<Long> ids) {
        classesService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
