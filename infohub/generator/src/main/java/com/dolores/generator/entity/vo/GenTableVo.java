package com.dolores.generator.entity.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author Michael
 * @date 2022/1/20 21:39
 */
@Data
public class GenTableVo implements Serializable {
    private String tableName;
    private String tableComment;
    private String entityName;
    private String pageTitle;
    private String author;
    private String moduleName;
    List<GenColumnVo> genColumnVoList;
}
