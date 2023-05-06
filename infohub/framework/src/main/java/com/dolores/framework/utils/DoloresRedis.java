package com.dolores.framework.utils;

import com.dolores.common.constants.RedisConstant;
import com.dolores.framework.domain.json.JsonParser;
import com.dolores.utils.RedisUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Redis工具类
 *
 * @author Michael
 * @date 2022/1/7 21:40
 */
@Component
@RequiredArgsConstructor
public class DoloresRedis {

    /**
     * Redis工具
     */
    private static RedisUtil redisUtil;

    public static long getHour() {
        return hour;
    }

    public static void setHour(long hour) {
        DoloresRedis.hour = hour;
    }

    public static long getDay() {
        return day;
    }

    public static void setDay(long day) {
        DoloresRedis.day = day;
    }

    private static long hour = 3600;
    private static long day = 86400;


    @Autowired
    public void setRedisUtil(RedisUtil redisUtil) {
        DoloresRedis.redisUtil = redisUtil;
    }

    /**
     * 设置缓存
     *
     * @param cacheName 缓存名
     * @param value     缓存值
     */
    public static void setCache(String cacheName, Object value) {
        redisUtil.set(cacheName, value);
    }

    /**
     * 获取缓存
     *
     * @param cacheName 缓存名
     * @return
     */
    public static String getCache(String cacheName) {
        if (redisUtil.hasKey(cacheName)) {
            return redisUtil.get(cacheName).toString();
        }
        return null;
    }

    /**
     * 设置系统用户缓存
     *
     * @param token 指令牌
     * @param obj   缓存值
     *              3600 秒 = 1 小时
     *              86400 秒 = 1 天
     */
    public static void hSetUserCache(String token, Object obj) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            redisUtil.hset(RedisConstant.SYSUSERLIST, RedisConstant.USERKEY + token, mapper.writeValueAsString(obj),
                    day);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 获取系统用户缓存
     *
     * @param token 指令牌
     * @return
     */
    public static String hGetUserCache(String token) {
        Object hGet = redisUtil.hget(RedisConstant.SYSUSERLIST, RedisConstant.USERKEY + token);
        return hGet != null ? hGet.toString() : null;
    }

    /**
     * 判断缓存是否存在
     *
     * @param cacheName 缓存名
     * @return
     */
    public static boolean isExists(String cacheName) {
        return redisUtil.hasKey(cacheName);
    }

    /**
     * 判断hash是否存在
     *
     * @param key  键
     * @param item 项
     * @return
     */
    public static boolean isHExists(String key, String item) {
        return redisUtil.hHasKey(key, item);
    }

    /**
     * 删除用户缓存
     *
     * @param token 指令牌
     * @return
     */
    public static boolean hDelUserCache(String key, String token) {
        String item = RedisConstant.USERKEY + token;
        redisUtil.hdel(key, item);
        return isHExists(key, item);
    }

    /**
     * 删除缓存
     *
     * @param cacheName 缓存名
     * @return
     */
    public static boolean deleteCache(String cacheName) {
        redisUtil.del(cacheName);
        return isExists(cacheName);
    }

    /**
     * 设置验证码缓存
     *
     * @param uuid 随机id
     * @param code 验证码
     */
    public static void setSecurityCode(String uuid, String code) {
        redisUtil.set(RedisConstant.SECURITYCODE + uuid, code);
        redisUtil.expire(RedisConstant.SECURITYCODE + uuid, 30);
    }

    /**
     * 获取验证码缓存
     *
     * @param sessionId
     * @return
     */
    public static String getSecurityCode(String sessionId) {
        Object obj = redisUtil.get(RedisConstant.SECURITYCODE + sessionId);
        return obj != null ? obj.toString() : null;
    }

    /**
     * 删除验证码缓存
     *
     * @param sessionId
     * @return
     */
    public static boolean deleteSecurityCode(String sessionId) {
        String cacheName = RedisConstant.SECURITYCODE + sessionId;
        redisUtil.del(cacheName);
        return isExists(cacheName);
    }

    /**
     * 设置Hash缓存
     *
     * @param key  键值
     * @param item 项
     * @param obj  缓存内容
     */
    public static void setHCache(String key, String item, Object obj) {
        try {
            redisUtil.hset(key, item, JsonParser.toJsonString(obj));
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 设置Hash缓存
     *
     * @param key     键值
     * @param obj     缓存内容
     * @param seconds 秒
     */
    public static void setHCacheByTime(String key, String item, Object obj, long seconds) {
        try {
            String s = JsonParser.toJsonString(obj);
            redisUtil.hset(key, item, s, seconds);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 获取Hash缓存
     *
     * @param key  键值
     * @param item 目标对象
     */
    public static String getHCache(String key, String item) {
        if (isHExists(key, item)) {
            Object cache = redisUtil.hget(key, item);
            return cache != null ? cache.toString() : null;
        }
        return null;
    }

    /**
     * Hash删除
     *
     * @param key  键值
     * @param item 目标对象
     * @return
     */
    public static boolean hDelCache(String key, String item) {
        redisUtil.hdel(key, item);
        return isHExists(key, item);
    }
}
