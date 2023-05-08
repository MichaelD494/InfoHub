package com.dolores.generator.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dolores.generator.entity.DBTable;
import com.dolores.generator.entity.GenTable;
import com.dolores.generator.entity.vo.GenTableVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GenTableMapper extends BaseMapper<GenTable> {
    List<DBTable> queryTableList();

    List<DBTable> queryTableListByName(List<String> tableNameList);

    List<GenTable> queryGenTableByDetail(@Param("tableName") String tableName, @Param("tableComment") String tableComment,
                                         @Param("reduce") List<String> reduce);

    List<GenTableVo> queryGenTableByNames(List<String> tableNames);
}
