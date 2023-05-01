package com.dolores.framework.filter;

import com.dolores.common.constants.RedisConstant;
import com.dolores.common.core.domain.AjaxResult;
import com.dolores.framework.config.UserInfo;
import com.dolores.framework.utils.DoloresUtils;
import com.dolores.system.domain.LoginUser;
import com.dolores.system.domain.SysUser;
import com.dolores.utils.DoloresRedis;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
public class JwtAuthFilter extends OncePerRequestFilter {

    private final AntPathMatcher matcher = new AntPathMatcher();

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException {
        String token = getTokenFromCookie(request);
        String uri = request.getRequestURI();

        if (matcher.match("/**/login", uri) || matcher.match("/captcha/**", uri)
                || matcher.match("/static/**", uri)) {
            chain.doFilter(request, response);
            return;
        }

        String userCache;
        try {
            userCache = DoloresRedis.hGetUserCache(token);
            if (StringUtils.isBlank(userCache)) {
                response.sendRedirect("/system/login");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("/system/login");
            return;
        }

        if (!DoloresRedis.isHExists(RedisConstant.SYSUSERLIST, RedisConstant.USERKEY + token)) {
            response.sendRedirect("/system/login");
            return;
        }

        if (StringUtils.isEmpty(token)) {
            response.sendRedirect("/system/login");
            return;
        }

        UserInfo userInfo = new UserInfo();
        ObjectMapper mapper = new ObjectMapper();
        LoginUser loginUser = mapper.readValue(userCache, LoginUser.class);
        userInfo.setSysUser(loginUser.getSysUser());
        userInfo.setToken(token);
        userInfo.setSessionId(request.getSession().getId());
        userInfo.setRoles(loginUser.getRoles());
        //存入SecurityContextHolder
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(userInfo, null,
                userInfo.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(authenticationToken);
        chain.doFilter(request, response);
    }

    private String getTokenFromCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("token".equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }
}
