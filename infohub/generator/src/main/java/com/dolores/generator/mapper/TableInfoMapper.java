package com.dolores.generator.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dolores.generator.entity.GenColumn;
import org.springframework.stereotype.Repository;

@Repository
public interface TableInfoMapper extends BaseMapper<GenColumn> {

}
