package com.dolores.system.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author dolores
 * @date 2021-26-22 22:26:47
 */
@Data
@TableName("sys_dict_data")
public class SysDictData implements Serializable {
    @TableId(type = IdType.AUTO)
	/**字典编码 */
	private Long	dictCode;
	/**排序 */
	private Integer	dictSort;
	/**字典标签 */
	private String	dictLabel;
	/**字典键值 */
	private String	dictValue;
	/**字典类型 */
	private String	dictType;
	/**是否默认(0.否 1.是) */
	private Integer	isDefault;
	/**状态(0.关闭 1.启用) */
	private Integer	status;
	/**创建者 */
	private String	createBy;
	/**更新者 */
	private String	updateBy;
	/**更新时间 */
	private Date updateTime;
	/**备注 */
	private String	remark;
	/**创建时间 */
	private Date	createTime;
}
