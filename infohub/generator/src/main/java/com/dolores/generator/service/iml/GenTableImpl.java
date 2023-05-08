package com.dolores.generator.service.iml;

import cn.hutool.core.io.IoUtil;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.dolores.generator.entity.DBTable;
import com.dolores.generator.entity.GenTable;
import com.dolores.generator.entity.vo.GenTableVo;
import com.dolores.generator.mapper.GenTableMapper;
import com.dolores.generator.service.IGenTableService;
import com.dolores.utils.VelocityInitializer;
import com.dolores.utils.VelocityUtils;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import static com.dolores.utils.VelocityUtils.getTemplateList;

/**
 * @author dolores
 * @date 2021/10/18 13:27
 */
@Service
public class GenTableImpl extends ServiceImpl<GenTableMapper, GenTable> implements IGenTableService {

    @Override
    public List<DBTable> queryTableList() {
        return baseMapper.queryTableList();
    }

    @Override
    public List<DBTable> queryTableListByName(List<String> tableNameList) {
        return baseMapper.queryTableListByName(tableNameList);
    }

    @Override
    public List<GenTable> queryGenTableByDetail(String tableName, String tableComment, List<String> reduce) {
        return baseMapper.queryGenTableByDetail(tableName, tableComment, reduce);
    }

    @Override
    public byte[] downloadCode(List<GenTableVo> genTableVoList) {
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ZipOutputStream zip = new ZipOutputStream(outputStream);
        genTableVoList.forEach(item -> {
            generatorCode(item, zip);
        });
        IOUtils.closeQuietly(zip);
        return outputStream.toByteArray();
    }

    @Override
    public List<GenTableVo> queryGenTableByNames(List<String> tableNames) {
        return baseMapper.queryGenTableByNames(tableNames);
    }

    /**
     * 生成代码
     */
    public void generatorCode(GenTableVo vo, ZipOutputStream zip) {
        VelocityInitializer.initVelocity();
        VelocityContext context = VelocityUtils.prepareContext(vo);
        //获取模板列表
        List<String> templateList = getTemplateList();
        templateList.forEach(item -> {
            //渲染模板
            StringWriter sw = new StringWriter();
            Template tpl = Velocity.getTemplate(item, Constants.UTF_8);
            tpl.merge(context, sw);
            try {
                ZipEntry zipEntry = new ZipEntry(VelocityUtils.getFileName(item, vo));
                //添加到zip
                zip.putNextEntry(zipEntry);
                IoUtil.write(zip, StandardCharsets.UTF_8, false, sw.toString());
                IoUtil.close(sw);
                zip.flush();
                zip.closeEntry();
            } catch (IOException e) {
                log.error("渲染模板失败，表名：" + vo.getTableName());
            }
        });
    }
}
