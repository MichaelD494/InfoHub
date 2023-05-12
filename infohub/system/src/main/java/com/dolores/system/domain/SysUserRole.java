package com.dolores.system.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 系统用户角色表
 * </p>
 *
 * @author dolores
 * @since 2021-09-09
 */
@Data
@Accessors(chain = true)
public class SysUserRole implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 表id
     */
    @TableId(type = IdType.AUTO)
    private Long id;
    /**
     * 系统用户id
     */
    private String userId;

    /**
     * 角色id
     */
    private Long roleId;
    /**
     * 生成时间
     */
    private Date createTime;


}
