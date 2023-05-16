package com.dolores.framework.domain.common;

import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.List;

@Component
public class TableDataInfo implements Serializable {

    private int code;
    private String msg;

    private PageInfo<?> pageInfo;

    public static TableDataInfo init(List<?> dataList) {
        TableDataInfo tableDataInfo = new TableDataInfo();
        PageInfo<?> pageInfo = new PageInfo<>(dataList);
        tableDataInfo
                .setPageInfo(pageInfo)
                .setCode(200)
                .setMsg("获取数据成功");
        return tableDataInfo;
    }

    public int getCode() {
        return code;
    }

    public PageInfo<?> getPageInfo() {
        return pageInfo;
    }

    public TableDataInfo setPageInfo(PageInfo<?> pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public TableDataInfo setCode(int code) {
        this.code = code;
        return this;
    }

    public String getMsg() {
        return msg;
    }

    public TableDataInfo setMsg(String msg) {
        this.msg = msg;
        return this;
    }

}
