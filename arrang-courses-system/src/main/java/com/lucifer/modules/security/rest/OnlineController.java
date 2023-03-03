package com.lucifer.modules.security.rest;

import com.lucifer.modules.security.service.OnlineUserService;
import com.lucifer.utils.EncryptUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Set;

/**
 * @author lucifer
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/auth/online")
@Api(tags = "系统：在线用户管理", hidden = true)
public class OnlineController {

    private final OnlineUserService onlineUserService;

    @ApiOperation("查询在线用户")
    @GetMapping
    @PreAuthorize("@el.check()")
    public ResponseEntity<Object> queryOnlineUser(String filter, Pageable pageable) {
        return new ResponseEntity<>(onlineUserService.getAll(filter, pageable),HttpStatus.OK);
    }

    @ApiOperation("踢出用户")
    @DeleteMapping
    @PreAuthorize("@el.check()")
    public ResponseEntity<Object> deleteOnlineUser(@RequestBody Set<String> keys) throws Exception {
        for (String key : keys) {
            // 解密Key
            key = EncryptUtils.desDecrypt(key);
            onlineUserService.kickOut(key);
        }
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
