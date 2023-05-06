package com.dolores.framework.service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface CookieService {
    void setHttpOnlyCookie(HttpServletResponse response, String token);
    String getCookieValue(HttpServletRequest request,String cookieName);
}
