package com.lucifer.rest;

import com.lucifer.domain.Classes;
import com.lucifer.domain.Grade;
import com.lucifer.service.ClassesService;
import com.lucifer.service.GradeService;
import com.lucifer.service.dto.ClassesQueryCriteria;
import com.lucifer.service.dto.GradeQueryCriteria;
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
@Api(tags = "录入：年级管理")
@RequestMapping("/api/grade")
public class GradeController {

    private final GradeService gradeService;

    @ApiOperation(value = "查询年级")
    @GetMapping
    @PreAuthorize("@el.check('grade:list')")
    public ResponseEntity<Object> query(GradeQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(gradeService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation(value = "新增年级")
    @PostMapping
    @PreAuthorize("@el.check('grade:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody Grade resources) {
        gradeService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改年级")
    @PutMapping
    @PreAuthorize("@el.check('grade:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody Grade resources) {
        gradeService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除年级")
    @DeleteMapping
    @PreAuthorize("@el.check('grade:del')")
    public ResponseEntity<Object> delete(@RequestBody Set<Long> ids) {
        gradeService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
