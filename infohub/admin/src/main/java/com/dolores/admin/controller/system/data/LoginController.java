package com.dolores.admin.controller.system.data;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.ShearCaptcha;
import cn.hutool.captcha.generator.MathGenerator;
import cn.hutool.core.util.IdUtil;
import com.dolores.framework.config.UserInfo;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.framework.service.ICaptchaService;
import com.dolores.framework.service.JwtService;
import com.dolores.framework.utils.DoloresUtils;
import com.dolores.framework.utils.JwtUtils;
import com.dolores.system.domain.LoginUser;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.dto.LoginDto;
import com.dolores.system.service.ISysLoginRecordService;
import com.dolores.system.service.ISysUserService;
import com.dolores.utils.DoloresRedis;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import static com.dolores.common.constants.RedisConstant.*;

@Controller
public class LoginController extends BaseController {
    @Autowired

    private AuthenticationProvider authenticationProvider;
    @Autowired
    private ISysLoginRecordService sysLoginRecordService;
    @Autowired
    private ICaptchaService captchaService;
    @Autowired
    private JwtService jwtService;
    @Autowired
    private ISysUserService sysUserService;

    @GetMapping("/")
    public String loginPage() {
        return "system/login";
    }

    @PostMapping("/login")
    public String login(LoginDto dto,
                        HttpServletRequest request,
                        ModelMap modelMap) {
        /*if (StringUtils.isBlank(code)) {
            modelMap.put("msg", "请输入验证码");
            return "/system/login";
        }
        //从缓存中获取验证码
        String securityCode = DoloresRedis.getSecurityCode(uuid);
        if (StringUtils.isBlank(securityCode)) {
            modelMap.put("msg", "验证码已超时，请重新刷新验证码");
            return "/system/login";
        }
        //判断验证码是否一致
        if (!code.equals(securityCode)) {
            modelMap.put("msg", "验证码错误");
            return "/system/login";
        }
        //从缓存中删除已匹配过的验证码
        DoloresRedis.deleteSecurityCode(uuid);
        Authentication auth = authenticationProvider.authenticate(
                new UsernamePasswordAuthenticationToken(username, password));
        if (!auth.isAuthenticated()) {
            modelMap.put("msg", "账户名或密码错误");
            return "/system/login";
        }*/
        //获取用户信息
//        UserInfo userInfo = (UserInfo) auth.getPrincipal();
//        SysUser sysUser = userInfo.getSysUser();
//        String sysUserId = sysUser.getSysUserId();
//        LoginUser loginUser = new LoginUser(sysUser, userInfo.getRoles());
//        String token = jwtService.generateToken(userInfo);
//        DoloresRedis.hSetUserCache(token, loginUser);
//        DoloresRedis.setHCacheByTime(ONLINE_LIST, ONLINE + sysUserId, sysUserId, DoloresRedis.getDay());
//        //记录用户登录信息
//        sysLoginRecordService.loginRecord(sysUserId, username, request);
//        AjaxResult ajaxResult = success("登录成功");
//        ajaxResult.put("sysUserId", sysUserId);
//        ajaxResult.put("token", token);
        System.out.println(1);
        return "redirect:/home";
    }

    /**
     * 获取验证码
     */
//    @RepeatSubmit(interval = 1000)
    @GetMapping("/captcha")
    @ResponseBody
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
    @ResponseBody
    public AjaxResult logout() {
//        String userId = JwtUtils.getUserId(userToken);
//        DoloresRedis.hDelUserCache(SYSUSERLIST, userToken);
//        DoloresRedis.hDelCache(ONLINE_LIST, ONLINE + userId);
        return success("注销成功");
    }
}
