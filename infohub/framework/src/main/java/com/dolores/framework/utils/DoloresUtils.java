package com.dolores.framework.utils;

import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.framework.config.UserInfo;
import com.dolores.system.domain.SysUser;
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
     */
    public static SysUser getUser() {
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
    public static String getUserId() {
        return getUser().getSysUserId();
    }

    /**
     * 获取当前系统用户名
     *
     * @return
     */
    public static String getCurrentUserName() {
        return getUser().getUserName();
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
            assert out != null;
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
        StringBuilder str = new StringBuilder();
        for (int i = 0; i < arr.length; i++) {
            if (i == 0) {
                str = new StringBuilder(arr[i].toLowerCase());
                continue;
            }
            if (arr[i].equals("_")) {
                str.append(arr[i + 1].toUpperCase());
                i++;
                continue;
            }
            str.append(arr[i]);
        }
        return str.toString();
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
