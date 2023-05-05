package com.dolores.framework.factory.service;

import com.dolores.framework.domain.jwt.VerifyToken;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public interface VerifyRequest {
    VerifyToken verifyToken(HttpServletRequest request, HttpServletResponse response, boolean isApiRequest) throws ServletException, IOException;

    String getCookieValue(HttpServletRequest request, String cookieName);

    boolean verifyPath(String requestUri);
}
