package com.dolores.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dolores.system.domain.SysDictType;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * SysDictType Mapper 接口
 *
 * @author dolores
 * @date 2021-26-22 22:26:47
 */
@Repository
public interface SysDictTypeMapper extends BaseMapper<SysDictType> {
    List<SysDictType> queryList(SysDictType sysDictType);
}
