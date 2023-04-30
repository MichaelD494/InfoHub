package com.dolores.system.service.impl;

import com.dolores.system.domain.SysUser;
import com.dolores.system.mapper.LoginMapper;
import com.dolores.system.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author dolores
 * @date 2021/9/9 14:39
 */
@Service
public class LoginServiceImpl implements ILoginService {
    @Autowired
    private LoginMapper loginMapper;

    @Override
    public SysUser getUserByName(String getMapByName) {
        return loginMapper.getUserByName(getMapByName);
    }
}
