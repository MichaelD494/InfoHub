package com.dolores.framework.factory.service.impl;

import com.dolores.common.constants.RedisConstant;
import com.dolores.framework.domain.html.PathMatcher;
import com.dolores.framework.domain.resource.InfoHubConfig;
import com.dolores.framework.domain.jwt.VerifyToken;
import com.dolores.framework.factory.service.VerifyRequest;
import com.dolores.utils.DoloresRedis;
import com.dolores.utils.SpringContextHolder;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.util.AntPathMatcher;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

public class VerifyRequestTool implements VerifyRequest {

    @Override
    public VerifyToken verifyToken(HttpServletRequest request, HttpServletResponse response, boolean isApiRequest) throws IOException {
        VerifyToken verifyToken = new VerifyToken();
        //从cookie中获取token
        String token;
        if (isApiRequest) {
            token = request.getHeader("Authorization");
        } else {
            token = getCookieValue(request, "Authorization");
        }
        //判断缓存是否存在token,以缓存为标准(可能出现token中的缓存已经失效,但是cookie还存在token的情况)
        if (!DoloresRedis.isHExists(RedisConstant.SYSUSERLIST, RedisConstant.USERKEY + token)) {
            verifyToken.setVerifyTokenFlag(false);
            return verifyToken;
        }
        verifyToken.setVerifyTokenFlag(true).setToken(token);
        return verifyToken;
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
    public boolean verifyPath(String requestUri) {
        InfoHubConfig infoHubConfig = SpringContextHolder.getBean(InfoHubConfig.class);
        //获取系统路径资源
        List<String> pathList = infoHubConfig.getPathList();
        //校验是否存在系统资源,如果存在则执行放行
        if (pathList != null && pathList.size() > 0) {
            AntPathMatcher antPathMatcher = PathMatcher.PATH_MATCHER.getAntPathMatcher();
            Optional<String> any = pathList.stream().filter(path -> antPathMatcher.match(path, requestUri)).findAny();
            return any.isPresent();
        }
        return false;
    }
}
