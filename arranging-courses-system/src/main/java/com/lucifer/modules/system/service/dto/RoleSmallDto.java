package com.lucifer.modules.system.service.dto;

import lombok.Data;
import java.io.Serializable;

/**
 * @author lucifer
 */
@Data
public class RoleSmallDto implements Serializable {

    private Long id;

    private String name;

    private Integer level;
}
