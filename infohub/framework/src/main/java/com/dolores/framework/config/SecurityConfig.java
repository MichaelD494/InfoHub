package com.dolores.framework.config;

import com.dolores.framework.config.auth.DoloresAccessDeniedHandler;
import com.dolores.framework.config.auth.DoloresAuthenticationEntryPoint;
import com.dolores.framework.security.filter.XssFilter;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;


/**
 * 安全配置
 */
@Configuration
@EnableWebSecurity
@EnableMethodSecurity
@RequiredArgsConstructor
public class SecurityConfig {
    private final JwtAuthFilter jwtAuthFilter;
    private final UserInfoUserDetailsService userDetailsService;
    private final XssFilter xssFilter;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeHttpRequests()
                .requestMatchers("/", "/sys/login", "/login", "/logout", "/verify","/generator/list")
                .permitAll()
                .and()
                .addFilterBefore(xssFilter, UsernamePasswordAuthenticationFilter.class)
                .addFilterBefore(jwtAuthFilter, UsernamePasswordAuthenticationFilter.class)
                .formLogin().disable()
                .logout().disable()
                .exceptionHandling()
                .authenticationEntryPoint(doloresAuthenticationEntryPoint())
                .accessDeniedHandler(doloresAccessDeniedHandler());

        http
                .authorizeHttpRequests()
                .requestMatchers("/static/**", "/captcha")
                .permitAll()
                .anyRequest()
                .authenticated();
        return http.build();
    }

    @Bean
    public DoloresAuthenticationEntryPoint doloresAuthenticationEntryPoint() {
        return new DoloresAuthenticationEntryPoint();
    }

    @Bean
    public DoloresAccessDeniedHandler doloresAccessDeniedHandler() {
        return new DoloresAccessDeniedHandler();
    }

    @Bean
    public SessionRegistry sessionRegistry() {
        return new SessionRegistryImpl();
    }

    @Bean
    public DoloresPasswordEncoder doloresPasswordEncoder() {
        return new DoloresPasswordEncoder();
    }

    @Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService);
        authenticationProvider.setPasswordEncoder(doloresPasswordEncoder());
        return authenticationProvider;
    }
}
