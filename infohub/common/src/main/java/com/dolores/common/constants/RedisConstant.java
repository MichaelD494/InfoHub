package com.dolores.common.constants;

/**
 * Redis常量
 */
public interface RedisConstant {
    /**
     * 用户键名
     */
    String USERKEY = "dolores:user:";
    /**
     * 系统用户集合名
     */
    String SYSUSERLIST = "sysUserList";
    /**
     * 登录验证码
     */
    String SECURITYCODE = "dolores:securityCode:";
    /**
     * 在线字符
     */
    String ONLINE = "dolores:online:";

    String REMEMBERME = "dolores_rememberMe";
}
