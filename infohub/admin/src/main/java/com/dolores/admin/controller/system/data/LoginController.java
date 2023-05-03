package com.dolores.admin.controller.system.data;

import cn.hutool.captcha.AbstractCaptcha;
import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import cn.hutool.captcha.ShearCaptcha;
import cn.hutool.captcha.generator.CodeGenerator;
import cn.hutool.captcha.generator.MathGenerator;
import cn.hutool.core.util.IdUtil;
import com.dolores.common.constants.RedisConstant;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.framework.config.UserInfo;
import com.dolores.framework.enums.CaptchaType;
import com.dolores.framework.properties.CaptchaProperties;
import com.dolores.framework.service.ICaptchaService;
import com.dolores.framework.utils.DoloresUtils;
import com.dolores.framework.utils.JwtUtils;
import com.dolores.system.domain.LoginUser;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.dto.LoginDto;
import com.dolores.system.service.ISysLoginRecordService;
import com.dolores.utils.DoloresRedis;
import com.dolores.utils.ReflectUtils;
import com.dolores.utils.SpringContextHolder;
import jakarta.servlet.http.HttpServletRequest;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import static com.dolores.common.constants.RedisConstant.*;

@RestController
public class LoginController extends BaseController {

    @Autowired
    private AuthenticationProvider authenticationProvider;
    @Autowired
    private ISysLoginRecordService sysLoginRecordService;
    @Autowired
    private ICaptchaService captchaService;

    @PostMapping("/login")
    public AjaxResult login(@RequestBody LoginDto dto, HttpServletRequest request) {
        //获取验证码
        String code = dto.getCode();
        if (StringUtils.isBlank(code)) {
            return error("请输入验证码");
        }
        //从缓存中获取验证码
        String securityCode = DoloresRedis.getSecurityCode(dto.getUuid());
        if (StringUtils.isBlank(securityCode)) {
            return warn("验证码已超时，请重新刷新验证码");
        }
        //判断验证码是否一致
        if (!code.equals(securityCode)) {
            return error("验证码错误");
        }
        //从缓存中删除已匹配过的验证码
        DoloresRedis.deleteSecurityCode(dto.getUuid());
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(dto.getUsername(), dto.getPassword());
        Authentication auth = authenticationProvider.authenticate(authenticationToken);
        if (!auth.isAuthenticated()) {
            return error("账户名或密码错误");
        }
        //获取用户信息
        UserInfo userInfo = (UserInfo) auth.getPrincipal();
        SysUser sysUser = userInfo.getSysUser();
        String sysUserId = sysUser.getSysUserId();
        String username = sysUser.getUserName();
        String token = JwtUtils.generateToken(sysUserId, dto.getPassword());
        LoginUser loginUser = new LoginUser();
        loginUser.setSysUser(sysUser);
        loginUser.setRoles(userInfo.getRoles());
        DoloresRedis.hSetUserCache(token, loginUser);
        DoloresRedis.setHCacheByTime(ONLINE_LIST, ONLINE + sysUserId, sysUserId, DoloresRedis.getDay());
        //记录用户登录信息
        sysLoginRecordService.loginRecord(sysUserId, username, request);
        AjaxResult ajaxResult = success("登录成功");
        ajaxResult.put("sysUserId", sysUserId);
        ajaxResult.put("token", token);
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
        String userToken = DoloresUtils.getUserToken();
        String userId = JwtUtils.getUserId(userToken);
        DoloresRedis.hDelUserCache(SYSUSERLIST, userToken);
        DoloresRedis.hDelCache(ONLINE_LIST, ONLINE + userId);
        return success("注销成功");
    }
}
