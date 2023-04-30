package com.dolores.system.mapper;

import com.dolores.system.domain.SysUser;
import org.springframework.stereotype.Repository;
@Repository
public interface LoginMapper {
    SysUser getUserByName(String getMapByName);
}
