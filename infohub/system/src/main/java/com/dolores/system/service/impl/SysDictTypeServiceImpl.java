package com.dolores.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.system.domain.SysDictType;
import com.dolores.system.mapper.SysDictTypeMapper;
import com.dolores.system.service.ISysDictTypeService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author dolores
 * @date 2021-26-22 22:26:47
 */
@Service
public class SysDictTypeServiceImpl extends ServiceImpl<SysDictTypeMapper, SysDictType> implements ISysDictTypeService {
    @Override
    public List<SysDictType> queryList(SysDictType sysDictType) {
        return baseMapper.queryList(sysDictType);
    }
}
