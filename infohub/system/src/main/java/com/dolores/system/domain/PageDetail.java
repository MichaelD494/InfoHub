package com.dolores.system.domain;

import lombok.Data;

import java.io.Serializable;

/**
 * @author dolores
 * @date 2021/11/29 19:43
 */
@Data
public class PageDetail implements Serializable {
    private Integer pageNum = 1;
    private Integer pageSize = 5;
}
