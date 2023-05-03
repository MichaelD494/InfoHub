package com.dolores.admin.controller.system.data;

import com.dolores.common.core.controller.BaseController;
import com.dolores.common.core.domain.AjaxResult;
import com.dolores.system.domain.SysUser;
import com.dolores.system.service.ISysUserService;
import com.dolores.utils.MD5Encode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sysUser")
public class SysUserController extends BaseController {
    @Autowired
    private ISysUserService sysUserService;

    @GetMapping("/saveUser")
    public AjaxResult saveUser() {
        SysUser sysUser = new SysUser();
        sysUser.setUserName("admin");
        String salt = MD5Encode.createSaltValue();
        String md5EncodePwd = MD5Encode.md5EncodePwd("123456");
        String finalPwd = MD5Encode.getFinalPwd(salt, md5EncodePwd);
        sysUser.setSalt(salt);
        sysUser.setPassword(finalPwd);
        sysUserService.save(sysUser);
        return success();
    }
}
