package com.dolores.framework.factory.service.impl;

import com.dolores.common.constants.Constants;
import com.dolores.common.constants.RedisConstant;
import com.dolores.framework.domain.PathMatcher;
import com.dolores.framework.domain.SystemResource;
import com.dolores.framework.factory.service.VerifyRequest;
import com.dolores.utils.DoloresRedis;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.util.AntPathMatcher;

import java.io.IOException;
import java.util.Optional;
import java.util.Set;

public class VerifyRequestTool implements VerifyRequest {

    @Override
    public boolean verifyToken(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //从cookie中获取token
        String token = getCookieValue(request, "token");
        //判断缓存是否存在token,以缓存为标准(可能出现token中的缓存已经失效,但是cookie还存在token的情况)
        if (!DoloresRedis.isHExists(RedisConstant.SYSUSERLIST, RedisConstant.USERKEY + token)) {
            response.sendRedirect(Constants.LOGIN_PATH);
            return false;
        }
        return true;
    }

    @Override
    public String getCookieValue(HttpServletRequest request, String cookieName) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookieName.equalsIgnoreCase(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

    @Override
    public boolean verifyPath(HttpServletRequest request) {
        //获取request访问路径
        String uri = request.getRequestURI();
        //获取系统路径资源
        Set<String> pathList = SystemResource.PATH_RESOURCE.getPathList();
        //校验是否存在系统资源,如果存在则执行放行
        if (pathList != null && pathList.size() > 0) {
            AntPathMatcher antPathMatcher = PathMatcher.PATH_MATCHER.getAntPathMatcher();
            Optional<String> any = pathList.stream().filter(path -> antPathMatcher.match(path, uri)).findAny();
            return any.isPresent();
        }
        return false;
    }
}
