package com.dolores.system.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SysUser implements Serializable {
    /**
     * 系统用户id
     */
    @TableId(type = IdType.ASSIGN_UUID)
    private String sysUserId;

    /**
     * 系统用户名
     */
    private String userName;

    /**
     * 手机号
     */
    private String phone;
    /**
     * 盐
     */
    private String salt;
    /**
     * 系统用户密码
     */
    private String password;

    /**
     * 用户邮箱
     */
    private String email;

    /**
     * 性别(0.女 1.男)
     */
    private Integer gender;

    /**
     * 账号状态(0.未启用 1.已启用)
     */
    private Integer status;
    /**
     * 头像地址
     */
    private String avatar;

    /**
     * 用户登录ip
     */
    private String loginIp;

    /**
     * 用户登录时间
     */
    private Date loginDate;

    /**
     * 密码更新日期
     */
    private Date pwdUpdateDate;

    /**
     * 创建者
     */
    private String createBy;

    /**
     * 备注
     */
    private String remark;

    /**
     * 生成时间
     */
    private Date createTime;
}
