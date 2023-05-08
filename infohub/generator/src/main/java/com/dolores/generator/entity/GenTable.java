package com.dolores.generator.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author dolores
 * @date 2021/10/18 13:23
 */
@Data
public class GenTable implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer tableId;
    private String tableName;
    private String tableComment;
    private String entityName;
    private String author;
    private String moduleName;
    private String path;
    private String updateBy;
    private Date updateTime;
    private String createBy;
    private Date createTime;
}
