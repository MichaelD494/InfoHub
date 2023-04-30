package com.dolores.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.system.domain.SysDictData;
import com.dolores.system.mapper.SysDictDataMapper;
import com.dolores.system.service.ISysDictDataService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author dolores
 * @date 2021-26-22 22:26:47
 */
@Service
public class SysDictDataServiceImpl extends ServiceImpl<SysDictDataMapper, SysDictData> implements ISysDictDataService {
    @Override
    public List<SysDictData> queryList(SysDictData sysDictData, String dictType) {
        return baseMapper.queryList(sysDictData,dictType);
    }
}
