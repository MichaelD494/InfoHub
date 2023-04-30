package com.dolores.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dolores.system.domain.SysLoginRecord;

/**
 * @author Michael
 * @since 2022-02-18
 */
public interface ISysLoginRecordService extends IService<SysLoginRecord> {
    boolean removeAll();
}
