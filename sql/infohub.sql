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

 Date: 03/05/2023 09:53:28
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
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统登录记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_record
-- ----------------------------
INSERT INTO `sys_login_record` VALUES (80, '62a199a1713c91a33ecc8d1d14a0789e', 'admin', '0:0:0:0:0:0:0:1', 'Windows 10', 'Chrome 11', '内网IP', '2023-05-03 09:52:14');

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
INSERT INTO `sys_user` VALUES ('62a199a1713c91a33ecc8d1d14a0789e', 'admin', NULL, '62176177E49D07CE78BE7DF8404077F444FF0545A4E2102405C9739D2460', 'E61201A7D6C137974E94B9AD5097ACBEB7E85B6EE70D5F78F42004F087873FE444FF0545A4E2102405C9739D2460', NULL, 1, 1, NULL, '0:0:0:0:0:0:0:1', '2023-05-03 01:52:15', NULL, '2023-05-03 09:45:30', NULL, NULL);

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
