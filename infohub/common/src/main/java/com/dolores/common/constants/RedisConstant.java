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
     * 在线用户集合字符
     */
    String ONLINE_LIST = "dolores:online:list";
    /**
     * 在线用户字符
     */
    String ONLINE = "dolores:online:";

    String REMEMBERME = "dolores_rememberMe";
}
