package com.dolores.framework.core.controller;

import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.framework.utils.DoloresUtils;
import com.dolores.system.domain.SysUser;
import com.dolores.utils.ServletUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.List;
import java.util.Objects;

/**
 * @author dolores
 * @date 2021/9/10 9:41
 */
public class BaseController {
    public static void startPage() {
        HttpServletRequest request = ServletUtil.getRequest();
        int pageNum = 1;
        int pageSize = 5;
        if (request != null && request.getParameterMap().containsKey("pageNum") && request.getParameterMap().containsKey("pageSize")) {
            pageNum = Integer.parseInt(request.getParameter("pageNum"));
            pageSize = Integer.parseInt(request.getParameter("pageSize"));
        }
        PageHelper.startPage(pageNum, pageSize);
    }

    /**
     * 返回成功
     */
    public AjaxResult success() {
        return AjaxResult.success();
    }

    /**
     * 返回成功
     */
    public AjaxResult success(Object obj) {
        return AjaxResult.success(obj);
    }

    /**
     * 返回失败消息
     */
    public AjaxResult error() {
        return AjaxResult.error();
    }

    /**
     * 返回警告消息
     */
    public AjaxResult warn() {
        return AjaxResult.warn();
    }

    /**
     * 返回警告消息
     */
    public AjaxResult warn(String message) {
        return AjaxResult.warn(message);
    }

    /**
     * 返回成功消息
     */
    public AjaxResult success(String message) {
        return AjaxResult.success(message);
    }

    /**
     * 返回失败消息
     */
    public AjaxResult error(String message) {
        return AjaxResult.error(message);
    }

    public static AjaxResult success(List<?> dataList) {
        return AjaxResult.success("操作成功", dataList);
    }

    /**
     * 响应返回结果
     *
     * @param rows 影响行数
     * @return 操作结果
     */
    protected AjaxResult toAjax(int rows) {
        return rows > 0 ? AjaxResult.success() : AjaxResult.error();
    }

    /**
     * 响应返回结果
     *
     * @param result 结果
     * @return 操作结果
     */
    protected AjaxResult toAjax(boolean result) {
        return result ? success() : error();
    }

    protected String getUserId() {
        return DoloresUtils.getUserId();
    }

    protected String getUserToken() {
        return DoloresUtils.getUserToken();
    }

    protected String getUserSessionId() {
        HttpServletRequest request = ((ServletRequestAttributes) Objects.requireNonNull(RequestContextHolder.getRequestAttributes())).getRequest();
        return request.getSession().getId();
    }

    protected SysUser getUser() {
        return DoloresUtils.getUser();
    }
}
