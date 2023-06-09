package com.dolores.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dolores.system.domain.SysMenu;
import com.dolores.system.domain.vo.SysMenuVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SysMenuMapper extends BaseMapper<SysMenu> {
    List<SysMenuVo> queryMenuList(String userId);

    List<SysMenu> queryMenuListByIds(@Param("menuIds") List<Long> menuIds);

    List<SysMenu> querySubListByIds(@Param("menuIds") List<Long> menuIds);

    List<SysMenu> queryMenuListByDetail(String title);
}
