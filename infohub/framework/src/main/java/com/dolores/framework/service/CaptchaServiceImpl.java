package com.dolores.framework.service;

import cn.hutool.core.convert.Convert;
import com.dolores.framework.properties.CaptchaProperties;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

@Service
public class CaptchaServiceImpl implements ICaptchaService {

    private final CaptchaProperties captchaProperties;

    public CaptchaServiceImpl(CaptchaProperties captchaProperties) {
        this.captchaProperties = captchaProperties;
    }

    @Override
    public String getCodeResult(String code) {
        Integer numberLength = captchaProperties.getNumberLength();
        int a = Convert.toInt(StringUtils.substring(code, 0, numberLength).trim());
        char operator = code.charAt(numberLength);
        int b = Convert.toInt(StringUtils.substring(code, numberLength + 1, numberLength + 1 + numberLength).trim());
        return switch (operator) {
            case '*' -> Convert.toStr(a * b);
            case '+' -> Convert.toStr(a + b);
            case '-' -> Convert.toStr(a - b);
            default -> StringUtils.EMPTY;
        };
    }
}
