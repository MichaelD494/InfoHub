package com.dolores.framework.config;

import com.dolores.framework.domain.json.JsonParser;
import com.dolores.framework.domain.resource.InfoHubConfig;
import com.dolores.framework.service.JwtService;
import com.dolores.system.domain.LoginUser;
import com.dolores.utils.DoloresRedis;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
public class JwtAuthFilter extends OncePerRequestFilter {
    @Autowired
    private InfoHubConfig infoHubConfig;
    @Autowired
    private JwtService jwtService;
    @Override
    protected void doFilterInternal(
            HttpServletRequest request,
            HttpServletResponse response,
            FilterChain chain) throws ServletException, IOException {
        final String authHeader = request.getHeader("Authorization");
        final String jwt;
        final String username;
        if (authHeader == null || !authHeader.startsWith("Bearer ")) {
            chain.doFilter(request, response);
            return;
        }
        jwt = authHeader.substring(7);
        System.out.println(request.getRequestURI());
        username = jwtService.extractUsername(jwt);
        if (username != null && SecurityContextHolder.getContext().getAuthentication() == null) {
            String cache = DoloresRedis.hGetUserCache(jwt);
            if (StringUtils.isBlank(cache)) {
                response.sendRedirect("/system/login");
                return;
            }
            LoginUser loginUser = JsonParser.parseJson(cache, LoginUser.class);
            UserInfo userInfo = new UserInfo(loginUser);
            UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(
                    userInfo,
                    null,
                    userInfo.getAuthorities()
            );
            authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
            SecurityContextHolder.getContext().setAuthentication(authToken);
            chain.doFilter(request, response);
        }
    }
}
