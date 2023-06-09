package com.dolores.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.LoginUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

/**
 * <p>
 * 系统用户表 Mapper 接口
 * </p>
 *
 * @author dolores
 * @since 2021-09-09
 */
@Repository
public interface SysUserMapper extends BaseMapper<SysUser> {
    LoginUser queryUserByName(String name);

    List<SysUser> querySysUserList(@Param("sysUser") SysUser sysUser);
}
