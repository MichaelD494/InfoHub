package com.dolores.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dolores.system.domain.SysUserRole;

import java.util.List;

/**
 * <p>
 * 系统用户角色表 服务类
 * </p>
 *
 * @author dolores
 * @since 2021-09-09
 */
public interface ISysUserRoleService extends IService<SysUserRole> {
    /**
     * 添加用户角色公用代码
     */
    void saveSysUserRole(String userId, List<String> roleIdList);
}
