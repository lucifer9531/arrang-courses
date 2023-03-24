package com.lucifer.rest;

import com.lucifer.domain.Course;
import com.lucifer.service.CourseService;
import com.lucifer.service.dto.CourseQueryCriteria;
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
@Api(tags = "录入：课程管理")
@RequestMapping("/api/course")
public class CourseController {

    private final CourseService courseService;

    @ApiOperation(value = "查询课程")
    @GetMapping
    @PreAuthorize("@el.check('course:list')")
    public ResponseEntity<Object> queryApp(CourseQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(courseService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation(value = "新增课程")
    @PostMapping
    @PreAuthorize("@el.check('course:add')")
    public ResponseEntity<Object> createApp(@Validated @RequestBody Course resources) {
        courseService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改课程")
    @PutMapping
    @PreAuthorize("@el.check('course:edit')")
    public ResponseEntity<Object> updateApp(@Validated @RequestBody Course resources) {
        courseService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除课程")
    @DeleteMapping
    @PreAuthorize("@el.check('course:del')")
    public ResponseEntity<Object> deleteApp(@RequestBody Set<Long> ids) {
        courseService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
