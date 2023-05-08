package com.dolores.generator.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dolores.generator.entity.DBTable;
import com.dolores.generator.entity.GenColumn;

import java.util.List;

public interface IGenColumnService extends IService<GenColumn> {


    List<GenColumn> queryDBColumnListByName(List<String> tableNameList);

    List<DBTable> queryTableListByDetail(DBTable table);
}
