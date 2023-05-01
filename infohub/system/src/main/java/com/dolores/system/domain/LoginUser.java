package com.dolores.system.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

@Data
public class LoginUser implements Serializable {
    private SysUser sysUser;
    private List<SysUserPerms> roles;

    private String token;
}
