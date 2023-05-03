package com.dolores.framework.enums;

import cn.hutool.captcha.*;
import lombok.AllArgsConstructor;
import lombok.Getter;


/**
 * 验证码类别
 *
 * @author Michael
 */
@Getter
@AllArgsConstructor
public enum CaptchaCategory {

    /**
     * 线段干扰
     */
    LINE(LineCaptcha.class),

    /**
     * 圆圈干扰
     */
    CIRCLE(CircleCaptcha.class),

    /**
     * 扭曲干扰
     */
    SHEAR(ShearCaptcha.class);

    private final Class<? extends AbstractCaptcha> clazz;
}
