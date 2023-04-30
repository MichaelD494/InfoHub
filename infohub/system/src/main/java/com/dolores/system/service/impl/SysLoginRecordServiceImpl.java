package com.dolores.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.system.domain.SysLoginRecord;
import com.dolores.system.mapper.SysLoginRecordMapper;
import com.dolores.system.service.ISysLoginRecordService;
import org.springframework.stereotype.Service;

/**
 * @author Michael
 * @since 2022-02-18
 */
@Service
public class SysLoginRecordServiceImpl extends ServiceImpl<SysLoginRecordMapper, SysLoginRecord> implements ISysLoginRecordService {

    @Override
    public boolean removeAll() {
        return baseMapper.removeAll();
    }
}
