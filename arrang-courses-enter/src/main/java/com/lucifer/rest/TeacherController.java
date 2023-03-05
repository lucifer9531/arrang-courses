package com.lucifer.rest;

import com.lucifer.domain.Teacher;
import com.lucifer.service.TeacherService;
import com.lucifer.service.dto.TeacherDto;
import com.lucifer.service.dto.TeacherQueryCriteria;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.java.Log;
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
@Api(tags = "录入：教师管理")
@RequestMapping("/api/teacher")
public class TeacherController {

    private final TeacherService teacherService;

    @ApiOperation(value = "查询教师")
    @GetMapping
    @PreAuthorize("@el.check('teacher:list')")
    public ResponseEntity<Object> queryApp(TeacherQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(teacherService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation(value = "新增教师")
    @PostMapping
    @PreAuthorize("@el.check('teacher:add')")
    public ResponseEntity<Object> createApp(@Validated @RequestBody Teacher resources) {
        teacherService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改教师")
    @PutMapping
    @PreAuthorize("@el.check('teacher:edit')")
    public ResponseEntity<Object> updateApp(@Validated @RequestBody Teacher resources) {
        teacherService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除教师")
    @DeleteMapping
    @PreAuthorize("@el.check('teacher:del')")
    public ResponseEntity<Object> deleteApp(@RequestBody Set<Long> ids) {
        teacherService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
