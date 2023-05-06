package com.dolores.framework.enums;


import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.IntStream;

/**
 * 系统资源枚举
 * 使用枚举实现的单例模式具有以下优势：
 * 线程安全：Java枚举类型的实例在创建时是线程安全的，因为它们是在类加载时由类加载器创建的，而类加载器保证了线程安全性。
 * 防止反射破坏：使用枚举实现的单例模式不能通过反射来创建多个实例，因为Java的枚举类型没有可访问的构造函数。
 * 自动支持序列化：Java枚举类型自动支持序列化和反序列化，无需编写特殊的序列化方法。这样可以防止反序列化时创建多个实例的问题。
 * 简洁的代码：枚举单例模式的代码简洁明了，易于阅读和理解。
 */
public enum SystemPathResource {

    PATH_RESOURCE;

    private final List<String> pathList;

    SystemPathResource() {
        pathList = new ArrayList<>();
        pathList.add("/login");
        pathList.add("/sys/login");
        pathList.add("/captcha");
        pathList.add("/static/**");
    }

    public List<String> getPathList() {
        IntStream.range(0, pathList.size()).forEach(index -> {
            String item = pathList.get(index);
            pathList.set(index, item);
        });
        return pathList;
    }

}
