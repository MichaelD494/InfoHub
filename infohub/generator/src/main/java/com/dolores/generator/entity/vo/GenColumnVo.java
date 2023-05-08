package com.dolores.generator.entity.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.io.Serializable;

/**
 * @author Michael
 * @date 2022/1/20 21:39
 */
@Data
public class GenColumnVo implements Serializable {
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
    @TableField(exist = false)
    private String genPrimaryKey;
}
