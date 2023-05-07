package com.dolores.admin.controller.system.page;

import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.vo.SysMenuVo;
import com.dolores.system.service.ISysMenuService;
import com.dolores.system.service.ISysUserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequiredArgsConstructor
@RequestMapping("/sys")
public class SystemController extends BaseController {
    private final ISysMenuService sysMenuService;
    private final ISysUserService sysUserService;
    private final String prefix = "system/";

    @GetMapping("/login")
    public String loginPage() {
        return prefix + "login";
    }


    @GetMapping("/home")
    public String home(ModelMap modelMap) {
        String userId = getUserId();
        List<SysMenuVo> sysMenuList = sysMenuService.queryMenuList(userId);
        modelMap.put("sysMenuList", sysMenuList);
        return prefix + "home";
    }

    @GetMapping("/account")
    public String account(ModelMap modelMap) {
        List<SysUser> sysUserList = sysUserService.querySysUserList(new SysUser());
        modelMap.put("sysUserList", sysUserList);
        return prefix + "account";
    }
}
