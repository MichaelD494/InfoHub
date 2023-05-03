package com.dolores.framework.config;

import com.dolores.utils.DoloresEncrypt;
import org.apache.commons.lang.StringUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class DoloresPasswordEncoder implements PasswordEncoder {

    @Override
    public String encode(CharSequence rawPassword) {
        String salt = DoloresEncrypt.generateSaltValue();
        String md5EncodePwd = DoloresEncrypt.encryptPassword(salt, rawPassword.toString());
        if (StringUtils.isBlank(md5EncodePwd)) {
            throw new RuntimeException("密码生成失败");
        }
        return md5EncodePwd;
    }

    @Override
    public boolean matches(CharSequence rawPassword, String encodedPassword) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated()) {
            return false;
        }
        Object principal = authentication.getPrincipal();
        if (!(principal instanceof UserInfo userInfo)) {
            return false;
        }
        return DoloresEncrypt.verifyPwd(userInfo.getSysUser().getSalt(), rawPassword.toString().trim(), encodedPassword.trim());
    }
}
