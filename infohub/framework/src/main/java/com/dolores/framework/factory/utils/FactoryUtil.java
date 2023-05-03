package com.dolores.framework.factory.utils;

import com.dolores.framework.factory.producer.FactoryProducer;
import com.dolores.framework.factory.subFactory.VerifyRequestFactory;
import org.springframework.stereotype.Component;

/**
 * 工厂工具
 */
@Component
public class FactoryUtil {
    /**
     * 获取工厂
     *
     * @param factoryName 工厂名
     * @param toolName    工具名
     */
    public static Object getFactory(String factoryName, String toolName) {
        //通过工厂名称从工厂生产者动态获取目标工厂
        Object dynamicFactory = FactoryProducer.getFactory(factoryName);
        if (dynamicFactory != null) {
            switch (factoryName) {
                case "VerifyRequestFactory":
                    VerifyRequestFactory verifyRequestFactory = (VerifyRequestFactory) dynamicFactory;
                    return verifyRequestFactory.getVerifyRequestTool(toolName);
            }
        } else {
            throw new RuntimeException("工厂不存在");
        }
        throw new RuntimeException("工厂初始化失败");
    }
}
