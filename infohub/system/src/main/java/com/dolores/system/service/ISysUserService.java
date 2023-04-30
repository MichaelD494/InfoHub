package com.dolores.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dolores.system.domain.LoginUser;
import com.dolores.system.domain.SysUser;

import java.util.List;

/**
 * <p>
 * 系统用户表 服务类
 * </p>
 *
 * @author dolores
 * @since 2021-09-09
 */
public interface ISysUserService extends IService<SysUser> {

    LoginUser queryUserByName(String name);

    List<SysUser> querySysUserList(SysUser sysUser);
}
