package com.dolores.controller.system.page;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.SysUserRole;
import com.dolores.system.domain.dto.SysUserDto;
import com.dolores.system.service.ISysUserRoleService;
import com.dolores.system.service.ISysUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
@RequestMapping("/sysUserPage")
public class SysUserPageController extends BaseController {
    private final String prefix = "system/user/";
    private final ISysUserService sysUserService;
    private final ISysUserRoleService sysUserRoleService;

    @GetMapping("/index")
    public String index() {
        return prefix + "account";
    }

    @GetMapping("/add")
    public String add() {
        return prefix + "add";
    }

    @GetMapping("/edit/{userId}")
    public String edit(@PathVariable("userId") String userId, ModelMap modelMap) {
        LambdaQueryWrapper<SysUser> userQuery = Wrappers.lambdaQuery(SysUser.class);
        userQuery.eq(SysUser::getUserId, userId).last("limit 1");
        SysUser sysUser = sysUserService.getOne(userQuery);
        sysUser.setPassword(null);
        LambdaQueryWrapper<SysUserRole> userRoleQuery = Wrappers.lambdaQuery(SysUserRole.class);
        userRoleQuery.select(SysUserRole::getRoleId).eq(SysUserRole::getUserId, userId);
        List<SysUserRole> sysUserRoleList = sysUserRoleService.list(userRoleQuery);
        List<String> roleIdList = sysUserRoleList
                .stream()
                .map(SysUserRole::getRoleId)
                .map(String::valueOf)
                .toList();
        String s = roleIdList.toString();
        SysUserDto dto = new SysUserDto(sysUser, s);
        modelMap.put("dto", dto);
        return prefix + "edit";
    }

}
