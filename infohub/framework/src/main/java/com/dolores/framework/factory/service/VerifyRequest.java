package com.dolores.framework.factory.service;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public interface VerifyRequest {
    boolean verifyToken(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

    String getCookieValue(HttpServletRequest request, String cookieName);

    boolean verifyPath(HttpServletRequest request);
}
