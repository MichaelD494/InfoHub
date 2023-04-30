package com.dolores.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dolores.system.domain.SysDictData;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * SysDictData Mapper 接口
 *
 * @author dolores
 * @date 2021-26-22 22:26:47
 */
@Repository
public interface SysDictDataMapper extends BaseMapper<SysDictData> {
    List<SysDictData> queryList(@Param("sysDictData") SysDictData sysDictData,@Param("dictType") String dictType);
}
