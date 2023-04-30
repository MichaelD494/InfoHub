package com.dolores.system.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

/**
 * @author dolores
 * @date 2021-26-22 22:26:47
 */
@Data
@TableName("sys_dict_type")
public class SysDictType implements Serializable {
    @TableId(type = IdType.AUTO)
    /**字典类型id */
    private Long dictId;
    /**
     * 字典类型名称
     */
    private String dictName;
    /**
     * 字典类型
     */
    private String dictType;
    /**
     * 状态(0.关闭 1.启用)
     */
    private Byte status;
    /**
     * 更新者
     */
    private String updateBy;
    /**
     * 更新时间
     */
    private Date updateTime;
    /**
     * 创建者
     */
    private String createBy;
    /**
     * 备注
     */
    private String remark;
    /**
     * 创建时间
     */
    private Date createTime;
    @TableField(exist = false)
    private Map<String, Object> createDateMap;
}
