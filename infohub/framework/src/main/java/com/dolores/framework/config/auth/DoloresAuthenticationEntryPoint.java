package com.dolores.framework.config.auth;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;

import java.io.IOException;
@Slf4j
public class DoloresAuthenticationEntryPoint implements AuthenticationEntryPoint {
    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException {
        try {
            String uri = request.getRequestURI();
            log.error("请求地址'{}',权限校验失败'{}'", uri, e.getMessage());
            response.sendRedirect("/403");
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }
}
