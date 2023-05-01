package com.dolores.utils;

import jakarta.servlet.http.HttpServletRequest;
import org.apache.commons.lang3.StringUtils;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class IPUtils {
    /**
     * 获取本地IP
     */
    public static String getLocalIP() throws UnknownHostException {
        return InetAddress.getLocalHost().getHostAddress();
    }

    /**
     * 获取真实IP
     */
    public static String getRealIp(HttpServletRequest request) {
        String remoteIp = request.getHeader("X-Real-IP");
        if (StringUtils.isNotBlank(remoteIp) && !"unknown".equalsIgnoreCase(remoteIp)) {
            return remoteIp;
        }
        remoteIp = request.getHeader("X-Forwarded-For");
        if (StringUtils.isNotBlank(remoteIp) && !"unknown".equalsIgnoreCase(remoteIp)) {
            int index = remoteIp.indexOf(',');
            if (index != -1) {
                return remoteIp.substring(0, index);
            } else {
                return remoteIp;
            }
        }
        remoteIp = request.getHeader("Proxy-Client-IP");
        if (StringUtils.isNotBlank(remoteIp) && !"unknown".equalsIgnoreCase(remoteIp)) {
            return remoteIp;
        }
        remoteIp = request.getHeader("WL-Proxy-Client-IP");
        if (StringUtils.isNotBlank(remoteIp) && !"unknown".equalsIgnoreCase(remoteIp)) {
            return remoteIp;
        }
        remoteIp = request.getHeader("HTTP_CLIENT_IP");
        if (StringUtils.isNotBlank(remoteIp) && !"unknown".equalsIgnoreCase(remoteIp)) {
            return remoteIp;
        }
        remoteIp = request.getHeader("HTTP_X_FORWARDED_FOR");
        if (StringUtils.isNotBlank(remoteIp) && !"unknown".equalsIgnoreCase(remoteIp)) {
            int index = remoteIp.indexOf(',');
            if (index != -1) {
                return remoteIp.substring(0, index);
            } else {
                return remoteIp;
            }
        }
        remoteIp = request.getRemoteAddr();
        if (StringUtils.isNotBlank(remoteIp) && !"unknown".equalsIgnoreCase(remoteIp)) {
            return remoteIp;
        }
        return null;
    }
}