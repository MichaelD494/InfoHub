package com.dolores.system.domain.dto;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

/**
 * @author Michael
 * @date 2022/1/16 17:11
 */
@Data
public class GenTableDto implements Serializable {
    private String tableName;
    private String tableComment;
    private Date updateTime;
    private Date createTime;
    @TableField(exist = false)
    private Map<String, Object> createDateMap;
    @TableField(exist = false)
    private Map<String, Object> updateDateMap;
}
