package com.lucifer.rest;

import com.lucifer.domain.College;
import com.lucifer.service.CollegeService;
import com.lucifer.service.dto.CollegeQueryCriteria;
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
@Api(tags = "录入：学院管理")
@RequestMapping("/api/college")
public class CollegeController {

    private final CollegeService collegeService;

    @ApiOperation(value = "查询教学区")
    @GetMapping
    @PreAuthorize("@el.check('college:list')")
    public ResponseEntity<Object> query(CollegeQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(collegeService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation("获取单个college")
    @GetMapping(value = "/{id}")
    @PreAuthorize("@el.check('college:list')")
    public ResponseEntity<Object> findRoleById(@PathVariable Long id) {
        return new ResponseEntity<>(collegeService.findById(id), HttpStatus.OK);
    }

    @ApiOperation("返回全部学院")
    @GetMapping(value = "/all")
    @PreAuthorize("@el.check('college:list','teacher:add','teacher:edit')")
    public ResponseEntity<Object> queryAll(){
        return new ResponseEntity<>(collegeService.queryAll(),HttpStatus.OK);
    }


    @ApiOperation(value = "新增教学区")
    @PostMapping
    @PreAuthorize("@el.check('college:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody College resources) {
        collegeService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改教学区")
    @PutMapping
    @PreAuthorize("@el.check('college:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody College resources) {
        collegeService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除教学区")
    @DeleteMapping
    @PreAuthorize("@el.check('college:del')")
    public ResponseEntity<Object> delete(@RequestBody Set<Long> ids) {
        collegeService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
