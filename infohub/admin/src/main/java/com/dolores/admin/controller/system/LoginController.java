package com.dolores.admin.controller.system;

import com.dolores.common.core.controller.BaseController;
import com.dolores.framework.config.UserInfo;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.dto.LoginDto;
import com.dolores.system.service.ISysLoginRecordService;
import com.dolores.system.service.ISysUserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class LoginController extends BaseController {

    @Autowired
    private AuthenticationProvider authenticationProvider;

    @Autowired
    private ISysLoginRecordService sysLoginRecordService;

    @GetMapping("/loginPage")
    public String loginPage() {
        return "/system/login/login";
    }

    @PostMapping("/login")
    public String login(@RequestBody LoginDto dto, HttpServletRequest request) {
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(dto.getUsername(), dto.getPassword());
        Authentication auth = authenticationProvider.authenticate(token);
        if (auth == null) {
            throw new RuntimeException("用户名或密码错误");
        }
        //获取用户信息
        UserInfo userInfo = (UserInfo) auth.getPrincipal();
        SysUser sysUser = userInfo.getSysUser();
        String sysUserId = sysUser.getSysUserId();
        String username = sysUser.getUsername();
        //记录用户登录信息
        sysLoginRecordService.loginRecord(sysUserId, username, request);
        return "redirect:./homePage";
    }
}
