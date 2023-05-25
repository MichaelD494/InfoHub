package com.dolores.framework.config;

import com.dolores.framework.domain.json.JsonParser;
import com.dolores.framework.domain.resource.InfoHubConfig;
import com.dolores.framework.factory.service.VerifyRequest;
import com.dolores.framework.factory.utils.FactoryUtil;
import com.dolores.framework.service.CookieService;
import com.dolores.system.domain.LoginUser;
import com.dolores.framework.utils.DoloresRedis;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.lang.NonNull;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

/**
 * Jwt拦截器
 */
@Component
@RequiredArgsConstructor
public class JwtAuthFilter extends OncePerRequestFilter {
    private final CookieService cookieService;
    private final InfoHubConfig infoHubConfig;

    @Override
    protected void doFilterInternal(
            @NonNull HttpServletRequest request,
            @NonNull HttpServletResponse response,
            @NonNull FilterChain chain
    ) throws ServletException, IOException {
        //获取校验请求工厂
        VerifyRequest verifyRequest = (VerifyRequest) FactoryUtil.getFactory("VerifyRequestFactory", "VerifyRequestTool");
        //从cookie中获取token
        String token = cookieService.getCookieValue(request, "token");
        //专门为了使用测试Api工具开放的
        if (StringUtils.isBlank(token)) {
            //从请求头中获取是为Api标识
            String isApi = request.getHeader("X-Api-Request");
            if (StringUtils.isNotBlank(isApi) && isApi.equals("true")) {
                //获取token
                token = request.getHeader("Authorization");
            }
        }
        //从缓存中获取token,以缓存中的token为校准核心
        String cache = DoloresRedis.hGetUserCache(token);
        //获取uri
        String requestURI = request.getRequestURI();
        //判断是否为系统资源
        if (verifyRequest.verifyPath(requestURI)) {
            chain.doFilter(request, response);
            return;
        }
        //判断token是否不存在
        if (StringUtils.isBlank(token) || StringUtils.isBlank(cache)) {
            //token过期跳转到登录页面
            response.sendRedirect(infoHubConfig.getLoginPagePath());
            return;
        }
        //从缓存中获取用户信息
        LoginUser loginUser = JsonParser.parseJson(cache, LoginUser.class);
        //SecurityContext是否为存在用户信息,每一次请求都会重新注入身份信息到SpringSecurityContext
        if (loginUser != null && SecurityContextHolder.getContext().getAuthentication() == null) {
            //声明UserInfo
            UserInfo userInfo = new UserInfo(loginUser)
                    .setToken(token);
            //装配身份校验Token
            UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(
                    userInfo,
                    null,
                    userInfo.getAuthorities()
            );
            authToken.setDetails(
                    new WebAuthenticationDetailsSource().buildDetails(request)
            );
            //重新注入到安全作用域
            SecurityContextHolder.getContext().setAuthentication(authToken);
            chain.doFilter(request, response);
            return;
        }
        chain.doFilter(request, response);
    }
}
