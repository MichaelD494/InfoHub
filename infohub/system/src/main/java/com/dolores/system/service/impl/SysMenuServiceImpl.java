package com.dolores.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.system.domain.SysMenu;
import com.dolores.system.mapper.SysMenuMapper;
import com.dolores.system.service.ISysMenuService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author dolores
 * @date 2021/9/10 9:38
 */
@Service
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenu> implements ISysMenuService {

    @Override
    public List<SysMenu> queryMenuList() {
        return baseMapper.queryMenuList();
    }

    @Override
    public List<SysMenu> queryMenuListByIds(List<Long> menuIds) {
        return baseMapper.queryMenuListByIds(menuIds);
    }

    @Override
    public List<SysMenu> querySubListByIds(List<Long> menuIds) {
        return baseMapper.querySubListByIds(menuIds);
    }

    @Override
    public List<SysMenu> queryMenuListByDetail(String title) {
        return baseMapper.queryMenuListByDetail(title);
    }
}
