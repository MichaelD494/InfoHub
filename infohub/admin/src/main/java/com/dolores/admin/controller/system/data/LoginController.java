package com.dolores.admin.controller.system.data;

import com.dolores.common.constants.Constants;
import com.dolores.common.constants.RedisConstant;
import com.dolores.common.core.controller.BaseController;
import com.dolores.common.core.domain.AjaxResult;
import com.dolores.framework.config.UserInfo;
import com.dolores.framework.utils.JwtUtils;
import com.dolores.system.domain.LoginUser;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.dto.LoginDto;
import com.dolores.system.service.ISysLoginRecordService;
import com.dolores.system.service.ISysUserService;
import com.dolores.utils.DoloresRedis;
import com.dolores.utils.RedisUtil;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RestController
public class LoginController extends BaseController {

    @Autowired
    private AuthenticationProvider authenticationProvider;

    @Autowired
    private ISysLoginRecordService sysLoginRecordService;

    @PostMapping("/login")
    public AjaxResult login(@RequestBody LoginDto dto, HttpServletRequest request) {
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(dto.getUsername(), dto.getPassword());
        Authentication auth = authenticationProvider.authenticate(authenticationToken);
        if (!auth.isAuthenticated()) {
            return error("账户名或密码错误");
        }
        //获取用户信息
        UserInfo userInfo = (UserInfo) auth.getPrincipal();
        SysUser sysUser = userInfo.getSysUser();
        String sysUserId = sysUser.getSysUserId();
        String username = sysUser.getUsername();
        String token = JwtUtils.generateToken(sysUserId, dto.getPassword());
        LoginUser loginUser = new LoginUser();
        loginUser.setSysUser(sysUser);
        loginUser.setRoles(userInfo.getRoles());
        DoloresRedis.hSetUserCache(token, loginUser);
        //记录用户登录信息
        sysLoginRecordService.loginRecord(sysUserId, username, request);
        AjaxResult ajaxResult = success();
        ajaxResult.put("sysUserId", sysUserId);
        ajaxResult.put("token", token);
        return ajaxResult;
    }
}
