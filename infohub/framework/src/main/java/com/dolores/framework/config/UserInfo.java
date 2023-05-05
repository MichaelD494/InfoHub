package com.dolores.framework.config;

import com.dolores.system.domain.LoginUser;
import com.dolores.system.domain.SysUser;
import com.dolores.system.domain.SysUserPerms;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.apache.commons.lang.StringUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Data
@NoArgsConstructor
@Accessors(chain = true)
public class UserInfo implements UserDetails, Serializable {
    /**
     * 用户信息
     */
    private SysUser sysUser;
    /**
     * sessionId
     */
    private String sessionId;
    /**
     * token指令牌
     */
    private String token;
    /**
     * 用户拥有权限集合
     */
    private List<SysUserPerms> roles;

    /**
     * 用户拥有角色集合
     */
    private List<SimpleGrantedAuthority> authorityList;

    public UserInfo(LoginUser loginUser) {
        this.sysUser = loginUser.getSysUser();
        this.roles = loginUser.getRoles();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (authorityList != null && authorityList.size() > 0) {
            return authorityList;
        }
        List<String> roleList = roles.stream().map(SysUserPerms::getPerms).filter(StringUtils::isNotBlank).toList();
        List<SimpleGrantedAuthority> authorities = roleList.stream().map(SimpleGrantedAuthority::new).toList();
        if (authorities.size() > 0) {
            authorityList = roleList.stream().map(SimpleGrantedAuthority::new).collect(Collectors.toList());
        }
        return authorityList;
    }

    @Override
    public String getPassword() {
        return sysUser.getPassword();
    }

    @Override
    public String getUsername() {
        return sysUser.getUserName();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
