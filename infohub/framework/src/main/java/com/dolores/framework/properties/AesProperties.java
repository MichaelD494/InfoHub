package com.dolores.framework.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @author Michael
 * @date 2022/2/17 15:23
 */
@Data
@Component
@ConfigurationProperties(prefix = "aes")
public class AesProperties {
    /**
     * 前后端分离数据加密密钥
     */
    private String key;
}
