package com.dolores.system.domain.vo;

import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 系统菜单视图层
 */
@Data
@Accessors(chain = true)
public class SysMenuVo implements Serializable {
    private Long id;
    private String title;
    private Integer type;
    private String perms;
    private String icon;
    private Integer sort;
    private String path;
    private Long pid;
    private List<SysMenuVo> children = new ArrayList<>();
}
