package com.lucifer.rest;

import com.lucifer.service.CoursePlanService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author lucifinil
 */
@RestController
@RequiredArgsConstructor
@Api(tags = "查询：课表查询")
@RequestMapping("/api/coursePlan")
public class CoursePlanController {

    private final CoursePlanService coursePlanService;

    @ApiOperation(value = "查询课表")
    @GetMapping
    @PreAuthorize("@el.check('coursePlan:list')")
    public ResponseEntity<Object> query(@RequestParam(value = "semester", required = false) String semester, @RequestParam(value = "collegeNo", required = false) String collegeNo) {
        return new ResponseEntity<>(coursePlanService.queryAll(semester, collegeNo), HttpStatus.OK);
    }
}
