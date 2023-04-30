package com.dolores.system.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.system.domain.LoginUser;
import com.dolores.system.domain.SysUser;
import com.dolores.system.mapper.SysUserMapper;
import com.dolores.system.service.ISysUserService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 系统用户表 服务实现类
 * </p>
 *
 * @author dolores
 * @since 2021-09-09
 */
@Service
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements ISysUserService {

    @Override
    public LoginUser queryUserByName(String name) {
        return baseMapper.queryUserByName(name);
    }

    @Override
    public List<SysUser> querySysUserList(SysUser sysUser) {
        return baseMapper.querySysUserList(sysUser);
    }
}
