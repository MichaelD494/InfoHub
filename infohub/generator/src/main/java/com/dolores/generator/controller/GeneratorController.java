package com.dolores.generator.controller;

import cn.hutool.core.io.IoUtil;
import cn.hutool.core.map.MapUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.dolores.framework.core.controller.BaseController;
import com.dolores.framework.core.domain.AjaxResult;
import com.dolores.framework.domain.common.TableDataInfo;
import com.dolores.framework.utils.DoloresUtils;
import com.dolores.generator.entity.DBTable;
import com.dolores.generator.entity.GenColumn;
import com.dolores.generator.entity.GenTable;
import com.dolores.generator.entity.vo.GenTableVo;
import com.dolores.generator.service.IGenColumnService;
import com.dolores.generator.service.IGenTableService;
import com.dolores.system.domain.PageDetail;
import com.dolores.system.domain.dto.GenTableDto;
import com.dolores.utils.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;


/**
 * 代码生成器
 *
 * @author dolores
 * @date 2021/10/17 21:29
 */
@RestController
@RequestMapping("/generator")
@RequiredArgsConstructor
public class GeneratorController extends BaseController {
    private final IGenColumnService genColumnService;
    private final IGenTableService genTableService;


    /**
     * 代码生成
     *
     * @param tableNames 表名
     * @param response
     */
    @GetMapping("/generateCode")
    public void generatorCode(String tableNames, HttpServletResponse response) throws IOException {
        List<String> tableNameList = Arrays.asList(tableNames.split(","));
        List<GenTableVo> genTableVoList = genTableService.queryGenTableByNames(tableNameList);
        byte[] bytes = genTableService.downloadCode(genTableVoList);
        genCode(response, bytes);
    }

    /**
     * 生成zip文件
     */
    private void genCode(HttpServletResponse response, byte[] data) throws IOException {
        response.setHeader("content-type", "application/octet-stream");
        response.setContentType("application/octet-stream; charset=utf-8");
        response.addHeader("Content-Length", "" + data.length);
        response.setHeader(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=download.zip");
        response.setCharacterEncoding("utf-8");
        IoUtil.write(response.getOutputStream(), false, data);
    }

    @PreAuthorize("hasAuthority('dolores:generator:list')")
    @GetMapping("/list")
    public TableDataInfo list(GenTableDto dto) {
        LambdaQueryWrapper<GenTable> query = Wrappers.lambdaQuery(GenTable.class);
        query.select(GenTable::getTableId, GenTable::getTableName,
                GenTable::getTableComment, GenTable::getCreateBy,
                GenTable::getUpdateBy, GenTable::getUpdateTime,
                GenTable::getCreateTime).orderByDesc(GenTable::getCreateTime);
        if (StringUtils.isNotNull(dto)) {
            if (StringUtils.isNotEmpty(dto.getTableName())) {
                query.like(GenTable::getTableName, dto.getTableName());
            }
            if (StringUtils.isNotEmpty(dto.getTableComment())) {
                query.like(GenTable::getTableComment, dto.getTableComment());
            }
            if (StringUtils.isNotEmpty(MapUtil.getStr(dto.getCreateDateMap(), "startDate"))) {
                query.gt(GenTable::getCreateTime, dto.getCreateDateMap().get("startDate"));
            }
            if (StringUtils.isNotEmpty(MapUtil.getStr(dto.getCreateDateMap(), "endDate"))) {
                query.lt(GenTable::getCreateTime, dto.getCreateDateMap().get("endDate"));
            }
            if (StringUtils.isNotEmpty(MapUtil.getStr(dto.getUpdateDateMap(), "startDate"))) {
                query.gt(GenTable::getUpdateTime, dto.getUpdateDateMap().get("startDate"));
            }
            if (StringUtils.isNotEmpty(MapUtil.getStr(dto.getUpdateDateMap(), "endDate"))) {
                query.lt(GenTable::getUpdateTime, dto.getUpdateDateMap().get("endDate"));
            }
        }
        startPage();
        List<GenTable> genTableList = genTableService.list(query);
        return TableDataInfo.init(genTableList);
    }

    @GetMapping("/dbTableList")
    public TableDataInfo dbTableList(String tableName, String tableComment) {
        List<String> dbList = genTableService.queryTableList().stream().map(DBTable::getTableName).toList();
        LambdaQueryWrapper<GenTable> query = Wrappers.lambdaQuery(GenTable.class);
        query.select(GenTable::getTableName);
        List<String> tableNameList = genTableService.list(query).stream().map(GenTable::getTableName).toList();
        List<String> reduce = dbList.stream().filter(item -> !tableNameList.contains(item)).collect(Collectors.toList());
        startPage();
        List<GenTable> genTableList = genTableService.queryGenTableByDetail(tableName, tableComment, reduce);
        return TableDataInfo.init(genTableList);
    }

    @GetMapping("/importTable")
    public AjaxResult importTable(String tableNames) {
        List<String> tableNameList = Arrays.asList(tableNames.split(","));
        List<DBTable> dbTableList = genTableService.queryTableListByName(tableNameList);
        List<GenTable> saveList = new ArrayList<>();
        dbTableList.forEach(item -> {
            GenTable table = new GenTable();
            table.setTableName(item.getTableName());
            table.setTableComment(item.getTableComment());
            table.setCreateBy(DoloresUtils.getCurrentUserName());
            table.setEntityName(DoloresUtils.getEntityName(item.getTableName()));
            table.setModuleName(item.getTableComment());
            saveList.add(table);
        });
        genTableService.saveBatch(saveList);
        List<GenColumn> columnList = genColumnService.queryDBColumnListByName(tableNameList);
        genColumnService.saveBatch(columnList);
        return success();
    }


    @GetMapping("/tableInfoList")
    public AjaxResult tableInfoList(String tableName) {
        AjaxResult ajaxResult = success();
        List<String> tableNameList = Arrays.asList(tableName.split(","));
        List<GenColumn> tableInfoList = genColumnService.queryDBColumnListByName(tableNameList);
        LambdaQueryWrapper<GenTable> query = Wrappers.lambdaQuery(GenTable.class);
        query.eq(GenTable::getTableName, tableName).last("limit 1");
        GenTable info = genTableService.getOne(query);
        ajaxResult.put("generatorInfo", info);
        ajaxResult.put("tableName", tableName);
        ajaxResult.put("tableInfoList", tableInfoList);
        return ajaxResult;
    }

    /**
     * 同步
     *
     * @param tableName 表名
     * @return
     */
    @PostMapping("/syncCode")
    public AjaxResult syncCode(String tableName) {
        List<String> tableNameList = Arrays.asList(tableName.split(","));
        List<GenColumn> dbColumnList = genColumnService.queryDBColumnListByName(tableNameList);
        LambdaQueryWrapper<GenColumn> query = Wrappers.lambdaQuery(GenColumn.class);
        query.select(GenColumn::getId).in(GenColumn::getTableName, tableNameList);
        List<Long> idList = genColumnService.list(query).stream().map(GenColumn::getId).collect(Collectors.toList());
        genColumnService.removeBatchByIds(idList);
        return toAjax(genColumnService.saveBatch(dbColumnList));
    }

    public String subStr(String json) {
        int first = json.indexOf(",") + 1;
        return "{" + json.substring(first);
    }

    @PostMapping("/saveGeneratorInfo")
    public AjaxResult saveGeneratorInfo(GenTable generatorInfo) {
        LambdaQueryWrapper<GenTable> query = Wrappers.lambdaQuery(GenTable.class);
        query.eq(GenTable::getTableName, generatorInfo.getTableName()).last("limit 1");
        LambdaUpdateWrapper<GenTable> update = Wrappers.lambdaUpdate(GenTable.class);
        update
                .set(GenTable::getAuthor, generatorInfo.getAuthor())
                .set(GenTable::getEntityName, generatorInfo.getEntityName())
                .set(GenTable::getPath, generatorInfo.getPath())
                .set(GenTable::getModuleName, generatorInfo.getModuleName())
                .set(GenTable::getTableComment, generatorInfo.getTableComment())
                .set(GenTable::getUpdateTime, new Date())
                .eq(GenTable::getTableName, generatorInfo.getTableName());
        return toAjax(genTableService.update(update));
    }
}
