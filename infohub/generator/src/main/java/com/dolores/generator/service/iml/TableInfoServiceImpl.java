package com.dolores.generator.service.iml;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.generator.entity.GenColumn;
import com.dolores.generator.mapper.TableInfoMapper;
import com.dolores.generator.service.ITableInfoService;
import org.springframework.stereotype.Service;

/**
 * @author dolores
 * @date 2021/10/20 10:19
 */
@Service
public class TableInfoServiceImpl extends ServiceImpl<TableInfoMapper, GenColumn> implements ITableInfoService {

}
