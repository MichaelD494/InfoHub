package com.dolores.generator.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

/**
 * @author dolores
 * @date 2021/10/17 21:33
 */
@Data
public class DBTable implements Serializable {
    private String tableSchema;
    private String tableName;
    private String tableComment;
    private Date updateTime;
    private Date createTime;
    @TableField(exist = false)
    private Map<String, Object> createDateMap;
    @TableField(exist = false)
    private Map<String, Object> updateDateMap;
}
