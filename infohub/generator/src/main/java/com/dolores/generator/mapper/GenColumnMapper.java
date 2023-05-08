package com.dolores.generator.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dolores.generator.entity.DBTable;
import com.dolores.generator.entity.GenColumn;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author dolores
 * @date 2021/10/17 21:32
 */
@Repository
public interface GenColumnMapper extends BaseMapper<GenColumn> {


    List<GenColumn> queryDBColumnListByName(@Param("tableNameList") List<String> tableNameList);

    List<DBTable> queryTableListByDetail(DBTable table);
}
