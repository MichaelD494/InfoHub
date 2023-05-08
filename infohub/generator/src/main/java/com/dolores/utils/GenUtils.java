package com.dolores.utils;

import com.dolores.generator.entity.GenColumn;
import com.dolores.generator.entity.GenTable;
import org.apache.velocity.app.Velocity;

import java.util.List;
import java.util.Properties;

/**
 * @author Michael
 * @date 2022/1/11 13:14
 */
public class GenUtils {

    public static void init(GenTable genTable, List<GenColumn> genColumnList) {
        // 设置velocity资源加载器
        Properties properties = new Properties();
        properties.put("file.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
        Velocity.init(properties);
        //加载模板
        // Template template = Velocity.getTemplate("vm/entity.java.vm");
        // FileWriter fw = null;
        // try {
        //     fw = new FileWriter("C:\\Users\\PC\\Desktop\\" + genTable.getEntityName() + ".java");
        //     //合并数据
        //     template.merge(context, fw);
        //     //释放资源
        //     fw.close();
        // } catch (IOException e) {
        //     e.printStackTrace();
        // }
    }

}
