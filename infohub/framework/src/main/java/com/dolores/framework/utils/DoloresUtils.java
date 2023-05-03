package com.dolores.framework.utils;

import com.dolores.common.core.domain.AjaxResult;
import com.dolores.framework.config.UserInfo;
import com.dolores.system.domain.SysUser;
import com.dolores.utils.MD5Encode;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.context.SecurityContextHolder;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * 通用工具类
 *
 * @author Michael
 * @date 2022/1/7 23:21
 */
public class DoloresUtils {
    /**
     * 获取当前系统用户对象
     *
     * @return
     */
    public static SysUser getCurrentUser() {
        UserInfo userInfo = (UserInfo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return userInfo.getSysUser();
    }

    /**
     * 获取当前系统用户Token
     *
     * @return
     */
    public static String getUserToken() {
        UserInfo userInfo = (UserInfo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return userInfo.getToken();
    }

    /**
     * 获取当前系统用户Id
     *
     * @return
     */
    public static String getCurrentUserId() {
        return getCurrentUser().getSysUserId();
    }

    /**
     * 获取当前系统用户名
     *
     * @return
     */
    public static String getCurrentUserName() {
        return getCurrentUser().getUserName();
    }

    /**
     * 获取当前系统用户sessionId
     *
     * @return
     */
    public static String getUserSessionId() {
        UserInfo userInfo = (UserInfo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return userInfo.getSessionId();
    }

    /**
     * 密码加密
     *
     * @param pwd 需要加密的密码
     * @return encodeArr [0] = 盐值 [1] = 最终加密密码
     */
    public static String[] encode(String pwd) {
        String[] encodeArr = new String[2];
        String salt = MD5Encode.createSaltValue();
        encodeArr[0] = salt;
        String md5EncodePwd = MD5Encode.md5EncodePwd(pwd);
        encodeArr[1] = MD5Encode.getFinalPwd(salt, md5EncodePwd);
        return encodeArr;
    }

    /**
     * 响应打印
     *
     * @param response
     * @param type
     * @param msg
     */
    public static void responsePrint(HttpServletResponse response, AjaxResult.Type type, String msg) {
        AjaxResult ajaxResult = new AjaxResult(type, msg);
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = null;
        try {
            ObjectMapper mapper = new ObjectMapper();
            out = response.getWriter();
            out.write(mapper.writeValueAsString(ajaxResult));
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            out.flush();
            out.close();
        }
    }

    /**
     * 将数据库字段转成驼峰命名
     *
     * @param columnName
     * @return
     */
    public static String replaceColumnName(String columnName) {
        int index = columnName.indexOf("_") + 1;
        if (index == 2) {
            String replace = columnName.substring(index);
            String cap = replace.substring(0, 1).toLowerCase();
            return cap + replace.substring(1);
        }
        char[] chars = columnName.toCharArray();
        String[] arr = new String[chars.length];
        for (int i = 0; i < chars.length; i++) {
            arr[i] = String.valueOf(chars[i]);
        }
        String str = "";
        for (int i = 0; i < arr.length; i++) {
            if (i == 0) {
                str = arr[i].toLowerCase();
                continue;
            }
            if (arr[i].equals("_")) {
                str += arr[i + 1].toUpperCase();
                i++;
                continue;
            }
            str += arr[i];
        }
        return str;
    }

    /**
     * 获取实体类对象名
     *
     * @param tableName
     * @return
     */
    public static String getEntityName(String tableName) {
        int index = tableName.indexOf("_") + 1;
        if (index == 2) {
            String replace = tableName.substring(index);
            String cap = replace.substring(0, 1).toUpperCase();
            return cap + replace.substring(1);
        }
        char[] chars = tableName.toCharArray();
        String[] arr = new String[chars.length];
        for (int i = 0; i < chars.length; i++) {
            arr[i] = String.valueOf(chars[i]);
        }
        String str = "";
        for (int i = 0; i < arr.length; i++) {
            if (i == 0) {
                str = arr[i].toUpperCase();
                continue;
            }
            if (arr[i].equals("_")) {
                str += arr[i + 1].toUpperCase();
                i++;
                continue;
            }
            str += arr[i];
        }
        return str;
    }
}
