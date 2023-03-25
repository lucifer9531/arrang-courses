/*
 Navicat Premium Data Transfer

 Source Server         : docker_mysql
 Source Server Type    : MySQL
 Source Server Version : 50735 (5.7.35)
 Source Host           : 60.205.181.203:3306
 Source Schema         : arranging-courses

 Target Server Type    : MySQL
 Target Server Version : 50735 (5.7.35)
 File Encoding         : 65001

 Date: 24/03/2023 21:59:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for enter_class
-- ----------------------------
DROP TABLE IF EXISTS `enter_class`;
CREATE TABLE `enter_class` (
  `class_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `class_no` varchar(255) NOT NULL COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `volume` bigint(20) NOT NULL COMMENT '容量',
  `user_id` bigint(20) DEFAULT NULL COMMENT '班主任',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='教室表';

-- ----------------------------
-- Records of enter_class
-- ----------------------------
BEGIN;
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `user_id`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (5, '6546', '0', 656, 1, 'admin', 'admin', '2023-03-22 13:37:36', '2023-03-22 13:37:36');
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `user_id`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (6, '434', '1', 0, 1, 'admin', 'admin', '2023-03-22 13:43:42', '2023-03-22 13:43:42');
COMMIT;

-- ----------------------------
-- Table structure for enter_classroom
-- ----------------------------
DROP TABLE IF EXISTS `enter_classroom`;
CREATE TABLE `enter_classroom` (
  `classroom_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `classroom_no` varchar(255) NOT NULL COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `teach_build_id` bigint(20) NOT NULL COMMENT '教学楼ID\n',
  `capacity` bigint(20) NOT NULL COMMENT '教室容量',
  `is_used` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否使用',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`classroom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enter_classroom
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for enter_course
-- ----------------------------
DROP TABLE IF EXISTS `enter_course`;
CREATE TABLE `enter_course` (
  `course_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID ',
  `course_no` varchar(255) NOT NULL COMMENT '编号',
  `type` varchar(255) NOT NULL COMMENT '课程类型',
  `name` varchar(255) NOT NULL COMMENT '课程名称',
  `publisher` varchar(255) DEFAULT NULL COMMENT '出版社',
  `status` varchar(255) NOT NULL COMMENT '课程状态',
  `level` int(10) DEFAULT NULL COMMENT '优先级',
  `hour` bigint(20) DEFAULT NULL COMMENT '课程学时',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `credit` bigint(20) DEFAULT NULL COMMENT '课程学分',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enter_course
-- ----------------------------
BEGIN;
INSERT INTO `enter_course` (`course_id`, `course_no`, `type`, `name`, `publisher`, `status`, `level`, `hour`, `remarks`, `credit`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, '222', 'elective', '444', NULL, '', NULL, 0, NULL, 0, 'admin', 'admin', '2023-03-22 21:52:54', '2023-03-22 21:54:32');
COMMIT;

-- ----------------------------
-- Table structure for enter_grade
-- ----------------------------
DROP TABLE IF EXISTS `enter_grade`;
CREATE TABLE `enter_grade` (
  `grade_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `grade_no` varchar(255) NOT NULL COMMENT '班级编号',
  `name` varchar(255) NOT NULL COMMENT '年级名字',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enter_grade
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for enter_location
-- ----------------------------
DROP TABLE IF EXISTS `enter_location`;
CREATE TABLE `enter_location` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enter_location
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for enter_teach_build
-- ----------------------------
DROP TABLE IF EXISTS `enter_teach_build`;
CREATE TABLE `enter_teach_build` (
  `teach_build_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `teach_build_no` varchar(255) NOT NULL COMMENT '编号',
  `location_id` bigint(20) DEFAULT NULL COMMENT '位置ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`teach_build_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enter_teach_build
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '字典名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` (`dict_id`, `name`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, 'user_status', '用户状态', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_dict` (`dict_id`, `name`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, 'class_status', '教室状态', 'admin', 'admin', '2023-03-22 13:13:23', '2023-03-22 13:13:23');
INSERT INTO `sys_dict` (`dict_id`, `name`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (3, 'course_type', '课程类型', 'admin', 'admin', '2023-03-22 21:34:04', '2023-03-22 21:34:04');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail` (
  `detail_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dict_id` bigint(11) DEFAULT NULL COMMENT '字典id',
  `label` varchar(255) NOT NULL COMMENT '字典标签',
  `value` varchar(255) NOT NULL COMMENT '字典值',
  `dict_sort` int(5) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`detail_id`) USING BTREE,
  KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典详情';

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, 1, '激活', 'true', 1, NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, 1, '禁用', 'false', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (3, 2, '占用', 'true', 1, 'admin', 'admin', '2023-03-22 13:13:57', '2023-03-22 13:41:49');
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (4, 2, '空闲', 'false', 2, 'admin', 'admin', '2023-03-22 13:14:10', '2023-03-22 13:14:10');
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (5, 3, '公共课', 'public', 1, 'admin', 'admin', '2023-03-22 21:34:44', '2023-03-22 21:34:50');
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (6, 3, '专业课', 'major', 2, 'admin', 'admin', '2023-03-22 21:35:46', '2023-03-22 21:35:46');
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (7, 3, '选修课', 'elective', 3, 'admin', 'admin', '2023-03-22 21:36:30', '2023-03-22 21:36:38');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级菜单ID',
  `sub_count` int(5) DEFAULT '0' COMMENT '子菜单数目',
  `type` int(11) DEFAULT NULL COMMENT '菜单类型',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `name` varchar(255) DEFAULT NULL COMMENT '组件名称',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `menu_sort` int(5) DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `path` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `cache` bit(1) DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) DEFAULT b'0' COMMENT '隐藏',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE KEY `uniq_title` (`title`),
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, NULL, 4, 0, '系统管理', NULL, NULL, 4, 'system', 'system', b'0', b'0', b'0', NULL, NULL, 'admin', '2023-03-03 11:15:49', '2023-03-22 12:36:06');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, 1, 3, 1, '用户管理', 'User', 'system/user/index', 2, 'peoples', 'user', b'0', b'0', b'0', 'user:list', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (3, 1, 3, 1, '角色管理', 'Role', 'system/role/index', 3, 'role', 'role', b'0', b'0', b'0', 'roles:list', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (5, 1, 3, 1, '菜单管理', 'Menu', 'system/menu/index', 5, 'menu', 'menu', b'0', b'0', b'0', 'menu:list', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (39, 1, 3, 1, '字典管理', 'Dict', 'system/dict/index', 8, 'dictionary', 'dict', b'0', b'0', b'0', 'dict:list', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (44, 2, 0, 2, '用户新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'user:add', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (45, 2, 0, 2, '用户编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'user:edit', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (46, 2, 0, 2, '用户删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'user:del', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (48, 3, 0, 2, '角色创建', NULL, '', 2, '', '', b'0', b'0', b'0', 'roles:add', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (49, 3, 0, 2, '角色修改', NULL, '', 3, '', '', b'0', b'0', b'0', 'roles:edit', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (50, 3, 0, 2, '角色删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'roles:del', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (52, 5, 0, 2, '菜单新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'menu:add', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (53, 5, 0, 2, '菜单编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'menu:edit', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (54, 5, 0, 2, '菜单删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'menu:del', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (64, 39, 0, 2, '字典新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'dict:add', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (65, 39, 0, 2, '字典编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'dict:edit', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (66, 39, 0, 2, '字典删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'dict:del', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (67, NULL, 3, 0, '录入管理', NULL, NULL, 1, 'codeConsole', 'enter', b'0', b'0', b'0', NULL, 'admin', 'admin', '2023-03-22 12:35:39', '2023-03-22 12:36:12');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (68, 67, 3, 1, '教师管理', 'Teacher', 'enter/teacher/index', 1, 'skill', 'teacher', b'0', b'0', b'0', 'teacher:list', 'admin', 'admin', '2023-03-22 12:38:38', '2023-03-22 12:38:38');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (69, 68, 0, 2, '教师新增', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'teacher:add', 'admin', 'admin', '2023-03-22 12:40:53', '2023-03-22 12:40:53');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (70, 68, 0, 2, '教师编辑', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'teacher:edit', 'admin', 'admin', '2023-03-22 12:41:24', '2023-03-22 12:41:24');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (71, 68, 0, 2, '教师删除', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'teacher:del', 'admin', 'admin', '2023-03-22 12:41:50', '2023-03-22 12:41:50');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (72, 67, 3, 1, '班级管理', 'Classes', 'enter/classes/index', 999, 'email', 'classes', b'0', b'0', b'0', 'class:list', 'admin', 'admin', '2023-03-22 12:44:06', '2023-03-22 12:44:06');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (73, 72, 0, 2, '班级新增', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'class:add', 'admin', 'admin', '2023-03-22 12:44:43', '2023-03-22 12:44:43');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (74, 72, 0, 2, '班级编辑', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'class:edit', 'admin', 'admin', '2023-03-22 12:45:08', '2023-03-22 12:45:08');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (75, 72, 0, 2, '班级删除', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'class:del', 'admin', 'admin', '2023-03-22 12:45:36', '2023-03-22 12:45:36');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (76, 67, 3, 1, '课程管理', 'Course', 'enter/course/index', 3, 'source', 'course', b'0', b'0', b'0', 'course:list', 'admin', 'admin', '2023-03-22 21:02:16', '2023-03-22 21:02:16');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (77, 76, 0, 2, '新增课程', NULL, NULL, 999, NULL, NULL, b'0', b'0', b'0', 'couse:add', 'admin', 'admin', '2023-03-22 21:04:10', '2023-03-22 21:04:10');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (78, 76, 0, 2, '编辑课程', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'course:edit', 'admin', 'admin', '2023-03-22 21:04:50', '2023-03-22 21:04:50');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (79, 76, 0, 2, '课程删除', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'course:del', 'admin', 'admin', '2023-03-22 21:05:24', '2023-03-22 21:05:24');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `level` int(255) DEFAULT NULL COMMENT '角色级别',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`),
  KEY `role_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, '超级管理员', 1, '超级管理员', NULL, 'admin', '2023-03-03 11:15:49', '2023-03-22 21:06:07');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, '普通用户', 2, '-', NULL, 'admin', '2023-03-03 11:15:49', '2023-03-22 21:08:54');
COMMIT;

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus` (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`,`role_id`) USING BTREE,
  KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色菜单关联';

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (1, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (2, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (3, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (5, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (39, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (44, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (45, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (46, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (48, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (49, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (50, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (52, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (53, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (54, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (64, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (65, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (66, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (67, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (68, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (69, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (70, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (71, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (72, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (73, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (74, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (75, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (76, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (77, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (78, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (79, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (120, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (1, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (2, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (44, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (46, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (67, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (68, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (71, 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `avatar_name` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `avatar_path` varchar(255) DEFAULT NULL COMMENT '头像真实路径',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `is_admin` bit(1) DEFAULT b'0' COMMENT '是否为admin账号',
  `enabled` bigint(20) DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `pwd_reset_time` datetime DEFAULT NULL COMMENT '修改密码的时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `uniq_username` (`username`),
  KEY `FKpq2dhypk2qgt68nauh2by22jb` (`avatar_name`) USING BTREE,
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`user_id`, `username`, `gender`, `phone`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `create_by`, `update_by`, `pwd_reset_time`, `create_time`, `update_time`) VALUES (1, 'admin', '男', '18888888888', 'avatar-20230303032831684.png', '/Users/lucifinil/Documents/arrang-courses/arrang-courses-system/target/~/avatar/avatar-20230303032831684.png', '$2a$10$E9Sls63fnvaYnG9yGdD8V.DgId6laxefSQT8Q1F.w1Y.o2pr/fmea', b'1', 1, NULL, 'admin', '2023-03-03 14:04:07', '2023-03-03 09:11:56', '2023-03-03 15:28:32');
INSERT INTO `sys_user` (`user_id`, `username`, `gender`, `phone`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `create_by`, `update_by`, `pwd_reset_time`, `create_time`, `update_time`) VALUES (2, 'test', '男', '19999999999', NULL, NULL, '$2a$10$4XcyudOYTSz6fue6KFNMHeUQnCX5jbBQypLEnGk1PmekXt5c95JcK', b'0', 1, 'admin', 'admin', NULL, '2023-03-03 11:15:49', '2023-03-03 11:15:49');
INSERT INTO `sys_user` (`user_id`, `username`, `gender`, `phone`, `avatar_name`, `avatar_path`, `password`, `is_admin`, `enabled`, `create_by`, `update_by`, `pwd_reset_time`, `create_time`, `update_time`) VALUES (3, '99', '男', '17888888888', 'avatar-20230303032831684.png', '/Users/lucifinil/Documents/arrang-courses/arrang-courses-system/target/~/avatar/avatar-20230303032831684.png', '$2a$10$ymT3BO3czXQavghtIROX0ON1QhNEnSYK4yhONROyFEHrUd3kqEvxq', b'0', 0, 'admin', 'admin', '2023-03-03 14:04:07', '2023-03-22 13:30:58', '2023-03-22 13:31:06');
COMMIT;

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `FKq4eq273l04bpu4efj0jd0jb98` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户角色关联';

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
BEGIN;
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES (3, 1);
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES (2, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
