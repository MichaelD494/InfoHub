package com.dolores.framework.exception;

import com.dolores.common.constants.Constants;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.framework.utils.DoloresRedis;
import com.dolores.utils.IPUtils;
import com.dolores.utils.StringUtils;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;


/**
 * 全局异常处理
 *
 * @author Michael
 * @date 2022/2/14 15:28
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    /**
     * 权限校验异常
     */
    @ExceptionHandler(AccessDeniedException.class)
    public AjaxResult handleAccessDeniedException(AccessDeniedException e, HttpServletRequest request) {
        String uri = request.getRequestURI();
        log.error("请求地址'{}',权限校验失败'{}'", uri, e.getMessage());
        return AjaxResult.forbidden("权限不足");
    }

    /**
     * 拦截未知运行时异常
     */
    @ExceptionHandler(RuntimeException.class)
    public AjaxResult handleRuntimeException(RuntimeException e, HttpServletRequest request) {
        String uri = request.getRequestURI();
        log.error("请求地址'{}',发生未知异常", uri, e);
        return AjaxResult.error(e.getMessage());
    }

    /**
     * 系统异常
     */
    @ExceptionHandler(Exception.class)
    public AjaxResult handleException(Exception e, HttpServletRequest request) {
        String uri = request.getRequestURI();
        log.error("请求地址'{}',发生系统异常", uri, e);
        return AjaxResult.error(e.getMessage());
    }

    /**
     * 空指针异常
     */
    @ExceptionHandler(NullPointerException.class)
    public AjaxResult handleNullPointerException(Exception e, HttpServletRequest request) {
        String uri = request.getRequestURI();
        log.error("请求地址'{}',发生空指针异常", uri, e);
        return AjaxResult.error(e.getMessage());
    }

    @ExceptionHandler(BadCredentialsException.class)
    public AjaxResult handleBadCredentialsException(Exception e, HttpServletRequest request) {
        String uri = request.getRequestURI();
        String ipAddr = IPUtils.getRealIp(request);
        log.error("请求地址'{}',用户校验失败", uri, e);
        String lock = DoloresRedis.getHCache(Constants.SYS_LOGIN_LOCK, ipAddr);
        String hCache = DoloresRedis.getHCache(Constants.SYS_LOGIN_ERROR, ipAddr);
        if (lock != null) {
            return AjaxResult.error("请等待一分钟后再尝试");
        }
        if (StringUtils.isEmpty(hCache)) {
            DoloresRedis.setHCache(Constants.SYS_LOGIN_ERROR, ipAddr, "5");
        } else if (hCache != null) {
            int chance = Integer.parseInt(hCache) - 1;
            DoloresRedis.setHCache(Constants.SYS_LOGIN_ERROR, ipAddr, Integer.toString(chance));
            if (0 == chance) {
                DoloresRedis.hDelCache(Constants.SYS_LOGIN_ERROR, ipAddr);
                DoloresRedis.setHCacheByTime(Constants.SYS_LOGIN_LOCK, ipAddr, "", 60);
                return AjaxResult.error("请等待一分钟后再尝试");
            }
            return AjaxResult.error("用户名或密码错误，您还有" + chance + "机会");
        }
        return AjaxResult.error(e.getMessage());
    }
}
