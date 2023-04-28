package com.dolores.admin.config;

import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * 重写加密器
 *
 * @author Michael
 * @date 2022/1/8 22:34
 */
public class DoloresPasswordEncoder implements PasswordEncoder {
    @Override
    public String encode(CharSequence rawPassword) {
        String salt = MD5Encode.createSaltValue();
        String md5EncodePwd = MD5Encode.md5EncodePwd(rawPassword.toString());
        return MD5Encode.getFinalPwd(salt, md5EncodePwd);
    }

    @Override
    public boolean matches(CharSequence rawPassword, String encodedPassword) {
        return MD5Encode.verifyPwd(rawPassword.toString(), encodedPassword);
    }
}
