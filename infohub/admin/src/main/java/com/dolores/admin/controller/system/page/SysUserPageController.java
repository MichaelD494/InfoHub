package com.dolores.admin.controller.system.page;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.system.domain.SysUser;
import com.dolores.system.service.ISysUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/sysUserPage")
public class SysUserPageController extends BaseController {
    private final String prefix = "system/user/";
    private final ISysUserService sysUserService;

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
        LambdaQueryWrapper<SysUser> query = Wrappers.lambdaQuery(SysUser.class);
        query.eq(SysUser::getUserId, userId).last("limit 1");
        SysUser sysUser = sysUserService.getOne(query);
        modelMap.put("user", sysUser);
        return prefix + "edit";
    }

}
