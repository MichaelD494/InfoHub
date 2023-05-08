package com.dolores.generator.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dolores.generator.entity.DBTable;
import com.dolores.generator.entity.GenTable;
import com.dolores.generator.entity.vo.GenTableVo;

import java.util.List;

public interface IGenTableService extends IService<GenTable> {
    List<DBTable> queryTableList();

    List<DBTable> queryTableListByName(List<String> tableNameList);

    List<GenTable> queryGenTableByDetail(String tableName, String tableComment, List<String> reduce);

    byte[] downloadCode(List<GenTableVo> genTableVoList);

    List<GenTableVo> queryGenTableByNames(List<String> tableNames);
}
