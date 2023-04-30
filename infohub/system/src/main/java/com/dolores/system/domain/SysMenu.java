package com.dolores.system.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author dolores
 * @date 2021/9/10 9:37
 */
@Data
@TableName("sys_menu")
public class SysMenu implements Serializable {
    @TableId(type = IdType.AUTO)
    private Long id;
    private String title;
    private Integer type;
    private String perms;
    private String icon;
    private Integer sort;
    private String path;
    private Long pid;
    private Date createTime;
    @TableField(exist = false)
    private List<SysMenu> children = new ArrayList<>();
}
