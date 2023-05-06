package com.dolores.framework.factory.service;

import com.dolores.framework.domain.jwt.VerifyToken;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public interface VerifyRequest {
    boolean verifyPath(String requestUri);
}
