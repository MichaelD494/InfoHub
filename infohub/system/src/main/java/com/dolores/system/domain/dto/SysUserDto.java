package com.dolores.system.domain.dto;

import com.dolores.system.domain.SysUser;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class SysUserDto implements Serializable {
    private SysUser sysUser;
    private String roleId;
}
