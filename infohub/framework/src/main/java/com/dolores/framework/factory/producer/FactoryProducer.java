package com.dolores.framework.factory.producer;

import com.dolores.framework.factory.subFactory.VerifyRequestFactory;

/**
 * 工厂生产者
 */
public class FactoryProducer {
    /**
     * 根据条件获取指定工厂
     */
    public static Object getFactory(String factoryName) {
        if (factoryName.equalsIgnoreCase("VerifyRequestFactory")) {
            return new VerifyRequestFactory();
        }
        return null;
    }
}
