package com.dolores.generator.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import lombok.Data;

import java.io.Serializable;

/**
 * @author dolores
 * @date 2021/10/17 21:57
 */
@Data
@JsonPropertyOrder({"id", "tableName", "columnName", "isNullable", "columnType", "columnKey", "columnComment", "entityColumnType"})
public class GenColumn implements Serializable {
    @TableId(type = IdType.AUTO)
    private Long id;
    private String tableName;
    private String columnName;
    private String isNullable;
    private String columnType;
    private String columnKey;
    private String columnComment;
    /**
     * 实体类数据类型(1.Long 2.Integer 3.Int 4.String 5.Date 6.BigDecimal)
     */
    private String entityColumnType;
    /**
     * 代码生成主键名称
     */
    @TableField(exist = false)
    private String genPrimaryKey;
}
