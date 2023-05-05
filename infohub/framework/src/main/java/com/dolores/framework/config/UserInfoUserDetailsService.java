package com.dolores.framework.config;

import com.dolores.system.domain.LoginUser;
import com.dolores.system.service.ISysUserService;
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

@Component
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
        Authentication auth = new UsernamePasswordAuthenticationToken(userInfo, null, userInfo.getAuthorities());
        //如果存在信息放入SecurityContextHolder中,这样在后面的matches()就能通过SecurityContextHolder获取当前用户登录信息
        SecurityContextHolder.getContext().setAuthentication(auth);
        return userInfo;
    }
}
