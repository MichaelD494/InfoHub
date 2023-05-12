package com.dolores.admin.controller.system.data;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.ShearCaptcha;
import cn.hutool.captcha.generator.MathGenerator;
import cn.hutool.core.util.IdUtil;
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
import com.dolores.framework.utils.DoloresRedis;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
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
        String userId = sysUser.getUserId();
        LoginUser loginUser = new LoginUser(sysUser, userInfo.getRoles());
        String token = jwtService.generateToken(userId);
        cookieService.setHttpOnlyCookie(response, token);
        DoloresRedis.hSetUserCache(token, loginUser);
        DoloresRedis.setHCacheByTime(ONLINE_LIST, ONLINE + userId, userId, DoloresRedis.getDay());
        //记录用户登录信息
        sysLoginRecordService.loginRecord(userId, dto.getUsername(), request);
        AjaxResult ajaxResult = success("登录成功");
        ajaxResult.put("sysUser", sysUser);
        ajaxResult.put("token", token);
        return ajaxResult;
    }

    /**
     * 获取验证码
     */
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
        log.info("uuid = " + uuid);
        log.info("验证码 = " + codeResult);
        return ajaxResult;
    }

    /**
     * 注销
     */
    @GetMapping("/logout")
    public AjaxResult logout(HttpServletResponse response) {
        String token = getUserToken();
        boolean isTokenDel = !DoloresRedis.hDelUserCache(SYSUSERLIST, token);
        boolean isOnlineDel = !DoloresRedis.hDelCache(ONLINE_LIST, ONLINE + token);
        cookieService.deleteCookie(response, "token");
        SecurityContextHolder.clearContext();
        return isTokenDel && isOnlineDel ? success("注销成功") : error("注销失败");
    }

    @GetMapping("/verify")
    public AjaxResult verify(HttpServletRequest request) {
        try {
            String token = cookieService.getCookieValue(request, "token");
            String cache = DoloresRedis.hGetUserCache(token);
            if (StringUtils.isBlank(token) || StringUtils.isBlank(cache)) {
                return error("身份验证已过期，请重新登录");
            }
            return success();
        } catch (Exception e) {
            return error("身份验证已过期，请重新登录");
        }
    }
}
