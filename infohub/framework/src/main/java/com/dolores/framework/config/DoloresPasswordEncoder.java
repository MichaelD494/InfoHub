package com.dolores.framework.config;

import com.dolores.utils.MD5Encode;
import org.apache.commons.lang.StringUtils;
import org.springframework.security.crypto.password.PasswordEncoder;

public class DoloresPasswordEncoder implements PasswordEncoder {
    @Override
    public String encode(CharSequence rawPassword) {
        String salt = MD5Encode.createSaltValue();
        String md5EncodePwd = MD5Encode.md5EncodePwd(rawPassword.toString());
        if (StringUtils.isBlank(md5EncodePwd)) {
            throw new RuntimeException("密码生成失败");
        }
        return MD5Encode.getFinalPwd(salt, md5EncodePwd);
    }

    @Override
    public boolean matches(CharSequence rawPassword, String encodedPassword) {
        return MD5Encode.verifyPwd(rawPassword.toString(), encodedPassword);
    }
}
