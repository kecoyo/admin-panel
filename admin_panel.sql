/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : admin_panel

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 19/01/2021 19:33:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_server
-- ----------------------------
DROP TABLE IF EXISTS `data_server`;
CREATE TABLE `data_server`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '服务器名称',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '服务器说明',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '排序权重',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '标签状态(1使用,0禁用)',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_data_news_mark_status`(`status`) USING BTREE,
  INDEX `idx_data_news_mark_deleted`(`is_deleted`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据-服务器' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of data_server
-- ----------------------------
INSERT INTO `data_server` VALUES (1, 'us.61bing.com', '', 0, 1, 0, '2021-01-18 23:52:17');
INSERT INTO `data_server` VALUES (2, 'us-iplc.61bing.com', '', 0, 1, 0, '2021-01-18 23:53:11');
INSERT INTO `data_server` VALUES (3, 'jp.61bing.com', '', 0, 1, 0, '2021-01-18 23:53:18');
INSERT INTO `data_server` VALUES (4, 'kr.61bing.com', '', 0, 1, 0, '2021-01-18 23:53:24');
INSERT INTO `data_server` VALUES (5, 'sg.61bing.com', '', 0, 1, 0, '2021-01-18 23:53:30');
INSERT INTO `data_server` VALUES (6, 'hk-iplc.61bing.com', '', 0, 1, 0, '2021-01-18 23:53:36');

-- ----------------------------
-- Table structure for system_auth
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '权限名称',
  `desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注说明',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '排序权重',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '权限状态(1使用,0禁用)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_system_auth_title`(`title`) USING BTREE,
  INDEX `idx_system_auth_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-权限' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of system_auth
-- ----------------------------
INSERT INTO `system_auth` VALUES (1, '管理员', '', 0, 1, '2021-01-19 12:39:09');
INSERT INTO `system_auth` VALUES (2, '普通用户', '', 0, 1, '2021-01-19 12:39:22');

-- ----------------------------
-- Table structure for system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '角色',
  `node` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '节点',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_system_auth_auth`(`auth`) USING BTREE,
  INDEX `idx_system_auth_node`(`node`(191)) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-授权' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config`  (
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '分类',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '配置名',
  `value` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '配置值',
  INDEX `idx_system_config_type`(`type`) USING BTREE,
  INDEX `idx_system_config_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-配置' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('base', 'app_name', 'ThinkAdmin');
INSERT INTO `system_config` VALUES ('base', 'app_version', 'v6');
INSERT INTO `system_config` VALUES ('base', 'beian', '');
INSERT INTO `system_config` VALUES ('base', 'miitbeian', '粤ICP备16006642号-2');
INSERT INTO `system_config` VALUES ('base', 'site_copy', '©版权所有 2014-2020 楚才科技');
INSERT INTO `system_config` VALUES ('base', 'site_icon', 'https://v6.thinkadmin.top/upload/f4/7b8fe06e38ae9908e8398da45583b9.png');
INSERT INTO `system_config` VALUES ('base', 'site_name', 'ThinkAdmin');
INSERT INTO `system_config` VALUES ('base', 'xpath', 'admin');
INSERT INTO `system_config` VALUES ('storage', 'allow_exts', 'doc,gif,icon,jpg,mp3,mp4,p12,pem,png,rar,xls,xlsx');
INSERT INTO `system_config` VALUES ('storage', 'link_type', 'none');
INSERT INTO `system_config` VALUES ('storage', 'local_http_domain', '');
INSERT INTO `system_config` VALUES ('storage', 'local_http_protocol', 'follow');
INSERT INTO `system_config` VALUES ('storage', 'type', 'local');
INSERT INTO `system_config` VALUES ('wechat', 'type', 'thr');
INSERT INTO `system_config` VALUES ('wechat', 'thr_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES ('wechat', 'thr_appkey', '7d0e4a487c6258b2232294b6ef0adb9e');
INSERT INTO `system_config` VALUES ('storage', 'qiniu_http_protocol', 'http');

-- ----------------------------
-- Table structure for system_data
-- ----------------------------
DROP TABLE IF EXISTS `system_data`;
CREATE TABLE `system_data`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '配置名',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_system_data_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-数据' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of system_data
-- ----------------------------

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '上级ID',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单图标',
  `node` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '节点代码',
  `url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接节点',
  `params` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '_self' COMMENT '打开方式',
  `sort` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '排序权重',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_system_menu_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-菜单' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES (2, 0, '系统管理', '', '', '#', '', '_self', 100, 1, '2018-09-05 18:04:52');
INSERT INTO `system_menu` VALUES (3, 4, '系统菜单管理', 'layui-icon layui-icon-layouts', '', 'admin/menu/index', '', '_self', 1, 1, '2018-09-05 18:05:26');
INSERT INTO `system_menu` VALUES (4, 2, '系统配置', '', '', '#', '', '_self', 20, 1, '2018-09-05 18:07:17');
INSERT INTO `system_menu` VALUES (5, 12, '系统用户管理', 'layui-icon layui-icon-username', '', 'admin/user/index', '', '_self', 1, 1, '2018-09-06 11:10:42');
INSERT INTO `system_menu` VALUES (7, 12, '访问权限管理', 'layui-icon layui-icon-vercode', '', 'admin/auth/index', '', '_self', 2, 1, '2018-09-06 15:17:14');
INSERT INTO `system_menu` VALUES (11, 4, '系统参数配置', 'layui-icon layui-icon-set', '', 'admin/config/index', '', '_self', 4, 1, '2018-09-06 16:43:47');
INSERT INTO `system_menu` VALUES (12, 2, '权限管理', '', '', '#', '', '_self', 10, 1, '2018-09-06 18:01:31');
INSERT INTO `system_menu` VALUES (27, 4, '系统任务管理', 'layui-icon layui-icon-log', '', 'admin/queue/index', '', '_self', 3, 1, '2018-11-29 11:13:34');
INSERT INTO `system_menu` VALUES (49, 4, '系统日志管理', 'layui-icon layui-icon-form', '', 'admin/oplog/index', '', '_self', 2, 1, '2019-02-18 12:56:56');
INSERT INTO `system_menu` VALUES (67, 0, '控制台', '', '', '#', '', '_self', 300, 1, '2020-07-13 06:51:46');
INSERT INTO `system_menu` VALUES (68, 67, '数据管理', '', '', '#', '', '_self', 0, 1, '2020-07-13 06:51:54');
INSERT INTO `system_menu` VALUES (85, 68, '用户信息', 'fa fa-dashboard', 'data/user/index', 'data/user/index', '', '_self', 20, 1, '2020-09-22 16:00:10');
INSERT INTO `system_menu` VALUES (86, 68, '服务器管理', 'fa fa-server', 'data/server/index', 'data/server/index', '', '_self', 10, 1, '2020-09-22 16:12:44');

-- ----------------------------
-- Table structure for system_oplog
-- ----------------------------
DROP TABLE IF EXISTS `system_oplog`;
CREATE TABLE `system_oplog`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `node` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `geoip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `action` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作行为名称',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作内容描述',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `create_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-日志' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of system_oplog
-- ----------------------------
INSERT INTO `system_oplog` VALUES (1, 'admin/login/index', '192.168.80.1', '系统用户登录', '登录系统后台成功', 'admin', '2021-01-18 23:39:53');
INSERT INTO `system_oplog` VALUES (2, 'admin/menu/remove', '192.168.80.1', '系统菜单管理', '删除系统菜单[73,77,76,75,78,79,80,81,82,83]成功', 'admin', '2021-01-18 23:47:27');
INSERT INTO `system_oplog` VALUES (3, 'admin/menu/remove', '192.168.80.1', '系统菜单管理', '删除系统菜单[56,57,58,59,60,61,62,63,64,65,66]成功', 'admin', '2021-01-18 23:47:33');
INSERT INTO `system_oplog` VALUES (4, 'admin/menu/remove', '192.168.80.1', '系统菜单管理', '删除系统菜单[70,71,87,84]成功', 'admin', '2021-01-18 23:47:45');
INSERT INTO `system_oplog` VALUES (5, 'admin/menu/edit', '192.168.80.1', '系统菜单管理', '修改系统菜单[86]成功', 'admin', '2021-01-18 23:48:24');
INSERT INTO `system_oplog` VALUES (6, 'admin/menu/edit', '192.168.80.1', '系统菜单管理', '修改系统菜单[68]成功', 'admin', '2021-01-18 23:48:33');
INSERT INTO `system_oplog` VALUES (7, 'admin/menu/edit', '192.168.80.1', '系统菜单管理', '修改系统菜单[85]成功', 'admin', '2021-01-18 23:49:18');
INSERT INTO `system_oplog` VALUES (8, 'admin/login/index', '172.23.0.1', '系统用户登录', '登录系统后台成功', 'admin', '2021-01-19 12:37:24');
INSERT INTO `system_oplog` VALUES (9, 'admin/api.plugs/debug', '172.23.0.1', '系统运维管理', '由开发模式切换为产品模式', 'admin', '2021-01-19 12:38:08');
INSERT INTO `system_oplog` VALUES (10, 'admin/api.plugs/debug', '172.23.0.1', '系统运维管理', '由产品模式切换为开发模式', 'admin', '2021-01-19 12:38:13');
INSERT INTO `system_oplog` VALUES (11, 'admin/auth/add', '172.23.0.1', '系统权限管理', '添加系统权限[1]成功', 'admin', '2021-01-19 12:39:09');
INSERT INTO `system_oplog` VALUES (12, 'admin/auth/add', '172.23.0.1', '系统权限管理', '添加系统权限[2]成功', 'admin', '2021-01-19 12:39:22');
INSERT INTO `system_oplog` VALUES (13, 'admin/user/add', '172.23.0.1', '系统用户管理', '添加系统用户[10001]成功', 'admin', '2021-01-19 12:41:45');
INSERT INTO `system_oplog` VALUES (14, 'admin/user/edit', '172.23.0.1', '系统用户管理', '修改系统用户[10001]成功', 'admin', '2021-01-19 12:42:18');
INSERT INTO `system_oplog` VALUES (15, 'admin/user/edit', '172.23.0.1', '系统用户管理', '修改系统用户[10000]成功', 'admin', '2021-01-19 12:43:04');
INSERT INTO `system_oplog` VALUES (16, 'admin/user/add', '172.23.0.1', '系统用户管理', '添加系统用户[10002]成功', 'admin', '2021-01-19 12:52:35');
INSERT INTO `system_oplog` VALUES (17, 'admin/login/index', '172.23.0.1', '系统用户登录', '登录系统后台成功', 'admin', '2021-01-19 14:09:06');

-- ----------------------------
-- Table structure for system_queue
-- ----------------------------
DROP TABLE IF EXISTS `system_queue`;
CREATE TABLE `system_queue`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务编号',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `command` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '执行指令',
  `exec_pid` bigint(20) NULL DEFAULT 0 COMMENT '执行进程',
  `exec_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '执行参数',
  `exec_time` bigint(20) NULL DEFAULT 0 COMMENT '执行时间',
  `exec_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '执行描述',
  `enter_time` decimal(20, 4) NULL DEFAULT 0.0000 COMMENT '开始时间',
  `outer_time` decimal(20, 4) NULL DEFAULT 0.0000 COMMENT '结束时间',
  `loops_time` bigint(20) NULL DEFAULT 0 COMMENT '循环时间',
  `attempts` bigint(20) NULL DEFAULT 0 COMMENT '执行次数',
  `rscript` tinyint(1) NULL DEFAULT 1 COMMENT '任务类型(0单例,1多例)',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '任务状态(1新任务,2处理中,3成功,4失败)',
  `create_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_system_queue_code`(`code`) USING BTREE,
  INDEX `idx_system_queue_title`(`title`) USING BTREE,
  INDEX `idx_system_queue_status`(`status`) USING BTREE,
  INDEX `idx_system_queue_rscript`(`rscript`) USING BTREE,
  INDEX `idx_system_queue_create_at`(`create_at`) USING BTREE,
  INDEX `idx_system_queue_exec_time`(`exec_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-任务' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of system_queue
-- ----------------------------

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `headimg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `authorize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '权限授权',
  `contact_qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '联系QQ',
  `contact_mail` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '联系邮箱',
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '联系手机',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地址',
  `login_at` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录时间',
  `login_num` bigint(20) NULL DEFAULT 0 COMMENT '登录次数',
  `describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注说明',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态(0禁用,1启用)',
  `sort` bigint(20) NULL DEFAULT 0 COMMENT '排序权重',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '删除(1删除,0未删)',
  `create_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `server_port` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '服务器端口',
  `server_pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '服务器密码',
  `encryption_mode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '加密方式',
  `flow_limit` int(11) NULL DEFAULT 0 COMMENT '流量限制，GB',
  `end_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '到期时间',
  `uuid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '唯一标识码',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_system_user_status`(`status`) USING BTREE,
  INDEX `idx_system_user_username`(`username`) USING BTREE,
  INDEX `idx_system_user_deleted`(`is_deleted`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10001 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-用户' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES (10000, 'admin', '21232f297a57a5a743894a0e4a801fc3', '系统管理员', 'http://localhost/upload/56/0d71e775fb29b354c939d974f5394b.jpg', ',,', '', '', '', '172.23.0.1', '2021-01-19 14:09:06', 59, '', 1, 0, 0, '2015-11-13 15:14:22', 0, '', '', 0, NULL, NULL);
INSERT INTO `system_user` VALUES (10001, 'yangkk', '2d0fee4f452c0bcee0905b8b9e1d66f6', '杨可可', 'http://localhost/upload/ab/8a280d31fdcc5eae5c73a3a55c751f.jpg', ',1,', '', 'kecoyo@163.com', '15901097191', '', '', 0, '', 1, 0, 0, '2021-01-19 12:41:45', 0, '', '', 0, NULL, NULL);
INSERT INTO `system_user` VALUES (10002, 'test', '098f6bcd4621d373cade4e832627b4f6', 'test', '', ',,', '', '', '', '', '', 0, '', 1, 0, 0, '2021-01-19 12:52:35', 0, '', '', 0, '2021-01-19 12:52:35', '');

SET FOREIGN_KEY_CHECKS = 1;
