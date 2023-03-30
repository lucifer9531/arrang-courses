package com.lucifer.rest;

import com.lucifer.domain.Semester;
import com.lucifer.service.SemesterService;
import com.lucifer.service.dto.SemesterQueryCriteria;
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
@Api(tags = "录入：学期管理")
@RequestMapping("/api/semester")
public class SemesterController {

    private final SemesterService semesterService;

    @ApiOperation(value = "查询学期")
    @GetMapping
    @PreAuthorize("@el.check('semester:list')")
    public ResponseEntity<Object> query(SemesterQueryCriteria criteria, Pageable pageable) {
        return new ResponseEntity<>(semesterService.queryAll(criteria, pageable), HttpStatus.OK);
    }

    @ApiOperation("返回全部学期")
    @GetMapping(value = "/all")
    @PreAuthorize("@el.check('semester:list','task:add','task:edit')")
    public ResponseEntity<Object> queryAll(){
        return new ResponseEntity<>(semesterService.queryAll(),HttpStatus.OK);
    }

    @ApiOperation(value = "新增学期")
    @PostMapping
    @PreAuthorize("@el.check('semester:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody Semester resources) {
        semesterService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation(value = "修改学期")
    @PutMapping
    @PreAuthorize("@el.check('semester:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody Semester resources) {
        semesterService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "删除学期")
    @DeleteMapping
    @PreAuthorize("@el.check('semester:del')")
    public ResponseEntity<Object> delete(@RequestBody Set<Long> ids) {
        semesterService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
