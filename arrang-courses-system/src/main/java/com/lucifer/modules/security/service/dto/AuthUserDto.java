package com.lucifer.modules.security.service.dto;

import lombok.Getter;
import lombok.Setter;
import javax.validation.constraints.NotBlank;

/**
 * @author lucifer
 */
@Getter
@Setter
public class AuthUserDto {

    @NotBlank
    private String username;

    @NotBlank
    private String password;

    private String code;

    private String uuid = "";
}
