package com.dolores.system.domain;

import lombok.Data;

import java.io.Serializable;

/**
 * 系统用户权限
 * @author dolores
 * @date 2021/12/13 22:05
 */
@Data
public class SysUserPerms implements Serializable {
    private Long menuId;
    private String perms;
}