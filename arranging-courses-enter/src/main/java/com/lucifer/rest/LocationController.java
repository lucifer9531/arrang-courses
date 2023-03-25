package com.lucifer.rest;

import com.lucifer.domain.Location;
import com.lucifer.service.LocationService;
import com.lucifer.service.dto.LocationQueryCriteria;
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
@Api(tags = "录入：位置管理")
@RequestMapping("/api/location")
public class LocationController {

    private final LocationService locationService;

    @ApiOperation(value = "查询位置")
    @GetMapping
    @PreAuthorize("@el.check('location:list')")
    public ResponseEntity<Object> query(LocationQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(locationService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation("返回全部位置")
    @GetMapping(value = "/all")
    @PreAuthorize("@el.check('location:list','teachBuild:add','teachBuild:edit')")
    public ResponseEntity<Object> queryAllRole(){
        return new ResponseEntity<>(locationService.queryAll(),HttpStatus.OK);
    }

    @ApiOperation(value = "新增位置")
    @PostMapping
    @PreAuthorize("@el.check('location:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody Location resources) {
        locationService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改位置")
    @PutMapping
    @PreAuthorize("@el.check('location:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody Location resources) {
        locationService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除位置")
    @DeleteMapping
    @PreAuthorize("@el.check('location:del')")
    public ResponseEntity<Object> delete(@RequestBody Set<Long> ids) {
        locationService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
