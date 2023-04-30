package com.dolores.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.dolores.system.domain.SysDictData;

import java.util.List;

/**
 * @author dolores
 * @date 2021-26-22 22:26:47
 */

public interface ISysDictDataService extends IService<SysDictData> {
    List<SysDictData> queryList(SysDictData sysDictData, String dictType);
}
