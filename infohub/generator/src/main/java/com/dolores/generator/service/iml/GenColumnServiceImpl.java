package com.dolores.generator.service.iml;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.generator.entity.GenColumn;
import com.dolores.generator.mapper.GenColumnMapper;
import com.dolores.generator.entity.DBTable;
import com.dolores.generator.service.IGenColumnService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author dolores
 * @date 2021/10/17 21:33
 */
@Service
public class GenColumnServiceImpl extends ServiceImpl<GenColumnMapper, GenColumn> implements IGenColumnService {
    @Override
    public List<GenColumn> queryDBColumnListByName(List<String> tableNameList) {
        return baseMapper.queryDBColumnListByName(tableNameList);
    }

    @Override
    public List<DBTable> queryTableListByDetail(DBTable table) {
        return baseMapper.queryTableListByDetail(table);
    }
}
