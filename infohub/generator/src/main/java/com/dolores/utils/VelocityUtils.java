package com.dolores.utils;

import com.dolores.config.GenConfig;
import com.dolores.framework.utils.DoloresUtils;
import com.dolores.generator.entity.GenContacts;
import com.dolores.generator.entity.vo.GenColumnVo;
import com.dolores.generator.entity.vo.GenTableVo;
import org.apache.velocity.VelocityContext;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.stream.IntStream;

/**
 * @author Michael
 * @date 2022/1/20 20:56
 */
public class VelocityUtils {

    /**
     * 准备作用域
     */
    public static VelocityContext prepareContext(GenTableVo vo) {
        //创建velocity容器
        VelocityContext context = new VelocityContext();
        genCommon(context, vo);
        genInfo(context, vo, vo.getGenColumnVoList());
        return context;
    }

    /**
     * @param context    velocity作用域
     * @param genTableVo 生成表vo
     */
    public static void genCommon(VelocityContext context, GenTableVo genTableVo) {
        if (StringUtils.isNotEmpty(genTableVo.getAuthor())) {
            context.put("author", genTableVo.getAuthor());
        } else {
            context.put("author", GenConfig.getAuthor());
        }
    }

    /**
     * 生成实体类
     *
     * @param context
     * @param genTableVo
     * @param genColumnVoList
     */
    public static void genInfo(VelocityContext context, GenTableVo genTableVo, List<GenColumnVo> genColumnVoList) {
        IntStream.range(0, genColumnVoList.size()).forEach(index -> {
            GenColumnVo item = genColumnVoList.get(index);
            String replaceColumnName = DoloresUtils.replaceColumnName(item.getColumnName());
            if (index == 0) {   //索引0值为主键
                item.setGenPrimaryKey(item.getColumnName());
                context.put("primaryKey", replaceColumnName);
            }
            item.setColumnName(replaceColumnName);
            //替换数据库字段类型
            String columnType = replaceDBType(item.getColumnType());
            if (GenContacts.DB_LONG_NUM_TYPE.equals(columnType)) {
                item.setEntityColumnType(GenContacts.LONG);
            } else if (isContains(columnType, GenContacts.DB_STR_TYPE)) {
                item.setEntityColumnType(GenContacts.STR);
            } else if (GenContacts.DB_SHORT_NUM_TYPE.equals(columnType)) {
                item.setEntityColumnType(GenContacts.BYTE);
            } else if (GenContacts.DB_NUM_TYPE.equals(columnType)) {
                item.setEntityColumnType(GenContacts.INTEGER);
            } else if (GenContacts.DB_DECIMAL_NUM_TYPE.equals(columnType)) {
                item.setEntityColumnType(GenContacts.DECIMAL);
            } else if (isContains(columnType, GenContacts.DB_DATE_TYPE)) {
                item.setEntityColumnType(GenContacts.DATE);
            }
        });
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        context.put("packageName", GenConfig.getPackageName());
        context.put("createTime", dateFormat.format(new Date()));
        context.put("humpEntityName", DoloresUtils.replaceColumnName(genTableVo.getEntityName()));
        context.put("propertyList", genColumnVoList);
        context.put("tableComment", genTableVo.getTableComment());
        context.put("tableName", genTableVo.getTableName());
        context.put("entityName", genTableVo.getEntityName());
        context.put("pageTitle", genTableVo.getPageTitle());
    }

    /**
     * 获取模板信息
     */
    public static List<String> getTemplateList() {
        List<String> templateList = new ArrayList<>();
        templateList.add("vm/java/entity.java.vm");
        templateList.add("vm/java/mapper.java.vm");
        templateList.add("vm/java/service.java.vm");
        templateList.add("vm/java/serviceImpl.java.vm");
        templateList.add("vm/java/controller.java.vm");
        templateList.add("vm/xml/mapper.xml.vm");
        templateList.add("vm/html/ui.html.vm");
        return templateList;
    }

    /**
     * 获取文件名
     */
    public static String getFileName(String template, GenTableVo genTableVo) {
        // 文件名称
        String fileName = "";
        //驼峰命命名实体类
        String humpEntityName = DoloresUtils.replaceColumnName(genTableVo.getEntityName());
        //模块名
        String moduleName = humpEntityName + "/java/";
        //资源名
        String resourceName = humpEntityName + "/resource/";
        if (template.contains("entity.java.vm")) {
            fileName = moduleName + genTableVo.getEntityName() + ".java";
        } else if (template.contains("mapper.java.vm")) {
            fileName = moduleName + genTableVo.getEntityName() + "Mapper.java";
        } else if (template.contains("service.java.vm")) {
            fileName = moduleName + "I" + genTableVo.getEntityName() + "Service.java";
        } else if (template.contains("serviceImpl.java.vm")) {
            fileName = moduleName + genTableVo.getEntityName() + "ServiceImpl.java";
        } else if (template.contains("controller.java.vm")) {
            fileName = moduleName + genTableVo.getEntityName() + "Controller.java";
        } else if (template.contains("mapper.xml.vm")) {
            fileName = resourceName + genTableVo.getEntityName() + "Mapper.xml";
        } else if (template.contains("ui.html.vm")) {
            fileName = resourceName + humpEntityName + ".html";
        }
        return fileName;
    }

    /**
     * 检测集合是否包含数据类型
     *
     * @param targetValue 目标值
     * @param dataTypeArr 数据类型数组
     * @return
     */
    public static boolean isContains(String targetValue, String[] dataTypeArr) {
        return Arrays.asList(dataTypeArr).contains(targetValue);
    }

    /**
     * 替换数据库数据类型
     * bigint(32) -> bigint
     *
     * @param dbType 数据类型
     * @return
     */
    public static String replaceDBType(String dbType) {
        int index = dbType.indexOf("(");
        if (index < 0) {
            return dbType;
        }
        return dbType.substring(0, index);
    }
}
