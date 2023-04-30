package com.dolores.admin.controller;

import com.dolores.common.core.controller.BaseController;
import com.dolores.common.core.domain.AjaxResult;
import com.dolores.system.domain.SysUser;
import com.dolores.system.service.ISysUserService;
import com.dolores.utils.MD5Encode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class IndexController extends BaseController {
    @Autowired
    private ISysUserService sysUserService;

    @GetMapping( "/login")
    public String login() {
        return "login";
    }

    @GetMapping("/test")
    public AjaxResult test() {
        String salt = MD5Encode.createSaltValue();
        String md5EncodePwd = MD5Encode.md5EncodePwd("123456");
        String finalPwd = MD5Encode.getFinalPwd(salt, md5EncodePwd);
        SysUser sysUser = new SysUser();
        sysUser.setUsername("admin");
        sysUser.setPassword(finalPwd);
        sysUser.setSalt(salt);
        sysUserService.save(sysUser);
        return success();
    }

    @PreAuthorize("hasAuthority('ROLE_USER')")
    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }
}
