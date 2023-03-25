package com.lucifer.rest;

import com.lucifer.domain.TeachBuild;
import com.lucifer.service.TeachBuildService;
import com.lucifer.service.dto.TeachBuildQueryCriteria;
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
@Api(tags = "录入：教学区管理")
@RequestMapping("/api/teachBuild")
public class TeachBuildController {

    private final TeachBuildService teachBuildService;

    @ApiOperation(value = "查询教学区")
    @GetMapping
    @PreAuthorize("@el.check('teachBuild:list')")
    public ResponseEntity<Object> query(TeachBuildQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(teachBuildService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation("返回全部教学区")
    @GetMapping(value = "/all")
    @PreAuthorize("@el.check('teachBuild:list','classroom:add','classroom:edit')")
    public ResponseEntity<Object> queryAll(){
        return new ResponseEntity<>(teachBuildService.queryAll(),HttpStatus.OK);
    }

    @ApiOperation(value = "新增教学区")
    @PostMapping
    @PreAuthorize("@el.check('teachBuild:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody TeachBuild resources) {
        teachBuildService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改教学区")
    @PutMapping
    @PreAuthorize("@el.check('teachBuild:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody TeachBuild resources) {
        teachBuildService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除教学区")
    @DeleteMapping
    @PreAuthorize("@el.check('teachBuild:del')")
    public ResponseEntity<Object> delete(@RequestBody Set<Long> ids) {
        teachBuildService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
