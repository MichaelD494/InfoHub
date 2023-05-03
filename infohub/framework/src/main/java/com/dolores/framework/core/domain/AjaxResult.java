package com.dolores.framework.core.domain;

import lombok.experimental.Accessors;
import org.apache.poi.ss.formula.functions.T;

import java.io.Serial;
import java.util.HashMap;
import java.util.List;

/**
 * 操作消息提醒
 *
 * @author dolores
 * @date 2021/9/9 14:50
 */
public class AjaxResult extends HashMap<String, Object> {
    @Serial
    private static final long serialVersionUID = 1L;
    /**
     * 状态码
     */
    public static final String CODE_TAG = "code";
    /**
     * 返回内容
     */
    public static final String MSG_TAG = "msg";
    /**
     * 数据对象
     */
    public static final String DATA_TAG = "data";

    public enum Type {
        /**
         * 成功
         */
        SUCCESS(200),
        /**
         * 警告
         */
        WARN(301),
        /**
         * 认证失败
         */
        UNAUTHORIZED(401),
        /**
         * 权限不足
         */
        FORBIDDEN(403),
        /**
         * 错误
         */
        ERROR(500);
        private final int value;

        Type(int value) {
            this.value = value;
        }

        public int value() {
            return this.value;
        }
    }

    /**
     * @param type 状态类型
     * @param msg  返回内容
     */
    public AjaxResult(Type type, String msg) {
        super.put(CODE_TAG, type.value);
        super.put(MSG_TAG, msg);
    }

    /*
     * @param type 状态类型
     * @param msg 返回内容
     * @param data 数据对象
     */
    public AjaxResult(Type type, String msg, Object data) {
        super.put(CODE_TAG, type.value);
        super.put(MSG_TAG, msg);
        if (data != null) {
            super.put(DATA_TAG, data);
        }
    }

    @Override
    public AjaxResult put(String key, Object value) {
        super.put(key, value);
        return this;
    }

    /**
     * 返回成功消息
     *
     * @return 成功消息
     */
    public static AjaxResult success() {
        return AjaxResult.success("操作成功");
    }

    public static AjaxResult success(List<?> dataList) {
        return AjaxResult.success("操作成功", dataList);
    }

    /**
     * 返回成功数据
     *
     * @return 成功消息
     */
    public static AjaxResult success(Object data) {
        return AjaxResult.success("操作成功", data);
    }

    /**
     * 返回成功消息
     *
     * @param msg 返回内容
     * @return 成功消息
     */
    public static AjaxResult success(String msg) {
        return AjaxResult.success(msg, null);
    }

    /**
     * 返回成功消息
     *
     * @param msg  返回内容
     * @param data 数据对象
     * @return 成功消息
     */
    public static AjaxResult success(String msg, Object data) {
        return new AjaxResult(Type.SUCCESS, msg, data);
    }

    /**
     * 返回警告消息
     *
     * @return 警告消息
     */
    public static AjaxResult warn() {
        return AjaxResult.warn("操作成功");
    }

    /**
     * 返回警告消息
     *
     * @param msg 返回内容
     * @return 警告消息
     */
    public static AjaxResult warn(String msg) {
        return AjaxResult.warn(msg, null);
    }

    /**
     * 返回警告消息
     *
     * @param msg  返回内容
     * @param data 数据对象
     * @return 警告消息
     */
    public static AjaxResult warn(String msg, Object data) {
        return new AjaxResult(Type.WARN, msg, data);
    }

    /**
     * 返回错误消息
     *
     * @return
     */
    public static AjaxResult error() {
        return AjaxResult.error("操作失败");
    }

    /**
     * 返回错误消息
     *
     * @param msg 返回内容
     * @return 警告消息
     */
    public static AjaxResult error(String msg) {
        return AjaxResult.error(msg, null);
    }

    /**
     * 返回错误消息
     *
     * @param msg  返回内容
     * @param data 数据对象
     * @return 警告消息
     */
    public static AjaxResult error(String msg, Object data) {
        return new AjaxResult(Type.ERROR, msg, data);
    }

    /**
     * 返回认证失败消息
     *
     * @return
     */
    public static AjaxResult unauthorized() {
        return AjaxResult.unauthorized("认证失败");
    }

    /**
     * 返回认证失败消息
     *
     * @param msg 返回内容
     * @return 警告消息
     */
    public static AjaxResult unauthorized(String msg) {
        return AjaxResult.unauthorized(msg, null);
    }

    /**
     * 返回认证失败消息
     *
     * @param msg  返回内容
     * @param data 数据对象
     * @return 警告消息
     */
    public static AjaxResult unauthorized(String msg, Object data) {
        return new AjaxResult(Type.UNAUTHORIZED, msg, data);
    }

    /**
     * 返回权限不足消息
     *
     * @return
     */
    public static AjaxResult forbidden() {
        return AjaxResult.forbidden("权限不足");
    }

    /**
     * 返回权限不足消息
     *
     * @param msg 返回内容
     * @return 警告消息
     */
    public static AjaxResult forbidden(String msg) {
        return AjaxResult.forbidden(msg, null);
    }

    /**
     * 返回权限不足消息
     *
     * @param msg  返回内容
     * @param data 数据对象
     * @return 警告消息
     */
    public static AjaxResult forbidden(String msg, Object data) {
        return new AjaxResult(Type.FORBIDDEN, msg, data);
    }
}
