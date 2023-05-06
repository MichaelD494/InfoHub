package com.dolores.framework.config;

import com.dolores.system.domain.LoginUser;
import com.dolores.system.service.ISysUserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class UserInfoUserDetailsService implements UserDetailsService {

    @Autowired
    private ISysUserService sysUserService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new DoloresPasswordEncoder();
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        //查询用户信息
        LoginUser loginUser = sysUserService.queryUserByName(username);
        if (loginUser == null) {
            throw new RuntimeException("不存在此用户");
        }
        UserInfo userInfo = new UserInfo(loginUser);
        SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken(userInfo, null, userInfo.getAuthorities()));
        return userInfo;
    }
}
