package com.dolores.admin.controller.system.data;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.ShearCaptcha;
import cn.hutool.captcha.generator.MathGenerator;
import cn.hutool.core.util.IdUtil;
import com.dolores.common.constants.RedisConstant;
import com.dolores.framework.config.UserInfo;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.framework.service.CaptchaService;
import com.dolores.framework.service.CookieService;
import com.dolores.framework.service.JwtService;
import com.dolores.system.domain.LoginUser;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.dto.LoginDto;
import com.dolores.system.service.ISysLoginRecordService;
import com.dolores.system.service.ISysUserService;
import com.dolores.utils.DoloresRedis;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import static com.dolores.common.constants.RedisConstant.*;

@RestController
@RequiredArgsConstructor
public class LoginController extends BaseController {

    private final AuthenticationProvider authenticationProvider;

    private final ISysLoginRecordService sysLoginRecordService;

    private final CaptchaService captchaService;

    private final JwtService jwtService;

    private final ISysUserService sysUserService;

    private final CookieService cookieService;

    @PostMapping("/login")
    public AjaxResult login(@RequestBody LoginDto dto,
                            HttpServletRequest request,
                            HttpServletResponse response) {
        if (StringUtils.isBlank(dto.getCode())) {
            return error("请输入验证码");
        }
        //从缓存中获取验证码
        String securityCode = DoloresRedis.getSecurityCode(dto.getUuid());
        if (StringUtils.isBlank(securityCode)) {
            return error("验证码已超时，请重新刷新验证码");
        }
        //判断验证码是否一致
        if (!dto.getCode().equals(securityCode)) {
            return error("验证码错误");
        }
        //从缓存中删除已匹配过的验证码
        DoloresRedis.deleteSecurityCode(dto.getUuid());
        Authentication auth = authenticationProvider.authenticate(
                new UsernamePasswordAuthenticationToken(dto.getUsername(), dto.getPassword()));
        if (!auth.isAuthenticated()) {
            return error("账户名或密码错误");
        }
        SecurityContextHolder.getContext().setAuthentication(auth);
        //获取用户信息
        UserInfo userInfo = (UserInfo) auth.getPrincipal();
        SysUser sysUser = userInfo.getSysUser();
        String sysUserId = sysUser.getSysUserId();
        LoginUser loginUser = new LoginUser(sysUser, userInfo.getRoles());
        String token = jwtService.generateToken(sysUserId);
        cookieService.setHttpOnlyCookie(response, token);
        DoloresRedis.hSetUserCache(token, loginUser);
        DoloresRedis.setHCacheByTime(ONLINE_LIST, ONLINE + sysUserId, sysUserId, DoloresRedis.getDay());
        //记录用户登录信息
        sysLoginRecordService.loginRecord(sysUserId, dto.getUsername(), request);
        AjaxResult ajaxResult = success("登录成功");
        ajaxResult.put("sysUserId", sysUserId);
        return ajaxResult;
    }

    /**
     * 获取验证码
     */
//    @RepeatSubmit(interval = 1000)
    @GetMapping("/captcha")
    public AjaxResult captcha() {
        AjaxResult ajaxResult = success();
        //缓存中验证码的key值
        String uuid = IdUtil.simpleUUID();
        ShearCaptcha captcha = CaptchaUtil.createShearCaptcha(110, 45, 4, 4);
        captcha.setGenerator(new MathGenerator(1));
        String codeResult = captchaService.getCodeResult(captcha.getCode());
        DoloresRedis.setSecurityCode(uuid, codeResult);
        ajaxResult.put("uuid", uuid);
        ajaxResult.put("img", "data:image/png;base64," + captcha.getImageBase64());
        return ajaxResult;
    }

    /**
     * 注销
     */
    @GetMapping("/logout")
    public AjaxResult logout() {
        String token = getUserToken();
        boolean isTokenDel = DoloresRedis.hDelUserCache(SYSUSERLIST, token);
        boolean isOnlineDel = DoloresRedis.hDelCache(ONLINE_LIST, ONLINE + token);
        SecurityContextHolder.clearContext();
        return isTokenDel && isOnlineDel ? success("注销成功") : error("注销失败");
    }
}
