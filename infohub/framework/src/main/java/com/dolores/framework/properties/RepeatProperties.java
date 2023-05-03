package com.dolores.framework.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 重复提交 属性配置
 *
 * @author Michael
 * @date 2022/2/19 13:40
 */
@Data
@Component
@ConfigurationProperties(prefix = "repeat-submit")
public class RepeatProperties {
    /**
     * 间隔时间(毫秒)
     */
    private int interval;
}
