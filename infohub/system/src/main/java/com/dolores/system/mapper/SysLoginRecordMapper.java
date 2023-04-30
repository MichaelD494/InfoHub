package com.dolores.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dolores.system.domain.SysLoginRecord;
import org.springframework.stereotype.Repository;

/**
 * @author Michael
 * @since 2022-02-18
 */
@Repository
public interface SysLoginRecordMapper extends BaseMapper<SysLoginRecord> {
    boolean removeAll();
}
