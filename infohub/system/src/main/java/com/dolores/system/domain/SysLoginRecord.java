package com.dolores.system.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Michael
 * @since 2022-02-18
 */
@Data
@TableName("sys_login_record")
public class SysLoginRecord implements Serializable {

    /**
     * 表id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 系统用户id
     */
    private Long sysUserId;
    /**
     * 系统用户名
     */
    private String sysUserName;
    /**
     * 登录ip
     */
    private String loginIp;
    /**
     * 操作系统
     */
    private String os;
    /**
     * 浏览器
     */
    private String browser;

    /**
     * 登录地
     */
    private String address;

    /**
     * 创建时间
     */
    private Date createTime;
}
