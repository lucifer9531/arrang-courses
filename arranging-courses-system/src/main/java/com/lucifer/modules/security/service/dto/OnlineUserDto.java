package com.lucifer.modules.security.service.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * 在线用户
 * @author lucifer
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OnlineUserDto implements Serializable {

    /**
     * 用户名
     */
    private String userName;

    /**
     * token
     */
    private String key;

    /**
     * 登录时间
     */
    private Date loginTime;


}
