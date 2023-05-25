package com.dolores.controller.system.data;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.system.domain.SysRole;
import com.dolores.system.service.ISysRoleService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sysRole")
@RequiredArgsConstructor
public class SysRoleController extends BaseController {
    private final ISysRoleService sysRoleService;

    @GetMapping("/queryList")
    public AjaxResult queryList() {
        LambdaQueryWrapper<SysRole> query = Wrappers.lambdaQuery(SysRole.class);
        query.select(SysRole::getRoleId, SysRole::getRoleName);
        return success(sysRoleService.list(query));
    }
}
