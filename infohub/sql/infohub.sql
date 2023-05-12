/*
 Navicat MySQL Data Transfer

 Source Server         : tx
 Source Server Type    : MySQL
 Source Server Version : 80026 (8.0.26)
 Source Host           : 101.33.208.213:3306
 Source Schema         : infohub

 Target Server Type    : MySQL
 Target Server Version : 80026 (8.0.26)
 File Encoding         : 65001

 Date: 06/05/2023 10:39:17
*/


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for black_jack_record
-- ----------------------------
DROP TABLE IF EXISTS `black_jack_record`;
CREATE TABLE `black_jack_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '表id',
  `current_card` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发牌值',
  `card_num` int NULL DEFAULT NULL COMMENT '牌数',
  `probability` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '概率',
  `black_jack_round_id` bigint NULL DEFAULT NULL COMMENT '场数id',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录生成者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '21点数据记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of black_jack_record
-- ----------------------------
INSERT INTO `black_jack_record` VALUES (1, 'A', 18, '11.32%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (2, '2', 18, '12.41%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (3, '3', 9, '5.84%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (4, '4', 16, '9.46%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (5, '5', 9, '6.38%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (6, '6', 5, '3.70%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (7, '7', 7, '5.22%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (8, '8', 14, '10.14%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (9, '9', 10, '6.71%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (10, '10', 6, '4.28%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (11, 'J', 6, '4.31%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (12, 'Q', 9, '6.08%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (13, 'K', 6, '4.37%', 1, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_record` VALUES (14, 'A', 7, '5.60%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (15, '2', 10, '7.35%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (16, '3', 10, '8.19%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (17, '4', 7, '5.46%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (18, '5', 11, '9.24%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (19, '6', 9, '7.14%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (20, '7', 6, '4.72%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (21, '8', 7, '5.38%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (22, '9', 9, '6.97%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (23, '10', 10, '8.06%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (24, 'J', 8, '6.95%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (25, 'Q', 13, '8.78%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (26, 'K', 7, '5.93%', 2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_record` VALUES (27, 'A', 12, '7.10%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (28, '2', 11, '6.58%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (29, '3', 12, '7.74%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (30, '4', 14, '9.09%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (31, '5', 14, '8.86%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (32, '6', 9, '5.66%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (33, '7', 10, '5.68%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (34, '8', 11, '6.66%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (35, '9', 11, '7.00%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (36, '10', 12, '7.31%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (37, 'J', 12, '7.40%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (38, 'Q', 12, '7.69%', 3, 'admin', '2022-02-25 08:17:15');
INSERT INTO `black_jack_record` VALUES (39, 'K', 13, '7.73%', 3, 'admin', '2022-02-25 08:17:15');

-- ----------------------------
-- Table structure for black_jack_round_record
-- ----------------------------
DROP TABLE IF EXISTS `black_jack_round_record`;
CREATE TABLE `black_jack_round_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '表id',
  `remain_card` int NULL DEFAULT NULL COMMENT '剩余牌数',
  `strategy` int NULL DEFAULT NULL COMMENT '策略值',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录生成者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '21点场数记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of black_jack_round_record
-- ----------------------------
INSERT INTO `black_jack_round_record` VALUES (1, 133, -12, 'admin', '2022-02-25 07:42:08');
INSERT INTO `black_jack_round_record` VALUES (2, 114, -2, 'admin', '2022-02-25 08:02:52');
INSERT INTO `black_jack_round_record` VALUES (3, 153, 1, 'admin', '2022-02-25 08:17:15');

-- ----------------------------
-- Table structure for gen_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_column`;
CREATE TABLE `gen_column`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名称s',
  `column_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段名称',
  `is_nullable` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为空',
  `column_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `column_key` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键列',
  `column_comment` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段注释',
  `entity_column_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实体类数据类型',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '生成列信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_column
-- ----------------------------
INSERT INTO `gen_column` VALUES (1, 'gen_column', 'id', 'NO', 'bigint', 'PRI', '主键id', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (2, 'gen_column', 'table_name', 'YES', 'varchar(100)', '', '表名称s', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (3, 'gen_column', 'column_name', 'YES', 'varchar(50)', '', '字段名称', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (4, 'gen_column', 'is_nullable', 'YES', 'varchar(10)', '', '是否为空', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (5, 'gen_column', 'column_type', 'YES', 'varchar(30)', '', '字段类型', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (6, 'gen_column', 'column_key', 'YES', 'varchar(3)', '', '主键列', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (7, 'gen_column', 'column_comment', 'YES', 'varchar(300)', '', '字段注释', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (8, 'gen_column', 'entity_column_type', 'YES', 'varchar(50)', '', '实体类数据类型', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (9, 'gen_column', 'create_time', 'YES', 'datetime', '', '创建时间', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (10, 'gen_table', 'table_id', 'NO', 'bigint', 'PRI', '表id', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (11, 'gen_table', 'table_name', 'YES', 'varchar(200)', '', '表名称', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (12, 'gen_table', 'table_comment', 'YES', 'varchar(300)', '', '表注释', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (13, 'gen_table', 'author', 'YES', 'varchar(50)', '', '作者', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (14, 'gen_table', 'entity_name', 'YES', 'varchar(100)', '', '实体类名称', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (15, 'gen_table', 'module_name', 'YES', 'varchar(100)', '', '模块名', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (16, 'gen_table', 'path', 'YES', 'varchar(500)', '', '下载路径', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (17, 'gen_table', 'update_by', 'YES', 'varchar(100)', '', '更新者', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (18, 'gen_table', 'update_time', 'YES', 'datetime', '', '更新时间', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (19, 'gen_table', 'create_by', 'YES', 'varchar(50)', '', '创建者', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (20, 'gen_table', 'create_time', 'YES', 'datetime', '', '创建时间', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (21, 'sys_menu', 'id', 'NO', 'bigint', 'PRI', '菜单id', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (22, 'sys_menu', 'title', 'YES', 'varchar(15)', '', '标题', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (23, 'sys_menu', 'path', 'YES', 'varchar(255)', '', '路径', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (24, 'sys_menu', 'type', 'YES', 'tinyint(1)', '', '类型(1.菜单 2.目录 3.按钮)', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (25, 'sys_menu', 'perms', 'YES', 'varchar(255)', '', '权限字符', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (26, 'sys_menu', 'sort', 'YES', 'int', '', '排序', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (27, 'sys_menu', 'pid', 'YES', 'bigint', '', '父级id', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (28, 'sys_menu', 'create_time', 'YES', 'datetime', '', '生成时间', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (29, 'sys_role', 'role_id', 'NO', 'bigint', 'PRI', '角色id', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (30, 'sys_role', 'role_name', 'YES', 'varchar(15)', '', '角色名称', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (31, 'sys_role', 'role_key', 'YES', 'varchar(32)', '', '用户权限字符', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (32, 'sys_role', 'sort', 'YES', 'int', '', '排序', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (33, 'sys_role', 'status', 'YES', 'tinyint(1)', '', '角色状态(0.未启用 1.已启用)', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (34, 'sys_role', 'update_by', 'YES', 'varchar(32)', '', '更新者', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (35, 'sys_role', 'create_by', 'YES', 'varchar(64)', '', '创建者', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (36, 'sys_role', 'update_time', 'YES', 'datetime', '', '更新时间', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (37, 'sys_role', 'remark', 'YES', 'varchar(32)', '', '备注', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (38, 'sys_role', 'create_time', 'YES', 'datetime', '', '生成时间', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (39, 'sys_user', 'user_id', 'NO', 'bigint', 'PRI', '系统用户id', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (40, 'sys_user', 'user_name', 'YES', 'varchar(15)', '', '系统用户名', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (41, 'sys_user', 'user_phone', 'YES', 'varchar(15)', '', '系统用户手机号', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (42, 'sys_user', 'salt', 'YES', 'varchar(255)', '', '盐', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (43, 'sys_user', 'password', 'YES', 'varchar(255)', '', '系统用户密码', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (44, 'sys_user', 'email', 'YES', 'varchar(32)', '', '用户邮箱', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (45, 'sys_user', 'gender', 'YES', 'tinyint(1)', '', '性别(0.女 1.男)', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (46, 'sys_user', 'status', 'YES', 'tinyint(1)', '', '账号状态(0.未启用 1.已启用)', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (47, 'sys_user', 'avatar', 'YES', 'varchar(500)', '', '头像路径', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (48, 'sys_user', 'login_ip', 'YES', 'varchar(50)', '', '用户登录ip', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (49, 'sys_user', 'login_date', 'YES', 'datetime', '', '用户登录时间', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (50, 'sys_user', 'pwd_update_date', 'YES', 'datetime', '', '密码更新日期', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (51, 'sys_user', 'create_time', 'YES', 'datetime', '', '生成时间', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (52, 'sys_user', 'remark', 'YES', 'varchar(255)', '', '备注', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (53, 'sys_user', 'create_by', 'YES', 'varchar(32)', '', '创建者', NULL, '2022-01-22 10:51:12');
INSERT INTO `gen_column` VALUES (54, 'm_user', 'user_id', 'NO', 'varchar(100)', 'PRI', '用户id', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (55, 'm_user', 'user_name', 'YES', 'varchar(15)', '', '用户名', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (56, 'm_user', 'user_phone', 'YES', 'varchar(15)', '', '用户手机号', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (57, 'm_user', 'user_email', 'YES', 'varchar(30)', '', '用户邮箱', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (58, 'm_user', 'create_time', 'YES', 'datetime', '', '生成时间', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (59, 'schedule_job', 'job_id', 'NO', 'bigint', 'PRI', '任务id', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (60, 'schedule_job', 'bean_name', 'YES', 'varchar(200)', '', 'spring bean名称', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (61, 'schedule_job', 'method_name', 'YES', 'varchar(100)', '', '方法名', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (62, 'schedule_job', 'params', 'YES', 'varchar(2000)', '', '参数', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (63, 'schedule_job', 'cron_expression', 'YES', 'varchar(100)', '', 'cron表达式', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (64, 'schedule_job', 'status', 'YES', 'tinyint(1)', '', '任务状态  0：暂停  1：正常', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (65, 'schedule_job', 'remark', 'YES', 'varchar(255)', '', '备注', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (66, 'schedule_job', 'create_time', 'YES', 'datetime', '', '创建时间', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (67, 'sys_dict_type', 'dict_id', 'NO', 'bigint', 'PRI', '字典类型id', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (68, 'sys_dict_type', 'dict_name', 'YES', 'varchar(15)', '', '字典类型名称', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (69, 'sys_dict_type', 'dict_type', 'YES', 'varchar(32)', '', '字典类型', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (70, 'sys_dict_type', 'status', 'YES', 'tinyint(1)', '', '状态(0.关闭 1.启用)', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (71, 'sys_dict_type', 'update_by', 'YES', 'varchar(64)', '', '更新者', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (72, 'sys_dict_type', 'update_time', 'YES', 'datetime', '', '更新时间', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (73, 'sys_dict_type', 'create_by', 'YES', 'varchar(64)', '', '创建者', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (74, 'sys_dict_type', 'remark', 'YES', 'varchar(500)', '', '备注', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (75, 'sys_dict_type', 'create_time', 'YES', 'datetime', '', '创建时间', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (76, 'sys_role_menu', 'id', 'NO', 'bigint', 'PRI', '表id', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (77, 'sys_role_menu', 'role_id', 'YES', 'bigint', '', '角色id', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (78, 'sys_role_menu', 'menu_id', 'YES', 'bigint', '', '菜单id', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (79, 'sys_role_menu', 'create_time', 'YES', 'datetime', '', '生成时间', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (80, 'sys_user_role', 'id', 'NO', 'bigint', 'PRI', '表id', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (81, 'sys_user_role', 'user_id', 'YES', 'bigint', '', '系统用户id', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (82, 'sys_user_role', 'role_id', 'YES', 'bigint', '', '角色id', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (83, 'sys_user_role', 'role_name', 'YES', 'varchar(255)', '', '角色名', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (84, 'sys_user_role', 'create_time', 'YES', 'datetime', '', '生成时间', NULL, '2022-01-22 10:51:17');
INSERT INTO `gen_column` VALUES (85, 'schedule_job_log', 'log_id', 'NO', 'bigint', 'PRI', '任务日志id', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (86, 'schedule_job_log', 'job_id', 'NO', 'bigint', 'MUL', '任务id', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (87, 'schedule_job_log', 'bean_name', 'YES', 'varchar(200)', '', 'spring bean名称', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (88, 'schedule_job_log', 'method_name', 'YES', 'varchar(100)', '', '方法名', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (89, 'schedule_job_log', 'params', 'YES', 'varchar(2000)', '', '参数', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (90, 'schedule_job_log', 'status', 'NO', 'tinyint', '', '任务状态    0：成功    1：失败', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (91, 'schedule_job_log', 'error', 'YES', 'varchar(2000)', '', '失败信息', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (92, 'schedule_job_log', 'times', 'NO', 'int', '', '耗时(单位：毫秒)', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (93, 'schedule_job_log', 'create_time', 'YES', 'datetime', '', '创建时间', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (94, 'sys_dict_data', 'dict_code', 'NO', 'bigint', 'PRI', '字典编码', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (95, 'sys_dict_data', 'dict_sort', 'YES', 'int', '', '排序', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (96, 'sys_dict_data', 'dict_label', 'YES', 'varchar(100)', '', '字典标签', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (97, 'sys_dict_data', 'dict_value', 'YES', 'varchar(100)', '', '字典键值', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (98, 'sys_dict_data', 'dict_type', 'YES', 'varchar(100)', '', '字典类型', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (99, 'sys_dict_data', 'is_default', 'YES', 'tinyint(1)', '', '是否默认(0.否 1.是)', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (100, 'sys_dict_data', 'status', 'YES', 'tinyint(1)', '', '状态(0.关闭 1.启用)', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (101, 'sys_dict_data', 'create_by', 'YES', 'varchar(64)', '', '创建者', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (102, 'sys_dict_data', 'update_by', 'YES', 'varchar(64)', '', '更新者', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (103, 'sys_dict_data', 'update_time', 'YES', 'datetime', '', '更新时间', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (104, 'sys_dict_data', 'remark', 'YES', 'varchar(500)', '', '备注', NULL, '2022-01-22 10:51:21');
INSERT INTO `gen_column` VALUES (105, 'sys_dict_data', 'create_time', 'YES', 'datetime', '', '创建时间', NULL, '2022-01-22 10:51:21');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '表id',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名称',
  `table_comment` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表注释',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `entity_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实体类名称',
  `module_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名',
  `path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下载路径',
  `update_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成器基础信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'gen_column', '生成列信息', NULL, 'GenColumn', '生成列信息', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:12');
INSERT INTO `gen_table` VALUES (2, 'gen_table', '代码生成器基础信息', NULL, 'GenTable', '代码生成器基础信息', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:12');
INSERT INTO `gen_table` VALUES (3, 'sys_menu', '系统菜单表', NULL, 'SysMenu', '系统菜单表', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:12');
INSERT INTO `gen_table` VALUES (4, 'sys_role', '系统角色表', NULL, 'SysRole', '系统角色表', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:12');
INSERT INTO `gen_table` VALUES (5, 'sys_user', '系统用户表', NULL, 'SysUser', '系统用户表', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:12');
INSERT INTO `gen_table` VALUES (6, 'm_user', '用户表', NULL, 'User', '用户表', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:17');
INSERT INTO `gen_table` VALUES (7, 'schedule_job', '定时任务', NULL, 'ScheduleJob', '定时任务', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:17');
INSERT INTO `gen_table` VALUES (8, 'sys_dict_type', '字典类型表', NULL, 'SysDictType', '字典类型表', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:17');
INSERT INTO `gen_table` VALUES (9, 'sys_role_menu', '系统角色菜单关联表', NULL, 'SysRoleMenu', '系统角色菜单关联表', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:17');
INSERT INTO `gen_table` VALUES (10, 'sys_user_role', '系统用户角色表', NULL, 'SysUserRole', '系统用户角色表', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:17');
INSERT INTO `gen_table` VALUES (11, 'schedule_job_log', '定时任务日志', NULL, 'ScheduleJobLog', '定时任务日志', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:21');
INSERT INTO `gen_table` VALUES (12, 'sys_dict_data', '字典数据表', NULL, 'SysDictData', '字典数据表', NULL, NULL, NULL, 'admin', '2022-01-22 10:51:21');

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user`  (
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `user_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `user_phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `user_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_user
-- ----------------------------

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `job_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `bean_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '任务状态  0：暂停  1：正常',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES (1, '测试定时任务', 'testTask', 'test', '', '0/1 * * * * ?', 0, '无参数测试', '2021-12-01 13:15:11');

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log`  (
  `log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint NOT NULL COMMENT '任务id',
  `job_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `bean_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `status` tinyint NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '失败信息',
  `times` int NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `job_id`(`job_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES (1, 1, '测试定时任务', 'testTask', 'test', '', 0, '', 0, '2022-02-04 23:12:06');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT NULL COMMENT '排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `is_default` tinyint(1) NULL DEFAULT NULL COMMENT '是否默认(0.否 1.是)',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态(0.关闭 1.启用)',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '1', 'sys_user_gender', 1, 1, 'admin', NULL, NULL, NULL, '2021-11-27 16:25:00');
INSERT INTO `sys_dict_data` VALUES (6, 2, '女', '0', 'sys_user_gender', 0, 0, 'admin', 'admin', '2021-12-26 07:39:19', 'as', '2021-12-26 15:23:28');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典类型id',
  `dict_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型名称',
  `dict_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态(0.关闭 1.启用)',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_gender', 1, 'admin', '2021-12-26 03:09:54', 'admin', 'asd', '2021-11-27 16:24:05');

-- ----------------------------
-- Table structure for sys_login_record
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_record`;
CREATE TABLE `sys_login_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统用户id',
  `sys_user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统用户名',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `os` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `browser` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 372 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统登录记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_record
-- ----------------------------
INSERT INTO `sys_login_record` VALUES (80, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 09:52:14');
INSERT INTO `sys_login_record` VALUES (81, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Unknown', 'Unknown', '内网IP', '2023-05-03 10:14:25');
INSERT INTO `sys_login_record` VALUES (82, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Unknown', 'Unknown', '内网IP', '2023-05-03 10:21:03');
INSERT INTO `sys_login_record` VALUES (83, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Unknown', 'Unknown', '内网IP', '2023-05-03 10:23:38');
INSERT INTO `sys_login_record` VALUES (84, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Unknown', 'Unknown', '内网IP', '2023-05-03 10:24:43');
INSERT INTO `sys_login_record` VALUES (85, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Unknown', 'Unknown', '内网IP', '2023-05-03 10:24:44');
INSERT INTO `sys_login_record` VALUES (86, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Unknown', 'Unknown', '内网IP', '2023-05-03 10:25:27');
INSERT INTO `sys_login_record` VALUES (87, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 13:16:27');
INSERT INTO `sys_login_record` VALUES (88, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 13:17:09');
INSERT INTO `sys_login_record` VALUES (89, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 13:18:19');
INSERT INTO `sys_login_record` VALUES (90, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 16:55:14');
INSERT INTO `sys_login_record` VALUES (91, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 16:55:45');
INSERT INTO `sys_login_record` VALUES (92, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 16:57:24');
INSERT INTO `sys_login_record` VALUES (93, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:04:32');
INSERT INTO `sys_login_record` VALUES (94, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:04:32');
INSERT INTO `sys_login_record` VALUES (95, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:04:36');
INSERT INTO `sys_login_record` VALUES (96, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:04:37');
INSERT INTO `sys_login_record` VALUES (97, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:04:38');
INSERT INTO `sys_login_record` VALUES (98, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:04:38');
INSERT INTO `sys_login_record` VALUES (99, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:09:55');
INSERT INTO `sys_login_record` VALUES (100, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:10:05');
INSERT INTO `sys_login_record` VALUES (101, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:10:05');
INSERT INTO `sys_login_record` VALUES (102, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:10:05');
INSERT INTO `sys_login_record` VALUES (103, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:10:05');
INSERT INTO `sys_login_record` VALUES (104, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:10:33');
INSERT INTO `sys_login_record` VALUES (105, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:42:09');
INSERT INTO `sys_login_record` VALUES (106, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:42:10');
INSERT INTO `sys_login_record` VALUES (107, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 17:42:10');
INSERT INTO `sys_login_record` VALUES (108, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:19:02');
INSERT INTO `sys_login_record` VALUES (109, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:19:09');
INSERT INTO `sys_login_record` VALUES (110, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:19:11');
INSERT INTO `sys_login_record` VALUES (111, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:19:56');
INSERT INTO `sys_login_record` VALUES (112, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:19:56');
INSERT INTO `sys_login_record` VALUES (113, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:19:56');
INSERT INTO `sys_login_record` VALUES (114, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:21:57');
INSERT INTO `sys_login_record` VALUES (115, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:21:57');
INSERT INTO `sys_login_record` VALUES (116, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:21:57');
INSERT INTO `sys_login_record` VALUES (117, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:21:58');
INSERT INTO `sys_login_record` VALUES (118, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:21:58');
INSERT INTO `sys_login_record` VALUES (119, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:21:59');
INSERT INTO `sys_login_record` VALUES (120, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:22:11');
INSERT INTO `sys_login_record` VALUES (121, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:22:13');
INSERT INTO `sys_login_record` VALUES (122, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:22:14');
INSERT INTO `sys_login_record` VALUES (123, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:22:14');
INSERT INTO `sys_login_record` VALUES (124, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:22:14');
INSERT INTO `sys_login_record` VALUES (125, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:22:16');
INSERT INTO `sys_login_record` VALUES (126, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:22:19');
INSERT INTO `sys_login_record` VALUES (127, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:22:19');
INSERT INTO `sys_login_record` VALUES (128, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:22:20');
INSERT INTO `sys_login_record` VALUES (129, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:22');
INSERT INTO `sys_login_record` VALUES (130, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:23');
INSERT INTO `sys_login_record` VALUES (131, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:24');
INSERT INTO `sys_login_record` VALUES (132, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:24');
INSERT INTO `sys_login_record` VALUES (133, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:24');
INSERT INTO `sys_login_record` VALUES (134, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:24');
INSERT INTO `sys_login_record` VALUES (135, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:26');
INSERT INTO `sys_login_record` VALUES (136, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:26');
INSERT INTO `sys_login_record` VALUES (137, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:28');
INSERT INTO `sys_login_record` VALUES (138, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:28');
INSERT INTO `sys_login_record` VALUES (139, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:29');
INSERT INTO `sys_login_record` VALUES (140, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:29');
INSERT INTO `sys_login_record` VALUES (141, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:23:35');
INSERT INTO `sys_login_record` VALUES (142, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:24:28');
INSERT INTO `sys_login_record` VALUES (143, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:24:29');
INSERT INTO `sys_login_record` VALUES (144, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:24:30');
INSERT INTO `sys_login_record` VALUES (145, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:24:40');
INSERT INTO `sys_login_record` VALUES (146, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:24:47');
INSERT INTO `sys_login_record` VALUES (147, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:25:11');
INSERT INTO `sys_login_record` VALUES (148, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:25:19');
INSERT INTO `sys_login_record` VALUES (149, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:25:35');
INSERT INTO `sys_login_record` VALUES (150, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:27:11');
INSERT INTO `sys_login_record` VALUES (151, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:27:24');
INSERT INTO `sys_login_record` VALUES (152, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:27:26');
INSERT INTO `sys_login_record` VALUES (153, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:27:27');
INSERT INTO `sys_login_record` VALUES (154, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:27:34');
INSERT INTO `sys_login_record` VALUES (155, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:28:48');
INSERT INTO `sys_login_record` VALUES (156, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:30:26');
INSERT INTO `sys_login_record` VALUES (157, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:31:45');
INSERT INTO `sys_login_record` VALUES (158, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:31:50');
INSERT INTO `sys_login_record` VALUES (159, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:33:13');
INSERT INTO `sys_login_record` VALUES (160, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:33:14');
INSERT INTO `sys_login_record` VALUES (161, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:33:14');
INSERT INTO `sys_login_record` VALUES (162, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:33:16');
INSERT INTO `sys_login_record` VALUES (163, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:33:19');
INSERT INTO `sys_login_record` VALUES (164, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:34:26');
INSERT INTO `sys_login_record` VALUES (165, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:34:27');
INSERT INTO `sys_login_record` VALUES (166, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:35:50');
INSERT INTO `sys_login_record` VALUES (167, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:37:49');
INSERT INTO `sys_login_record` VALUES (168, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:41:23');
INSERT INTO `sys_login_record` VALUES (169, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:42:14');
INSERT INTO `sys_login_record` VALUES (170, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:42:51');
INSERT INTO `sys_login_record` VALUES (171, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:43:42');
INSERT INTO `sys_login_record` VALUES (172, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:43:46');
INSERT INTO `sys_login_record` VALUES (173, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:43:54');
INSERT INTO `sys_login_record` VALUES (174, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:43:57');
INSERT INTO `sys_login_record` VALUES (175, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:44:03');
INSERT INTO `sys_login_record` VALUES (176, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:44:06');
INSERT INTO `sys_login_record` VALUES (177, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:54:39');
INSERT INTO `sys_login_record` VALUES (178, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:54:39');
INSERT INTO `sys_login_record` VALUES (179, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:54:39');
INSERT INTO `sys_login_record` VALUES (180, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:54:39');
INSERT INTO `sys_login_record` VALUES (181, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:54:39');
INSERT INTO `sys_login_record` VALUES (182, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:54:39');
INSERT INTO `sys_login_record` VALUES (183, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:54:43');
INSERT INTO `sys_login_record` VALUES (184, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:54:44');
INSERT INTO `sys_login_record` VALUES (185, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:54:45');
INSERT INTO `sys_login_record` VALUES (186, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:57:22');
INSERT INTO `sys_login_record` VALUES (187, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:57:26');
INSERT INTO `sys_login_record` VALUES (188, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:57:39');
INSERT INTO `sys_login_record` VALUES (189, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:57:40');
INSERT INTO `sys_login_record` VALUES (190, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:57:42');
INSERT INTO `sys_login_record` VALUES (191, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:57:42');
INSERT INTO `sys_login_record` VALUES (192, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:57:43');
INSERT INTO `sys_login_record` VALUES (193, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 18:59:59');
INSERT INTO `sys_login_record` VALUES (194, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:01:43');
INSERT INTO `sys_login_record` VALUES (195, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:01:56');
INSERT INTO `sys_login_record` VALUES (196, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:02:05');
INSERT INTO `sys_login_record` VALUES (197, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:02:07');
INSERT INTO `sys_login_record` VALUES (198, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:02:09');
INSERT INTO `sys_login_record` VALUES (199, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:02:16');
INSERT INTO `sys_login_record` VALUES (200, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:02:43');
INSERT INTO `sys_login_record` VALUES (201, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:03:17');
INSERT INTO `sys_login_record` VALUES (202, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:03:23');
INSERT INTO `sys_login_record` VALUES (203, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:05:19');
INSERT INTO `sys_login_record` VALUES (204, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:05:22');
INSERT INTO `sys_login_record` VALUES (205, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:05:32');
INSERT INTO `sys_login_record` VALUES (206, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:06:03');
INSERT INTO `sys_login_record` VALUES (207, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:06:28');
INSERT INTO `sys_login_record` VALUES (208, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:06:57');
INSERT INTO `sys_login_record` VALUES (209, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:07:03');
INSERT INTO `sys_login_record` VALUES (210, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:07:06');
INSERT INTO `sys_login_record` VALUES (211, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:07:13');
INSERT INTO `sys_login_record` VALUES (212, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:07:41');
INSERT INTO `sys_login_record` VALUES (213, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 19:07:48');
INSERT INTO `sys_login_record` VALUES (214, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:10:45');
INSERT INTO `sys_login_record` VALUES (215, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:10:45');
INSERT INTO `sys_login_record` VALUES (216, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:11:43');
INSERT INTO `sys_login_record` VALUES (217, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:11:46');
INSERT INTO `sys_login_record` VALUES (218, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:11:56');
INSERT INTO `sys_login_record` VALUES (219, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:11:58');
INSERT INTO `sys_login_record` VALUES (220, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:12:01');
INSERT INTO `sys_login_record` VALUES (221, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:12:21');
INSERT INTO `sys_login_record` VALUES (222, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:12:29');
INSERT INTO `sys_login_record` VALUES (223, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:13:41');
INSERT INTO `sys_login_record` VALUES (224, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 21:14:25');
INSERT INTO `sys_login_record` VALUES (225, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 22:32:45');
INSERT INTO `sys_login_record` VALUES (226, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 22:32:45');
INSERT INTO `sys_login_record` VALUES (227, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 22:33:09');
INSERT INTO `sys_login_record` VALUES (228, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 22:51:36');
INSERT INTO `sys_login_record` VALUES (229, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 22:51:39');
INSERT INTO `sys_login_record` VALUES (230, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 23:03:39');
INSERT INTO `sys_login_record` VALUES (231, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 23:34:04');
INSERT INTO `sys_login_record` VALUES (232, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 23:34:16');
INSERT INTO `sys_login_record` VALUES (233, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 23:34:29');
INSERT INTO `sys_login_record` VALUES (234, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 23:34:50');
INSERT INTO `sys_login_record` VALUES (235, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 23:40:55');
INSERT INTO `sys_login_record` VALUES (236, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 23:41:02');
INSERT INTO `sys_login_record` VALUES (237, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 10:57:05');
INSERT INTO `sys_login_record` VALUES (238, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 10:57:54');
INSERT INTO `sys_login_record` VALUES (239, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 10:59:39');
INSERT INTO `sys_login_record` VALUES (240, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:05:50');
INSERT INTO `sys_login_record` VALUES (241, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:06:07');
INSERT INTO `sys_login_record` VALUES (242, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:06:51');
INSERT INTO `sys_login_record` VALUES (243, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:07:39');
INSERT INTO `sys_login_record` VALUES (244, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:15:49');
INSERT INTO `sys_login_record` VALUES (245, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:15:54');
INSERT INTO `sys_login_record` VALUES (246, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:16:10');
INSERT INTO `sys_login_record` VALUES (247, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:16:17');
INSERT INTO `sys_login_record` VALUES (248, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:20:29');
INSERT INTO `sys_login_record` VALUES (249, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:28:25');
INSERT INTO `sys_login_record` VALUES (250, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:28:34');
INSERT INTO `sys_login_record` VALUES (251, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:32:43');
INSERT INTO `sys_login_record` VALUES (252, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:33:30');
INSERT INTO `sys_login_record` VALUES (253, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '127.0.0.1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 11:36:29');
INSERT INTO `sys_login_record` VALUES (254, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:44:25');
INSERT INTO `sys_login_record` VALUES (255, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:44:46');
INSERT INTO `sys_login_record` VALUES (256, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:44:59');
INSERT INTO `sys_login_record` VALUES (257, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:45:53');
INSERT INTO `sys_login_record` VALUES (258, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:46:25');
INSERT INTO `sys_login_record` VALUES (259, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:46:44');
INSERT INTO `sys_login_record` VALUES (260, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:50:35');
INSERT INTO `sys_login_record` VALUES (261, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:51:27');
INSERT INTO `sys_login_record` VALUES (262, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:52:17');
INSERT INTO `sys_login_record` VALUES (263, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:55:17');
INSERT INTO `sys_login_record` VALUES (264, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:57:10');
INSERT INTO `sys_login_record` VALUES (265, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 18:59:52');
INSERT INTO `sys_login_record` VALUES (266, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 19:00:38');
INSERT INTO `sys_login_record` VALUES (267, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 19:01:27');
INSERT INTO `sys_login_record` VALUES (268, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:04:15');
INSERT INTO `sys_login_record` VALUES (269, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:04:18');
INSERT INTO `sys_login_record` VALUES (270, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:13:37');
INSERT INTO `sys_login_record` VALUES (271, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:13:43');
INSERT INTO `sys_login_record` VALUES (272, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:14:00');
INSERT INTO `sys_login_record` VALUES (273, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:16:15');
INSERT INTO `sys_login_record` VALUES (274, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:17:49');
INSERT INTO `sys_login_record` VALUES (275, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:18:31');
INSERT INTO `sys_login_record` VALUES (276, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:18:42');
INSERT INTO `sys_login_record` VALUES (277, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:19:45');
INSERT INTO `sys_login_record` VALUES (278, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:20:27');
INSERT INTO `sys_login_record` VALUES (279, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:20:45');
INSERT INTO `sys_login_record` VALUES (280, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:21:15');
INSERT INTO `sys_login_record` VALUES (281, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:21:31');
INSERT INTO `sys_login_record` VALUES (282, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:36:10');
INSERT INTO `sys_login_record` VALUES (283, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:39:59');
INSERT INTO `sys_login_record` VALUES (284, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:41:11');
INSERT INTO `sys_login_record` VALUES (285, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:42:21');
INSERT INTO `sys_login_record` VALUES (286, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:48:05');
INSERT INTO `sys_login_record` VALUES (287, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:53:42');
INSERT INTO `sys_login_record` VALUES (288, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:57:36');
INSERT INTO `sys_login_record` VALUES (289, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 20:58:59');
INSERT INTO `sys_login_record` VALUES (290, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 21:00:01');
INSERT INTO `sys_login_record` VALUES (291, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 21:27:06');
INSERT INTO `sys_login_record` VALUES (292, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 21:27:17');
INSERT INTO `sys_login_record` VALUES (293, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 21:29:51');
INSERT INTO `sys_login_record` VALUES (294, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 21:29:58');
INSERT INTO `sys_login_record` VALUES (295, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 21:38:06');
INSERT INTO `sys_login_record` VALUES (296, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 22:18:59');
INSERT INTO `sys_login_record` VALUES (297, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-04 22:20:33');
INSERT INTO `sys_login_record` VALUES (298, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:49:29');
INSERT INTO `sys_login_record` VALUES (299, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:51:16');
INSERT INTO `sys_login_record` VALUES (300, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:52:29');
INSERT INTO `sys_login_record` VALUES (301, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:52:42');
INSERT INTO `sys_login_record` VALUES (302, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:54:37');
INSERT INTO `sys_login_record` VALUES (303, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:55:03');
INSERT INTO `sys_login_record` VALUES (304, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:55:38');
INSERT INTO `sys_login_record` VALUES (305, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:56:33');
INSERT INTO `sys_login_record` VALUES (306, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:58:13');
INSERT INTO `sys_login_record` VALUES (307, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:59:19');
INSERT INTO `sys_login_record` VALUES (308, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 10:59:52');
INSERT INTO `sys_login_record` VALUES (309, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:03:58');
INSERT INTO `sys_login_record` VALUES (310, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:04:16');
INSERT INTO `sys_login_record` VALUES (311, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:07:54');
INSERT INTO `sys_login_record` VALUES (312, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:11:06');
INSERT INTO `sys_login_record` VALUES (313, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:11:25');
INSERT INTO `sys_login_record` VALUES (314, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:13:24');
INSERT INTO `sys_login_record` VALUES (315, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:13:31');
INSERT INTO `sys_login_record` VALUES (316, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:13:47');
INSERT INTO `sys_login_record` VALUES (317, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:14:19');
INSERT INTO `sys_login_record` VALUES (318, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:15:21');
INSERT INTO `sys_login_record` VALUES (319, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:16:19');
INSERT INTO `sys_login_record` VALUES (320, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:18:47');
INSERT INTO `sys_login_record` VALUES (321, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:19:14');
INSERT INTO `sys_login_record` VALUES (322, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:20:43');
INSERT INTO `sys_login_record` VALUES (323, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:21:06');
INSERT INTO `sys_login_record` VALUES (324, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:22:51');
INSERT INTO `sys_login_record` VALUES (325, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:23:03');
INSERT INTO `sys_login_record` VALUES (326, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 11:24:24');
INSERT INTO `sys_login_record` VALUES (327, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:11:21');
INSERT INTO `sys_login_record` VALUES (328, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:12:15');
INSERT INTO `sys_login_record` VALUES (329, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:12:38');
INSERT INTO `sys_login_record` VALUES (330, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:26:50');
INSERT INTO `sys_login_record` VALUES (331, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:27:24');
INSERT INTO `sys_login_record` VALUES (332, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:33:22');
INSERT INTO `sys_login_record` VALUES (333, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:33:44');
INSERT INTO `sys_login_record` VALUES (334, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:33:58');
INSERT INTO `sys_login_record` VALUES (335, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:48:27');
INSERT INTO `sys_login_record` VALUES (336, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:49:14');
INSERT INTO `sys_login_record` VALUES (337, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:50:48');
INSERT INTO `sys_login_record` VALUES (338, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:50:57');
INSERT INTO `sys_login_record` VALUES (339, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:51:16');
INSERT INTO `sys_login_record` VALUES (340, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:52:18');
INSERT INTO `sys_login_record` VALUES (341, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:52:30');
INSERT INTO `sys_login_record` VALUES (342, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:52:51');
INSERT INTO `sys_login_record` VALUES (343, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:53:16');
INSERT INTO `sys_login_record` VALUES (344, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:53:40');
INSERT INTO `sys_login_record` VALUES (345, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:53:57');
INSERT INTO `sys_login_record` VALUES (346, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:54:39');
INSERT INTO `sys_login_record` VALUES (347, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:57:20');
INSERT INTO `sys_login_record` VALUES (348, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:58:13');
INSERT INTO `sys_login_record` VALUES (349, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:58:21');
INSERT INTO `sys_login_record` VALUES (350, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:58:48');
INSERT INTO `sys_login_record` VALUES (351, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 21:59:02');
INSERT INTO `sys_login_record` VALUES (352, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:06:19');
INSERT INTO `sys_login_record` VALUES (353, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:10:02');
INSERT INTO `sys_login_record` VALUES (354, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:10:52');
INSERT INTO `sys_login_record` VALUES (355, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:11:05');
INSERT INTO `sys_login_record` VALUES (356, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:11:14');
INSERT INTO `sys_login_record` VALUES (357, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:21:22');
INSERT INTO `sys_login_record` VALUES (358, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:21:47');
INSERT INTO `sys_login_record` VALUES (359, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:22:02');
INSERT INTO `sys_login_record` VALUES (360, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:23:38');
INSERT INTO `sys_login_record` VALUES (361, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:23:48');
INSERT INTO `sys_login_record` VALUES (362, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:24:12');
INSERT INTO `sys_login_record` VALUES (363, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:24:41');
INSERT INTO `sys_login_record` VALUES (364, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:26:44');
INSERT INTO `sys_login_record` VALUES (365, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:31:30');
INSERT INTO `sys_login_record` VALUES (366, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:32:33');
INSERT INTO `sys_login_record` VALUES (367, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:35:39');
INSERT INTO `sys_login_record` VALUES (368, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:36:10');
INSERT INTO `sys_login_record` VALUES (369, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-05 22:36:22');
INSERT INTO `sys_login_record` VALUES (370, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-06 10:32:07');
INSERT INTO `sys_login_record` VALUES (371, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-06 10:32:36');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `title` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '类型(1.菜单 2.目录 3.按钮)',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限字符',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '携带图标',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `pid` bigint NULL DEFAULT NULL COMMENT '父级id',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '用户管理', '/', 1, NULL, 'el-icon-user-solid', 1, 0, '2021-09-12 10:05:56');
INSERT INTO `sys_menu` VALUES (2, '账户设置', '/Account', 2, NULL, NULL, 1, 1, '2021-09-10 15:05:32');
INSERT INTO `sys_menu` VALUES (3, '菜单管理', '/', 1, NULL, 'el-icon-menu', 2, 0, '2021-09-12 10:42:20');
INSERT INTO `sys_menu` VALUES (4, '菜单设置', '/Menu', 2, NULL, NULL, 1, 3, '2021-09-12 10:42:55');
INSERT INTO `sys_menu` VALUES (5, '权限管理', '/', 1, NULL, 'el-icon-view', 3, 0, '2021-09-18 14:08:42');
INSERT INTO `sys_menu` VALUES (6, '权限设置', '/role', 2, NULL, NULL, 1, 5, '2021-09-18 14:09:30');
INSERT INTO `sys_menu` VALUES (7, '系统工具', '/', 1, NULL, 'el-icon-s-tools\n', 4, 0, '2021-09-29 17:16:57');
INSERT INTO `sys_menu` VALUES (8, '定时任务', '/quartz', 2, NULL, NULL, 5, 7, '2021-09-29 17:17:43');
INSERT INTO `sys_menu` VALUES (9, '代码生成', '/generator', 2, NULL, NULL, 1, 7, '2021-10-17 22:21:34');
INSERT INTO `sys_menu` VALUES (14, '字典类型', '/sysDictType', 2, NULL, NULL, 3, 7, '2021-10-23 11:01:10');
INSERT INTO `sys_menu` VALUES (24, '账户设置列表', '#', 3, 'dolores:sysUser:list', NULL, 1, 2, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (25, '账户设置新增', '#', 3, 'dolores:sysUser:add', NULL, 2, 2, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (26, '账户设置编辑', '#', 3, 'dolores:sysUser:edit', NULL, 3, 2, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (27, '账户设置移除', '#', 3, 'dolores:sysUser:remove', NULL, 4, 2, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (28, '菜单列表', '#', 3, 'dolores:sysMenu:list', NULL, 1, 4, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (29, '菜单新增', '#', 3, 'dolores:sysMenu:add', NULL, 2, 4, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (30, '菜单编辑', '#', 3, 'dolores:sysMenu:edit', NULL, 3, 4, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (31, '菜单移除', '#', 3, 'dolores:sysMenu:remove', NULL, 4, 4, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (32, '权限设置列表', '#', 3, 'dolores:sysRole:list', NULL, 1, 6, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (33, '权限设置新增', '#', 3, 'dolores:sysRole:add', NULL, 2, 6, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (34, '权限设置编辑', '#', 3, 'dolores:sysRole:edit', NULL, 3, 6, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (35, '权限设置移除', '#', 3, 'dolores:sysRole:remove', NULL, 4, 6, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (36, '定时任务列表', '#', 3, 'dolores:quartz:list', NULL, 1, 8, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (37, '定时任务新增', '#', 3, 'dolores:quartz:add', NULL, 2, 8, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (38, '定时任务编辑', '#', 3, 'dolores:quartz:edit', NULL, 3, 8, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (39, '定时任务移除', '#', 3, 'dolores:quartz:remove', NULL, 4, 8, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (40, '代码生成列表', '#', 3, 'dolores:generator:list', NULL, 1, 9, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (41, '代码生成新增', '#', 3, 'dolores:generator:add', NULL, 2, 9, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (42, '代码生成编辑', '#', 3, 'dolores:generator:edit', NULL, 3, 9, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (43, '代码生成移除', '#', 3, 'dolores:generator:remove', NULL, 4, 9, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (44, '字典类型列表', '#', 3, 'dolores:sysDictType:list', NULL, 1, 14, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (45, '字典类型新增', '#', 3, 'dolores:sysDictType:add', NULL, 2, 14, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (46, '字典类型编辑', '#', 3, 'dolores:sysDictType:edit', NULL, 3, 14, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (47, '字典类型移除', '#', 3, 'dolores:sysDictType:remove', NULL, 4, 14, '2021-12-13 21:48:08');
INSERT INTO `sys_menu` VALUES (48, '字典数据列表', '#', 3, 'dolores:sysDictData:list', NULL, 1, 14, '2022-01-25 18:17:46');
INSERT INTO `sys_menu` VALUES (49, '字典数据新增', '#', 3, 'dolores:sysDictData:add', NULL, 2, 14, '2022-01-25 18:17:46');
INSERT INTO `sys_menu` VALUES (50, '字典数据编辑', '#', 3, 'dolores:sysDictData:edit', NULL, 3, 14, '2022-01-25 18:17:47');
INSERT INTO `sys_menu` VALUES (51, '字典数据移除', '#', 3, 'dolores:sysDictData:remove', NULL, 4, 14, '2022-01-25 18:17:47');
INSERT INTO `sys_menu` VALUES (52, '24点工具', '/', 1, NULL, 'el-icon-coin', 5, 0, '2022-02-21 23:18:01');
INSERT INTO `sys_menu` VALUES (53, '24点概率工具', '/blackjack', 2, 'dolores:blackjack:tool', NULL, 1, 52, '2022-02-21 23:18:01');
INSERT INTO `sys_menu` VALUES (54, '场数纪录', '/blackJackRoundRecord', 2, NULL, NULL, 2, 52, '2022-02-25 23:44:26');
INSERT INTO `sys_menu` VALUES (55, '来访记录', '/sysLoginRecord', 2, NULL, NULL, 2, 1, '2022-03-01 17:15:15');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户权限字符',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '角色状态(0.未启用 1.已启用)',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, 1, 'admin', 'admin', '2021-12-21 13:29:20', '超级管理员', '2021-09-09 14:15:36');
INSERT INTO `sys_role` VALUES (2, '普通用户', 'user', 2, 1, 'admin', 'admin', '2021-12-21 09:56:36', '普通用户', '2021-09-13 21:18:16');
INSERT INTO `sys_role` VALUES (3, '访客', 'guest', 3, 1, 'admin', 'admin', '2022-05-09 10:28:50', '游客', '2021-09-23 14:36:53');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '表id',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` bigint NULL DEFAULT NULL COMMENT '菜单id',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1, 1, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (2, 1, 2, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (3, 1, 3, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (4, 1, 4, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (5, 1, 5, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (6, 1, 6, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (7, 1, 7, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (8, 1, 8, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (9, 1, 9, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (10, 1, 14, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (11, 1, 24, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (12, 1, 25, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (13, 1, 26, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (14, 1, 27, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (15, 1, 28, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (16, 1, 29, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (17, 1, 30, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (18, 1, 31, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (19, 1, 32, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (20, 1, 33, '2023-05-03 09:50:12');
INSERT INTO `sys_role_menu` VALUES (21, 1, 34, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (22, 1, 35, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (23, 1, 36, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (24, 1, 37, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (25, 1, 38, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (26, 1, 39, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (27, 1, 40, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (28, 1, 41, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (29, 1, 42, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (30, 1, 43, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (31, 1, 44, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (32, 1, 45, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (33, 1, 46, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (34, 1, 47, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (35, 1, 48, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (36, 1, 49, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (37, 1, 50, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (38, 1, 51, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (39, 1, 52, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (40, 1, 53, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (41, 1, 54, '2023-05-03 09:50:13');
INSERT INTO `sys_role_menu` VALUES (42, 1, 55, '2023-05-03 09:50:13');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统用户id',
  `user_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统用户名',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统用户手机号',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统用户密码',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `gender` tinyint(1) NULL DEFAULT 1 COMMENT '性别(0.女 1.男)',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '账号状态(0.未启用 1.已启用)',
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像路径',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户登录ip',
  `login_date` datetime NULL DEFAULT NULL COMMENT '用户登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码更新日期',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('62a199a1713c91a33ecc8d1d14a0789e', 'admin', NULL, 'd8cf9cc793f85ff58f4010facd137ce776d3d4f86b9674e41f798d2748e8', '72b01a676facd496a2ffb3d7bae4d226', NULL, 1, 1, NULL, '0:0:0:0:0:0:0:1', '2023-05-06 02:32:36', NULL, '2023-05-03 09:45:30', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统用户id',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色id',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, '62a199a1713c91a33ecc8d1d14a0789e', 1, '2023-05-03 09:49:28');

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
delimiter ;;
CREATE PROCEDURE `test`()
begin
    declare i int;                      #申明变量
    set i = 0;                          #变量赋值
    while i < 10 do                     #结束循环的条件: 当i大于10时跳出while循环
    insert into test values (i);    #往test表添加数据
    set i = i + 1;                  #循环一次,i加一
        end while;                          #结束while循环
    select * from test;                 #查看test表数据
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
