package com.dolores.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dolores.system.domain.SysMenu;
import com.dolores.system.domain.vo.SysMenuVo;

import java.util.List;

/**
 * @author dolores
 * @date 2021/9/10 9:38
 */

public interface ISysMenuService extends IService<SysMenu> {
    List<SysMenuVo> queryMenuList(String userId);

    List<SysMenu> queryMenuListByIds(List<Long> menuIds);

    List<SysMenu> querySubListByIds(List<Long> menuIds);

    List<SysMenu> queryMenuListByDetail(String title);
}
