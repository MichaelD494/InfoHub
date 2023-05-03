package com.dolores.utils;


import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.RandomStringUtils;

import java.security.SecureRandom;


public class DoloresEncrypt {

    //盐值长度
    private static final int SALT_LENGTH = 30;

    /**
     * 生成随机盐
     */
    public static String generateSaltValue() {
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[SALT_LENGTH];
        random.nextBytes(salt);
        return Hex.encodeHexString(salt);
    }

    public static String encryptPassword(String salt, String password) {
        return DigestUtils.md5Hex(salt + password);
    }

    public static boolean verifyPwd(String salt, String password, String encodedPassword) {
        String hashedPassword = encryptPassword(salt, password);
        return hashedPassword.equals(encodedPassword);
    }

    public static String md5(String value) {
        return DigestUtils.md5Hex(value);
    }
}
