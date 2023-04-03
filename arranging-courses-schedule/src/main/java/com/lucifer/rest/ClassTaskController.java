package com.lucifer.rest;

import com.lucifer.domain.ClassTask;
import com.lucifer.service.ClassTaskService;
import com.lucifer.service.dto.ClassTaskDto;
import com.lucifer.utils.PageUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;

/**
 * @author lucifinil
 */
@RestController
@RequiredArgsConstructor
@Api(tags = "排课：教学任务")
@RequestMapping("/api/classTask")
public class ClassTaskController {

    private final ClassTaskService classTaskService;

    @ApiOperation(value = "查询教学任务")
    @GetMapping
    @PreAuthorize("@el.check('task:list')")
    public ResponseEntity<Object> query(
            @RequestParam(value = "collegeNo", required = false) String collegeNo,
            @RequestParam(value = "semester", required = false) String semester,
            Pageable pageable) {
        List<ClassTaskDto> classTaskList = classTaskService.queryAll(collegeNo, semester, pageable);
        return new ResponseEntity<>(PageUtil.toPage(classTaskList, classTaskService.classTaskCount()), HttpStatus.OK);
    }

    @ApiOperation(value = "新增教学任务")
    @PostMapping
    @PreAuthorize("@el.check('task:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody ClassTask resources) {
        classTaskService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改教学任务")
    @PutMapping
    @PreAuthorize("@el.check('task:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody ClassTask resources) {
        classTaskService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除教学任务")
    @DeleteMapping
    @PreAuthorize("@el.check('task:del')")
    public ResponseEntity<Object> delete(@RequestBody Set<Long> ids) {
        classTaskService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @ApiOperation(value = "排课")
    @PostMapping("/classScheduling")
    @PreAuthorize("@el.check('task:schedule')")
    public ResponseEntity<Object> delete(@RequestBody ClassTask classTask) {
        classTaskService.classScheduling(classTask);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
