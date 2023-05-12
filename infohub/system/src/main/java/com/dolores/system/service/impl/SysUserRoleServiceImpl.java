package com.dolores.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.system.domain.SysUserRole;
import com.dolores.system.mapper.SysUserRoleMapper;
import com.dolores.system.service.ISysUserRoleService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Michael
 * @since 2022-02-18
 */
@Service
public class SysUserRoleServiceImpl extends ServiceImpl<SysUserRoleMapper, SysUserRole> implements ISysUserRoleService {

    @Override
    public void saveSysUserRole(String userId, List<String> roleIdList) {
        List<SysUserRole> sysUserRoleList = new ArrayList<>();
        roleIdList.forEach(roleId -> {
            SysUserRole sysUserRole =
                    new SysUserRole()
                            .setRoleId(Long.valueOf(roleId))
                            .setUserId(userId);
            sysUserRoleList.add(sysUserRole);
        });
        this.saveBatch(sysUserRoleList);
    }
}
