package com.dolores.framework.config;

import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.domain.json.JsonParser;
import com.dolores.utils.DoloresRedis;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.stereotype.Service;

import static com.dolores.common.constants.RedisConstant.*;

@Service
@RequiredArgsConstructor
public class LogoutService implements LogoutHandler {

    @Override
    public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
        final String authHeader = request.getHeader("Authorization");
        final String jwt;
        if (authHeader == null || !authHeader.startsWith("Bearer ")) {
            return;
        }
        jwt = authHeader.substring(7);
        String userCache = DoloresRedis.hGetUserCache(jwt);
        if (userCache == null) {
            SecurityContextHolder.clearContext();
        } else {
            UserInfo userInfo = JsonParser.parseJson(userCache, UserInfo.class);
            DoloresRedis.hDelUserCache(SYSUSERLIST, jwt);
            DoloresRedis.hDelCache(ONLINE_LIST, ONLINE + userInfo.getSysUser().getSysUserId());
            SecurityContextHolder.clearContext();
        }
    }
}
