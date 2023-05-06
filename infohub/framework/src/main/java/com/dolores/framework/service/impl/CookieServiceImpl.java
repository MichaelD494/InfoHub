package com.dolores.framework.service.impl;

import com.dolores.framework.service.CookieService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Service;

@Service
public class CookieServiceImpl implements CookieService {
    @Override
    public void setHttpOnlyCookie(HttpServletResponse response, String token) {
        Cookie cookie = new Cookie("token", token);
        cookie.setHttpOnly(true); // 设置 HttpOnly 属性
        cookie.setSecure(true); // 设置 Secure 属性，仅在 HTTPS 连接上发送 cookie
        cookie.setMaxAge(60 * 60 * 24); // 设置 cookie 过期时间，例如：24 小时
        cookie.setPath("/"); // 设置 cookie 路径
        response.addCookie(cookie); // 将 cookie 添加到响应中
    }

    @Override
    public String getCookieValue(HttpServletRequest request, String cookieName) {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals(cookieName)) {
                return cookie.getValue();
            }
        }
        return null;
    }
}
