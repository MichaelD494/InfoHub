package com.dolores.framework.captcha;

import cn.hutool.captcha.generator.CodeGenerator;
import cn.hutool.core.math.Calculator;
import cn.hutool.core.util.CharUtil;
import cn.hutool.core.util.RandomUtil;
import org.apache.commons.lang3.StringUtils;

/**
 * 无符号计算生成器
 *
 * @author Michael
 * @date 2022/2/17 13:54
 */
public class UnsignedMathGenerator implements CodeGenerator {
    /**
     * 运算符
     */
    private static final String operators = "+-*";
    /**
     * 参与计算机最大长度
     */
    private final int numberLength;

    /**
     * 无参初始化构造器
     */
    public UnsignedMathGenerator() {
        this(2);
    }

    /**
     * 有参初始化构造器
     *
     * @param numberLength 参与计算最大数字位数
     */
    public UnsignedMathGenerator(int numberLength) {
        this.numberLength = numberLength;
    }

    @Override
    public String generate() {
        final int limit = getLimit();
        int min = RandomUtil.randomInt(limit);
        int max = RandomUtil.randomInt(min, limit);
        String number1 = Integer.toString(max);
        String number2 = Integer.toString(min);
        number1 = StringUtils.rightPad(number1, this.numberLength, CharUtil.SPACE);
        number2 = StringUtils.rightPad(number2, this.numberLength, CharUtil.SPACE);
        return number1 + RandomUtil.randomChar(operators) + number2 + "=";
    }

    @Override
    public boolean verify(String code, String userInputCode) {
        int result;
        try {
            result = Integer.parseInt(userInputCode);
        } catch (NumberFormatException e) {
            //用户输入非数字
            return false;
        }
        final int calculateResult = (int) Calculator.conversion(code);
        return result == calculateResult;
    }

    /**
     * 获取验证码长度
     *
     * @return 获取验证码长度
     */
    public int getLength() {
        return this.numberLength * 2 + 2;
    }

    public int getLimit() {
        return Integer.parseInt("1" + StringUtils.repeat('0', this.numberLength));
    }
}
