package com.dolores.admin.controller.system.data;

import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.system.domain.SysUser;
import com.dolores.system.service.ISysUserService;
import com.dolores.utils.DoloresEncrypt;
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
        String salt = DoloresEncrypt.generateSaltValue();
        String encryptPassword = DoloresEncrypt.encryptPassword(salt, "123456");
        System.out.println(salt);
        System.out.println(encryptPassword);
        sysUser.setUserName("admin");
//        sysUserService.save(sysUser);
        AjaxResult ajaxResult = success();
        ajaxResult.put("salt", salt);
        ajaxResult.put("encryptPassword", encryptPassword);
        return ajaxResult;
    }
}
