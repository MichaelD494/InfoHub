package com.dolores.framework.properties;

import com.dolores.framework.enums.CaptchaCategory;
import com.dolores.framework.enums.CaptchaType;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 验证码配置属性
 *
 * @author Michael
 * @date 2022/2/17 14:21
 */
@Data
@Component
@ConfigurationProperties(prefix = "captcha")
public class CaptchaProperties {
    /**
     * 验证码类型
     */
    private CaptchaType type;
    /**
     * 验证码类别
     */
    private CaptchaCategory category;
    /**
     * 数字验证码位数
     */
    private Integer numberLength;
    /**
     * 字符验证码长度
     */
    private Integer charLength;
}
