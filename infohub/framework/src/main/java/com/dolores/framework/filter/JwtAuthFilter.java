package com.dolores.framework.filter;

import com.dolores.framework.config.UserInfo;
import com.dolores.framework.domain.json.JsonParser;
import com.dolores.framework.domain.jwt.VerifyToken;
import com.dolores.framework.domain.resource.InfoHubConfig;
import com.dolores.framework.factory.service.VerifyRequest;
import com.dolores.framework.factory.utils.FactoryUtil;
import com.dolores.system.domain.LoginUser;
import com.dolores.utils.DoloresRedis;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
public class JwtAuthFilter extends OncePerRequestFilter {
    @Autowired
    private InfoHubConfig infoHubConfig;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException {
        //获取校验request工厂
        VerifyRequest verifyRequestFactory = (VerifyRequest) FactoryUtil.getFactory("VerifyRequestFactory", "VerifyRequestTool");
        //检查 X-Api-Request头部(查看是从页面传过来还是api传过来)
        String apiRequestHeader = request.getHeader("X-Api-Request");
        boolean isApiRequest = apiRequestHeader != null && apiRequestHeader.equals("true");
        String uri = request.getRequestURI();
        /*if (!isApiRequest) {
            //判断是否存在系统路径资源
            boolean verifyPathFlag = verifyRequestFactory.verifyPath(request);
            //如果存在则执行放行
            if (verifyPathFlag) {
                chain.doFilter(request, response);
                return;
            }
        }*/
        //校验token
        VerifyToken verifyToken = verifyRequestFactory.verifyToken(request, response, isApiRequest);
        //如果token失效,则执行重定向到login page
        if (!verifyToken.isVerifyTokenFlag()) {
            if (uri.equals("/infohub/login") || uri.equals("/infohub/system/login")) {
                chain.doFilter(request, response);
                return;
            }
            String loginPagePath = infoHubConfig.getLoginPagePath();
            response.sendRedirect(loginPagePath);
            return;
        }
        //从cookie中获取token
        String token = verifyToken.getToken();
        //从缓存中获取token
        String userInfoCache = DoloresRedis.hGetUserCache(token);
        //获取Json解析器
        ObjectMapper mapper = JsonParser.getInstance();
        //从缓存中读取用户信息
        LoginUser loginUser = mapper.readValue(userInfoCache, LoginUser.class);
        //因为SpringSecurity在每次接收request时都会进入Jwt Filter
        //所以我们需要在每次请求进入拦截器时都做一次校验,并在校验完成后,将用户信息重新注入到SecurityContextHolder里
        //这样能够才能以已验证身份读取系统资源
        UserInfo userInfo = new UserInfo()
                .setSysUser(loginUser.getSysUser())
                .setToken(token)
                .setSalt(loginUser.getSysUser().getSalt())
                .setSessionId(request.getSession().getId())
                .setRoles(loginUser.getRoles());
        //存入SecurityContextHolder
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(userInfo, null, userInfo.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(authenticationToken);
        chain.doFilter(request, response);
    }
}
