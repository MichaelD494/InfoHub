package com.dolores.generator.entity;

/**
 * 生成数据类型常量
 *
 * @author Michael
 * @date 2022/1/17 21:59
 */
public interface GenContacts {
    String[] DB_STR_TYPE = {"varchar", "longtext"};
    String DB_LONG_NUM_TYPE = "bigint";
    String DB_NUM_TYPE = "int";
    String DB_SHORT_NUM_TYPE = "tinyint";
    String DB_DECIMAL_NUM_TYPE = "decimal";
    String[] DB_DATE_TYPE = {"date", "datetime"};
    String STR = "String";
    String INTEGER = "Integer";
    String BYTE = "Byte";
    String LONG = "Long";
    String DATE = "Date";
    String DECIMAL = "BigDecimal";
}
