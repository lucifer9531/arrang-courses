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

 Date: 03/04/2023 15:11:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_class_task
-- ----------------------------
DROP TABLE IF EXISTS `cms_class_task`;
CREATE TABLE `cms_class_task` (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `semester` varchar(20) DEFAULT NULL,
  `college_no` varchar(20) DEFAULT NULL,
  `class_no` varchar(20) DEFAULT NULL,
  `course_no` varchar(10) DEFAULT NULL,
  `teacher_no` varchar(20) DEFAULT NULL,
  `course_attr` varchar(4) DEFAULT NULL,
  `student_number` int(4) DEFAULT NULL,
  `weeks_sum` int(4) DEFAULT NULL,
  `weeks_number` int(4) DEFAULT NULL,
  `is_fix` varchar(2) DEFAULT '1',
  `class_time` varchar(10) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cms_class_task
-- ----------------------------
BEGIN;
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (3, '2015-2016-1', '02', '2023020101', '100014', '02100001', '01', 36, 9, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (5, '2015-2016-1', '02', '2023020301', '100014', '02100002', '01', 46, 9, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (7, '2015-2016-1', '04', '2023040101', '100022', '03100002', '05', 32, 11, 2, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (8, '2015-2016-1', '05', '2023050101', '100021', '05100001', '04', 51, 12, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (9, '2015-2016-1', '06', '2023060201', '100019', '06100003', '02', 33, 12, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (10, '2015-2016-1', '07', '2023070101', '100016', '07100001', '01', 54, 15, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (11, '2015-2016-1', '07', '2023070101', '100017', '07100001', '01', 54, 15, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (14, '2015-2016-1', '09', '2023090101', '100001', '01100002', '01', 34, 10, 4, '2', '0218', NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (19, '2015-2016-1', '02', '2023020101', '100013', '02100003', '02', 36, 4, 2, '2', '05', NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (20, '2015-2016-1', '02', '2023020101', '100014', '02100005', '01', 36, 12, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (21, '2015-2016-1', '02', '2023020101', '100018', '01100003', '02', 36, 12, 2, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (22, '2015-2016-1', '02', '2023020301', '100013', '02100003', '02', 46, 12, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (23, '2015-2016-1', '02', '2023020301', '100014', '02100004', '01', 46, 12, 4, '2', '0814', NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (24, '2015-2016-1', '02', '2023020301', '100018', '01100003', '02', 46, 12, 2, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (27, '2015-2016-1', '04', '2023040101', '100012', '04100002', '01', 32, 14, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (28, '2015-2016-1', '04', '2023040101', '100022', '04100003', '05', 32, 8, 2, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (29, '2015-2016-1', '05', '2023050101', '100031', '05100001', '01', 51, 18, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (30, '2015-2016-1', '05', '2023050101', '100032', '05100002', '01', 51, 18, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (31, '2015-2016-1', '05', '2023050101', '100009', '05100006', '01', 51, 18, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (32, '2015-2016-1', '05', '2023050101', '100021', '05100005', '04', 51, 10, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (33, '2015-2016-1', '06', '2023060201', '100019', '06100001', '02', 33, 16, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (34, '2015-2016-1', '06', '2023060201', '100033', '06100002', '01', 33, 14, 4, '2', '0208', NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (35, '2015-2016-1', '06', '2023060201', '100044', '06100004', '01', 33, 18, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (36, '2015-2016-1', '07', '2023070101', '100023', '07100003', '06', 54, 10, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (37, '2015-2016-1', '08', '2023080101', '100011', '08100004', '01', 33, 14, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (38, '2015-2016-1', '08', '2023080101', '100026', '08100004', '09', 33, 18, 2, '1', '', NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (39, '2015-2016-1', '09', '2023090101', '100035', '09100001', '01', 34, 16, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (40, '2015-2016-1', '09', '2023090101', '100036', '09100001', '02', 34, 16, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (102, '2015-2016-1', '03', '2023030101', '100004', '03100002', '01', 37, 10, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (109, '2015-2016-1', '01', '2023010101', '100002', '01100003', '01', 48, 7, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (110, '2015-2016-1', '01', '2023010101', '100008', '01100004', '01', 48, 12, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (111, '2015-2016-1', '01', '2023010101', '100040', '01100005', '01', 48, 12, 6, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (112, '2015-2016-1', '01', '2023010301', '100041', '01100009', '01', 47, 12, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (113, '2015-2016-1', '01', '2023010301', '100045', '01100010', '01', 47, 12, 4, '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (114, '2015-2016-1', '01', '2023010301', '100048', '01100007', '02', 47, 10, 2, '2', '05', NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (115, '2015-2016-1', '01', '2023010101', '100001', '01100011', '01', 48, 10, 2, '2', '02', NULL, NULL, NULL, NULL);
INSERT INTO `cms_class_task` (`task_id`, `semester`, `college_no`, `class_no`, `course_no`, `teacher_no`, `course_attr`, `student_number`, `weeks_sum`, `weeks_number`, `is_fix`, `class_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (116, '2015-2016-1', '01', '2023010101', '100003', '01100007', '02', 48, 12, 2, '1', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for cms_course_plan
-- ----------------------------
DROP TABLE IF EXISTS `cms_course_plan`;
CREATE TABLE `cms_course_plan` (
  `course_plan_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `college_no` varchar(20) DEFAULT NULL,
  `class_no` varchar(20) DEFAULT NULL,
  `course_no` varchar(10) DEFAULT NULL,
  `teacher_no` varchar(20) DEFAULT NULL,
  `classroom_no` varchar(10) DEFAULT NULL,
  `class_time` varchar(10) DEFAULT NULL,
  `weeks_sum` int(4) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`course_plan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=780 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cms_course_plan
-- ----------------------------
BEGIN;
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (714, '01', '2023010301', '100048', '01100007', '04-105', '05', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (715, '01', '2023010301', '100041', '01100009', '04-208', '20', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (716, '01', '2023010301', '100041', '01100009', '04-207', '11', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (717, '01', '2023010301', '100045', '01100010', '04-108', '18', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (718, '01', '2023010301', '100045', '01100010', '04-201', '24', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (719, '01', '2023010101', '100001', '01100011', '04-208', '02', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (720, '01', '2023010101', '100002', '01100003', '04-102', '19', 7, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (721, '01', '2023010101', '100002', '01100003', '04-104', '01', 7, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (722, '01', '2023010101', '100008', '01100004', '04-303', '22', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (723, '01', '2023010101', '100008', '01100004', '04-208', '12', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (724, '01', '2023010101', '100040', '01100005', '04-106', '10', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (725, '01', '2023010101', '100040', '01100005', '04-302', '25', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (726, '01', '2023010101', '100040', '01100005', '04-203', '24', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (727, '01', '2023010101', '100003', '01100007', '04-107', '15', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (728, '02', '2023020101', '100013', '02100003', '01-302', '05', 4, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (729, '02', '2023020101', '100014', '02100001', '01-103', '10', 9, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (730, '02', '2023020101', '100014', '02100001', '01-301', '08', 9, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (731, '02', '2023020101', '100014', '02100005', '01-103', '14', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (732, '02', '2023020101', '100014', '02100005', '01-309', '03', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (733, '02', '2023020101', '100018', '01100003', '01-201', '15', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (734, '02', '2023020301', '100014', '02100004', '01-209', '08', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (735, '02', '2023020301', '100014', '02100004', '01-307', '14', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (736, '02', '2023020301', '100014', '02100002', '01-308', '19', 9, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (737, '02', '2023020301', '100014', '02100002', '01-106', '15', 9, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (738, '02', '2023020301', '100013', '02100003', '01-306', '03', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (739, '02', '2023020301', '100013', '02100003', '01-210', '06', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (740, '02', '2023020301', '100018', '01100003', '01-309', '24', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (741, '03', '2023030101', '100004', '03100002', '01-105', '03', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (742, '03', '2023030101', '100004', '03100002', '01-110', '14', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (743, '04', '2023040101', '100022', '03100002', '05-301', '23', 11, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (744, '04', '2023040101', '100012', '04100002', '05-103', '01', 14, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (745, '04', '2023040101', '100012', '04100002', '05-204', '20', 14, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (746, '04', '2023040101', '100022', '04100003', '05-309', '03', 8, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (747, '05', '2023050101', '100021', '05100001', '09-309', '17', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (748, '05', '2023050101', '100021', '05100001', '09-209', '13', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (749, '05', '2023050101', '100031', '05100001', '03-103', '09', 18, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (750, '05', '2023050101', '100031', '05100001', '03-307', '06', 18, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (751, '05', '2023050101', '100032', '05100002', '03-305', '23', 18, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (752, '05', '2023050101', '100032', '05100002', '03-304', '03', 18, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (753, '05', '2023050101', '100009', '05100006', '03-206', '02', 18, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (754, '05', '2023050101', '100009', '05100006', '03-109', '04', 18, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (755, '05', '2023050101', '100021', '05100005', '09-203', '05', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (756, '05', '2023050101', '100021', '05100005', '09-108', '21', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (757, '06', '2023060201', '100033', '06100002', '03-302', '02', 14, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (758, '06', '2023060201', '100033', '06100002', '03-306', '08', 14, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (759, '06', '2023060201', '100019', '06100003', '03-206', '01', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (760, '06', '2023060201', '100019', '06100003', '03-305', '04', 12, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (761, '06', '2023060201', '100019', '06100001', '03-106', '03', 16, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (762, '06', '2023060201', '100019', '06100001', '03-106', '18', 16, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (763, '06', '2023060201', '100044', '06100004', '03-308', '24', 18, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (764, '06', '2023060201', '100044', '06100004', '03-201', '05', 18, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (765, '07', '2023070101', '100016', '07100001', '07-105', '11', 15, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (766, '07', '2023070101', '100016', '07100001', '07-110', '21', 15, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (767, '07', '2023070101', '100017', '07100001', '07-202', '25', 15, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (768, '07', '2023070101', '100017', '07100001', '07-110', '19', 15, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (769, '07', '2023070101', '100023', '07100003', '07-304', '23', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (770, '07', '2023070101', '100023', '07100003', '07-209', '22', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (771, '08', '2023080101', '100011', '08100004', '06-105', '13', 14, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (772, '08', '2023080101', '100011', '08100004', '06-106', '11', 14, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (773, '08', '2023080101', '100026', '08100004', '06-307', '25', 18, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (774, '09', '2023090101', '100001', '01100002', '02-204', '02', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (775, '09', '2023090101', '100001', '01100002', '02-106', '18', 10, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (776, '09', '2023090101', '100035', '09100001', '02-103', '19', 16, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (777, '09', '2023090101', '100035', '09100001', '02-206', '09', 16, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (778, '09', '2023090101', '100036', '09100001', '02-302', '04', 16, '2015-2016-1', NULL, NULL, NULL, NULL);
INSERT INTO `cms_course_plan` (`course_plan_id`, `college_no`, `class_no`, `course_no`, `teacher_no`, `classroom_no`, `class_time`, `weeks_sum`, `semester`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (779, '09', '2023090101', '100036', '09100001', '02-301', '24', 16, '2015-2016-1', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for enter_class
-- ----------------------------
DROP TABLE IF EXISTS `enter_class`;
CREATE TABLE `enter_class` (
  `class_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `class_no` varchar(255) NOT NULL COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `volume` bigint(20) NOT NULL COMMENT '容量',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='教室表';

-- ----------------------------
-- Records of enter_class
-- ----------------------------
BEGIN;
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, '2023010101', '计算机科学与技术1班', 48, 'admin', 'admin', '2023-03-25 10:25:50', '2023-03-25 10:25:50');
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, '2023010201', '网络工程1班', 53, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (3, '2023010301', '物联网1班', 47, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (4, '2023010302', '物联网2班', 45, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (5, '2023020101', '汉语言文学1班', 36, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (6, '2023020102', '汉语言文学2班', 40, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (7, '2023020201', '汉语言非师1班', 55, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (8, '2023020301', '中文教育1班', 46, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (9, '2023030101', '商务英语1班', 37, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (10, '2023030201', '师范英语1班', 46, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (11, '2023040101', '环境工程1班', 32, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (12, '2023040102', '环境工程2班', 35, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (13, '2023040201', '环境检测1班', 37, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (14, '2023050101', '临床1班', 51, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (15, '2023050102', '临床2班', 49, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (16, '2023050103', '临床3班', 54, 'admin	', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (17, '2023050104', '临床4班', 53, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (18, '2023060101', '针灸1班', 32, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (19, '2023060201', '康复1班', 33, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (20, '2023070101', '音乐表演1班', 44, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (21, '2023070201', '音乐教育1班', 45, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (22, '2023080101', '产品设计1班', 43, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (23, '2023080201', '美术教育1班', 45, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (24, '2023090101', '社会工作1班', 34, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (25, '2023090201', '法学教育1班', 32, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (26, '2023100101', '应用数学1班', 45, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (27, '2023100201', '数学教育1班', 43, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (28, '2023110101', '经济管理1班', 45, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (29, '2023110101', '经济管理2班', 46, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (30, '2023120101', '药物试剂1班', 48, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (31, '2023130101', '自动化工程1班', 52, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (32, '2023130102', '自动化工程2班', 49, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (33, '2023130201', '电子工程1班', 61, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (34, '2023130202', '电子工程2班', 59, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (35, '2023140101', '护理1班', 45, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (36, '2023140102', '护理2班', 43, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (37, '2023140103', '护理3班', 45, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (38, '2023140104', '护理4班', 47, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (39, '2023150101', '体育教育1班', 43, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (40, '2023150102', '体育教育2班', 45, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (41, '2023150201', '体育管理1班', 51, 'admin', NULL, '2023-03-25 10:25:50', NULL);
INSERT INTO `enter_class` (`class_id`, `class_no`, `name`, `volume`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (42, '2023150202', '体育管理2班', 32, 'admin', NULL, '2023-03-25 10:25:50', NULL);
COMMIT;

-- ----------------------------
-- Table structure for enter_classroom
-- ----------------------------
DROP TABLE IF EXISTS `enter_classroom`;
CREATE TABLE `enter_classroom` (
  `classroom_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `teach_build_id` bigint(20) DEFAULT NULL COMMENT '教学区ID',
  `teach_build_no` varchar(255) NOT NULL COMMENT '教学楼编号',
  `classroom_no` varchar(255) NOT NULL COMMENT '教室编号',
  `capacity` bigint(20) DEFAULT NULL COMMENT '容量',
  `classroom_attr` varchar(255) DEFAULT NULL COMMENT '属性',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`classroom_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of enter_classroom
-- ----------------------------
BEGIN;
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1, 1, '01', '01-101', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (2, 1, '01', '01-102', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (3, 1, '01', '01-103', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (4, 1, '01', '01-104', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (5, 1, '01', '01-105', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (6, 1, '01', '01-106', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (7, 1, '01', '01-107', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (8, 1, '01', '01-108', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (9, 1, '01', '01-109', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (10, 1, '01', '01-110', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (14, 1, '01', '01-201', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (15, 1, '01', '01-202', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (16, 1, '01', '01-203', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (17, 1, '01', '01-204', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (18, 1, '01', '01-205', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (19, 1, '01', '01-206', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (20, 1, '01', '01-207', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (21, 1, '01', '01-208', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (22, 1, '01', '01-209', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (23, 1, '01', '01-210', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (24, 1, '01', '01-301', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (25, 1, '01', '01-302', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (26, 1, '01', '01-303', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (27, 1, '01', '01-304', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (28, 1, '01', '01-305', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (29, 1, '01', '01-306', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (30, 1, '01', '01-307', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (31, 1, '01', '01-308', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (32, 1, '01', '01-309', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (33, 1, '01', '01-310', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (34, 2, '02', '02-101', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (35, 2, '02', '02-102', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (36, 2, '02', '02-103', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (37, 2, '02', '02-104', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (38, 2, '02', '02-105', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (39, 2, '02', '02-106', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (40, 2, '02', '02-107', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (41, 2, '02', '02-108', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (42, 2, '02', '02-109', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (43, 2, '02', '02-110', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (44, 2, '02', '02-201', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (45, 2, '02', '02-202', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (46, 2, '02', '02-203', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (47, 2, '02', '02-204', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (48, 2, '02', '02-205', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (49, 2, '02', '02-206', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (50, 2, '02', '02-207', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (51, 2, '02', '02-208', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (52, 2, '02', '02-209', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (53, 2, '02', '02-210', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (54, 2, '02', '02-301', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (55, 2, '02', '02-302', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (56, 2, '02', '02-303', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (57, 2, '02', '02-304', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (58, 2, '02', '02-305', 60, '07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (59, 2, '02', '02-306', 70, '07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (60, 2, '02', '02-307', 120, '07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (61, 2, '02', '02-308', 140, '07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (62, 2, '02', '02-309', 140, '07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (63, 2, '02', '02-310', 50, '07', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (64, 3, '03', '03-101', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (65, 3, '03', '03-102', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (66, 3, '03', '03-103', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (67, 3, '03', '03-104', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (68, 3, '03', '03-105', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (69, 3, '03', '03-106', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (70, 3, '03', '03-107', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (71, 3, '03', '03-108', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (72, 3, '03', '03-109', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (73, 3, '03', '03-110', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (74, 3, '03', '03-201', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (75, 3, '03', '03-202', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (76, 3, '03', '03-203', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (77, 3, '03', '03-204', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (78, 3, '03', '03-205', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (79, 3, '03', '03-206', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (80, 3, '03', '03-207', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (81, 3, '03', '03-208', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (82, 3, '03', '03-209', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (83, 3, '03', '03-210', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (84, 3, '03', '03-301', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (85, 3, '03', '03-302', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (86, 3, '03', '03-303', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (87, 3, '03', '03-304', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (88, 3, '03', '03-305', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (89, 3, '03', '03-306', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (90, 3, '03', '03-307', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (91, 3, '03', '03-308', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (92, 4, '04', '04-101', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (93, 4, '04', '04-102', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (94, 4, '04', '04-103', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (95, 4, '04', '04-104', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (96, 4, '04', '04-105', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (97, 4, '04', '04-106', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (98, 4, '04', '04-107', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (99, 4, '04', '04-108', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (100, 4, '04', '04-109', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (101, 4, '04', '04-110', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (102, 4, '04', '04-201', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (103, 4, '04', '04-202', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (104, 4, '04', '04-203', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (105, 4, '04', '04-204', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (106, 4, '04', '04-205', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (107, 4, '04', '04-206', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (108, 4, '04', '04-207', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (109, 4, '04', '04-208', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (110, 4, '04', '04-209', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (111, 4, '04', '04-210', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (112, 4, '04', '04-301', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (113, 4, '04', '04-302', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (114, 4, '04', '04-303', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (115, 4, '04', '04-304', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (116, 4, '04', '04-305', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (117, 4, '04', '04-306', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (118, 4, '04', '04-307', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (119, 4, '04', '04-308', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (120, 5, '05', '05-101', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (121, 5, '05', '05-102', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (122, 5, '05', '05-103', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (123, 5, '05', '05-104', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (124, 5, '05', '05-105', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (125, 5, '05', '05-106', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (126, 5, '05', '05-107', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (127, 5, '05', '05-108', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (128, 5, '05', '05-109', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (129, 5, '05', '05-110', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (130, 5, '05', '05-201', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (131, 5, '05', '05-202', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (132, 5, '05', '05-203', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (133, 5, '05', '05-204', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (134, 5, '05', '05-205', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (135, 5, '05', '05-206', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (136, 5, '05', '05-207', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (137, 5, '05', '05-208', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (138, 5, '05', '05-209', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (139, 5, '05', '05-210', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (140, 5, '05', '05-301', 70, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (141, 5, '05', '05-302', 60, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (142, 5, '05', '05-303', 60, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (143, 5, '05', '05-304', 70, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (144, 5, '05', '05-305', 60, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (145, 5, '05', '05-306', 70, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (146, 5, '05', '05-307', 120, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (147, 5, '05', '05-308', 140, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (148, 5, '05', '05-309', 140, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (149, 5, '05', '05-310', 50, '05', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (150, 6, '06', '06-101', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (151, 6, '06', '06-102', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (152, 6, '06', '06-103', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (153, 6, '06', '06-104', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (154, 6, '06', '06-105', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (155, 6, '06', '06-106', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (156, 6, '06', '06-107', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (157, 6, '06', '06-108', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (158, 6, '06', '06-109', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (159, 6, '06', '06-110', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (160, 6, '06', '06-201', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (161, 6, '06', '06-202', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (162, 6, '06', '06-203', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (163, 6, '06', '06-204', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (164, 6, '06', '06-205', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (165, 6, '06', '06-206', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (166, 6, '06', '06-207', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (167, 6, '06', '06-208', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (168, 6, '06', '06-209', 140, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (169, 6, '06', '06-210', 50, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (170, 6, '06', '06-301', 70, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (171, 6, '06', '06-302', 60, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (172, 6, '06', '06-303', 60, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (173, 6, '06', '06-304', 70, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (174, 6, '06', '06-305', 60, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (175, 6, '06', '06-306', 70, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (176, 6, '06', '06-307', 120, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (177, 6, '06', '06-308', 140, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (178, 6, '06', '06-309', 140, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (179, 6, '06', '06-310', 50, '09', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (180, 7, '07', '07-101', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (181, 7, '07', '07-102', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (182, 7, '07', '07-103', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (183, 7, '07', '07-104', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (184, 7, '07', '07-105', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (185, 7, '07', '07-106', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (186, 7, '07', '07-107', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (187, 7, '07', '07-108', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (188, 7, '07', '07-109', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (189, 7, '07', '07-110', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (190, 7, '07', '07-201', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (191, 7, '07', '07-202', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (192, 7, '07', '07-203', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (193, 7, '07', '07-204', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (194, 7, '07', '07-205', 60, '06', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (195, 7, '07', '07-206', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (196, 7, '07', '07-207', 120, '06', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (197, 7, '07', '07-208', 140, '06', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (198, 7, '07', '07-209', 140, '06', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (199, 7, '07', '07-210', 50, '06', '', '', '2023-04-03 10:12:16', '', '2023-04-03 10:12:16');
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (200, 7, '07', '07-301', 70, '06', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (201, 7, '07', '07-302', 60, '06', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (202, 7, '07', '07-303', 60, '06', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (203, 7, '07', '07-304', 70, '06', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (204, 7, '07', '07-305', 60, '11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (205, 7, '07', '07-306', 70, '11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (206, 7, '07', '07-307', 120, '11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (207, 7, '07', '07-308', 140, '11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (208, 7, '07', '07-309', 140, '11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (209, 7, '07', '07-310', 50, '11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (210, 8, '08', '08-101', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (211, 8, '08', '08-102', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (212, 8, '08', '08-103', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (213, 8, '08', '08-104', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (214, 8, '08', '08-105', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (215, 8, '08', '08-106', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (216, 8, '08', '08-107', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (217, 8, '08', '08-108', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (218, 8, '08', '08-109', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (219, 8, '08', '08-110', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (220, 8, '08', '08-201', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (221, 8, '08', '08-202', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (222, 8, '08', '08-203', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (223, 8, '08', '08-204', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (224, 8, '08', '08-205', 60, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (225, 8, '08', '08-206', 70, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (226, 8, '08', '08-207', 120, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (227, 8, '08', '08-208', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (228, 8, '08', '08-209', 140, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (229, 8, '08', '08-210', 50, '01', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (230, 8, '08', '08-301', 70, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (231, 8, '08', '08-302', 60, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (232, 8, '08', '08-303', 60, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (233, 8, '08', '08-304', 70, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (234, 8, '08', '08-305', 60, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (235, 8, '08', '08-306', 70, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (236, 8, '08', '08-307', 120, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (237, 8, '08', '08-308', 140, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (238, 8, '08', '08-309', 140, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (239, 8, '08', '08-310', 50, '03', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (240, 9, '09', '09-101', 70, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (241, 9, '09', '09-102', 60, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (242, 9, '09', '09-103', 60, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (243, 9, '09', '09-104', 70, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (244, 9, '09', '09-105', 60, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (245, 9, '09', '09-106', 70, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (246, 9, '09', '09-107', 120, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (247, 9, '09', '09-108', 140, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (248, 9, '09', '09-109', 140, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (249, 9, '09', '09-110', 50, '08', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (250, 9, '09', '09-201', 70, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (251, 9, '09', '09-202', 60, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (252, 9, '09', '09-203', 60, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (253, 9, '09', '09-204', 70, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (254, 9, '09', '09-205', 60, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (255, 9, '09', '09-206', 70, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (256, 9, '09', '09-207', 120, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (257, 9, '09', '09-208', 140, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (258, 9, '09', '09-209', 140, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (259, 9, '09', '09-210', 50, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (260, 9, '09', '09-301', 70, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (261, 9, '09', '09-302', 60, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (262, 9, '09', '09-303', 60, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (263, 9, '09', '09-304', 70, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (264, 9, '09', '09-305', 60, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (265, 9, '09', '09-306', 70, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (266, 9, '09', '09-307', 120, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (267, 9, '09', '09-308', 140, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (268, 9, '09', '09-309', 140, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (269, 9, '09', '09-310', 50, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (270, 10, '10', '09-101', 70, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (271, 10, '10', '09-102', 60, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (272, 10, '10', '09-103', 60, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (273, 10, '10', '09-104', 70, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (274, 10, '10', '09-105', 60, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (275, 10, '10', '09-106', 70, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (276, 10, '10', '09-107', 120, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (277, 10, '10', '09-108', 140, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (278, 10, '10', '09-109', 140, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (279, 10, '10', '09-110', 50, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (280, 10, '10', '09-201', 70, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (281, 10, '10', '09-202', 60, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (282, 10, '10', '09-203', 60, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (283, 10, '10', '09-204', 70, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (284, 10, '10', '09-205', 60, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (285, 10, '10', '09-206', 70, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (286, 10, '10', '09-207', 120, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (287, 10, '10', '09-208', 140, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (288, 10, '10', '09-209', 140, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (289, 10, '10', '09-210', 50, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (290, 10, '10', '09-301', 70, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (291, 10, '10', '09-302', 60, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (292, 10, '10', '09-303', 60, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (293, 10, '10', '09-304', 70, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (294, 10, '10', '09-305', 60, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (295, 10, '10', '09-306', 70, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (296, 10, '10', '09-307', 120, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (297, 10, '10', '09-308', 140, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (298, 10, '10', '09-309', 140, '04', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_classroom` (`classroom_id`, `teach_build_id`, `teach_build_no`, `classroom_no`, `capacity`, `classroom_attr`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (299, 10, '10', '09-310', 50, '04', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for enter_college
-- ----------------------------
DROP TABLE IF EXISTS `enter_college`;
CREATE TABLE `enter_college` (
  `college_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `college_no` varchar(20) DEFAULT NULL COMMENT '编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名字',
  `teach_build_id` bigint(20) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`college_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of enter_college
-- ----------------------------
BEGIN;
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1, '01', '软件与通信工程学院', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (2, '02', '文学与新闻传播学院', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (3, '03', '外国语学院', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (4, '04', '化学与环境工程学院', 5, NULL, NULL, NULL, 'admin', '2023-03-28 14:19:19');
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (5, '05', '临床学院', 3, NULL, NULL, NULL, 'admin', '2023-03-28 13:43:14');
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (6, '06', '康复学院', 3, NULL, NULL, NULL, 'admin', '2023-03-28 13:42:41');
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (7, '07', '音乐学院', 7, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (8, '08', '美术学院', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (9, '09', '法学院', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (10, '10', '数学与金融学院', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (11, '11', '经济与管理学院', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (12, '12', '药学院', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (13, '13', '电子与电气工程学院', 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (14, '14', '护理学院', 10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_college` (`college_id`, `college_no`, `name`, `teach_build_id`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (15, '15', '体育学院', 4, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for enter_course
-- ----------------------------
DROP TABLE IF EXISTS `enter_course`;
CREATE TABLE `enter_course` (
  `course_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID ',
  `course_no` varchar(255) NOT NULL COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '课程名称',
  `course_attr` varchar(255) NOT NULL COMMENT '课程属性',
  `type` varchar(255) NOT NULL COMMENT '课程类型',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enter_course
-- ----------------------------
BEGIN;
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, '100001', '马克思原理', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, '100002', '计算机组成原理', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (3, '100003', '大学物理', '02', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (4, '100004', '毛泽东思想概论', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (5, '100005', '中国古诗词鉴赏', '02', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (6, '100006', '大学英语', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (7, '100007', '大学体育', '03', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (8, '100008', '嵌入式原理', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (9, '100009', '临床免疫', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (10, '100010', '新闻传播', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (11, '100011', '美术鉴赏', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (12, '100012', '环境检测', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (13, '100013', '军事理论', '02', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (14, '100014', '文学概论', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (15, '100015', '青少年心理', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (16, '100016', '小型音乐表演', '11', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (17, '100017', '基本乐理', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (18, '100018', '计算机应用基础', '02', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (19, '100019', '针灸实操', '02', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (20, '100020', '应用数学', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (21, '100021', '人体解剖实验', '04', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (22, '100022', '环境检测实验', '05', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (23, '100023', '舞蹈表演', '06', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (24, '100024', '播音表演', '07', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (25, '100025', '电路设计实践', '08', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (26, '100026', '美术写生', '09', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (27, '100027', '计算机实验', '10', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (29, '100028', '物理实验', '12', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (30, '100029', '英语翻译', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (31, '100030', '英语写作', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (32, '100031', '免疫系统', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (34, '100032', '微生物致病原理', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (35, '100033', '康复理论', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (36, '100034', '人体穴位', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (37, '100035', '中国基本法', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (38, '100036', '离散数学', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (39, '100037', '高等数学', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (40, '100038', '线性代数', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (41, '100039', 'C语言', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (42, '100040', 'C++', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (44, '100041', '数据结构', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (45, '100042', '数据库原理', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (46, '100043', 'ASP.NET', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (47, '100044', 'ORACLE数据库', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (48, '100045', '网络原理', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (49, '100046', '就业指导', '02', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (50, '100047', '编译原理', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (52, '100048', '大学生职业规划', '02', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (53, '100049', '创新创业指导', '02', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (54, '100050', '网络新闻编辑', '01', 'public', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `enter_course` (`course_id`, `course_no`, `name`, `course_attr`, `type`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (55, '100051', '网络传播', '01', 'public', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for enter_semester
-- ----------------------------
DROP TABLE IF EXISTS `enter_semester`;
CREATE TABLE `enter_semester` (
  `semester_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `semester` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enter_semester
-- ----------------------------
BEGIN;
INSERT INTO `enter_semester` (`semester_id`, `semester`, `remarks`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1, '2015-2016-1', '', 'admin', '2023-03-30 10:10:16', 'admin', '2023-03-30 10:10:16');
COMMIT;

-- ----------------------------
-- Table structure for enter_teach_build
-- ----------------------------
DROP TABLE IF EXISTS `enter_teach_build`;
CREATE TABLE `enter_teach_build` (
  `teach_build_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `teach_build_no` varchar(255) NOT NULL COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`teach_build_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enter_teach_build
-- ----------------------------
BEGIN;
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, '01', '1号教学楼', '333', 'admin', 'admin', '2023-03-25 18:15:03', '2023-03-25 18:15:03');
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, '02', '2号教学楼', '', 'admin', 'admin', '2023-03-25 18:17:04', '2023-03-25 18:17:04');
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (3, '03', '3号教学楼', NULL, 'admin', 'admin', '2023-03-25 18:20:15', '2023-03-28 13:43:14');
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (4, '04', '4号教学楼', NULL, 'admin', 'admin', '2023-03-25 18:20:15', '2023-03-25 18:20:15');
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (5, '05', '化生楼', NULL, 'admin', 'admin', '2023-03-25 18:20:15', '2023-03-28 14:19:19');
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (6, '06', '美术楼', NULL, 'admin', 'admin', '2023-03-25 18:20:15', '2023-03-28 13:43:29');
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (7, '07', '音乐楼', NULL, 'admin', 'admin', '2023-03-25 18:20:15', '2023-03-28 13:43:47');
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (8, '08', '体育楼', NULL, 'admin', 'admin', '2023-03-25 18:20:15', '2023-03-25 18:20:15');
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (9, '09', '实验大楼', NULL, 'admin', 'admin', '2023-03-25 18:20:15', '2023-03-25 18:20:15');
INSERT INTO `enter_teach_build` (`teach_build_id`, `teach_build_no`, `name`, `remarks`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (10, '10', '医学实验楼', NULL, 'admin', 'admin', '2023-03-25 18:20:15', '2023-03-25 18:20:15');
COMMIT;

-- ----------------------------
-- Table structure for enter_teacher
-- ----------------------------
DROP TABLE IF EXISTS `enter_teacher`;
CREATE TABLE `enter_teacher` (
  `teacher_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `teacher_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `college_id` bigint(20) DEFAULT NULL,
  `age` int(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`teacher_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of enter_teacher
-- ----------------------------
BEGIN;
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (1, '01100001', '李小王', 1, 46, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (2, '01100002', '谢天', 1, 37, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (3, '01100003', '张三丰', 1, 45, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (4, '01100004', '郭广辉', 1, 48, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (5, '01100005', '王益利', 1, 36, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (6, '01100007', '刘思佳', 1, 34, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (7, '02100001', '周玲', 2, 34, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (8, '02100002', '黎佳果', 2, 45, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (9, '02100003', '刘致希', 2, 48, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (10, '02100004', '杨逸庭', 2, 33, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (11, '02100005', '唐影', 2, 43, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (12, '02100006', '陈茜', 2, 47, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (13, '03100001', '李佳琳', 3, 40, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (14, '03100002', '李霞', 3, 39, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (15, '03100003', '李璐', 3, 32, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (16, '03100004', '王鸿鑫', 3, 36, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (17, '03100005', '文琳', 3, 33, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (18, '03100007', '王晶', 3, 34, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (19, '04100001', '龙利星', 4, 46, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (20, '04100002', '郭文峰', 4, 43, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (21, '04100003', '李烁宇', 4, 35, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (22, '04100004', '邓玉坤', 4, 49, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (23, '04100005', '丁赛', 4, 42, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (24, '04100006', '王坤', 4, 43, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (25, '04100007', '李星', 4, 42, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (26, '05100001', '罗湘文', 5, 52, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (27, '05100002', '刘博', 5, 42, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (28, '05100003', '刘湘', 5, 47, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (29, '05100004', '付琦', 5, 48, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (30, '05100005', '李梦', 5, 48, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (31, '05100006', '阳向鸿', 5, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (32, '05100007', '阳辉', 5, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (33, '05100008', '严刑', 5, 51, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (34, '05100009', '刘辉', 5, 48, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (35, '06100001', '刘呀', 6, 49, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (36, '06100002', '王二', 6, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (37, '06100003', '陈睿', 6, 46, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (38, '06100004', '陈天骄', 6, 51, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (39, '06100005', '康阳', 6, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (40, '06100006', '邓香玲', 6, 46, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (41, '07100001', '宫禧', 7, 48, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (42, '07100002', '阳茜', 7, 45, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (43, '07100003', '欧阳锋', 7, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (44, '07100004', '程心', 7, 45, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (45, '07100004', '程心', 7, 45, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (46, '07100005', '刘旭', 7, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (47, '08100001', '伊脉', 8, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (48, '08100002', '游海霞', 8, 46, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (49, '08100003', '章子秋', 8, 47, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (50, '08100004', '唐慧玲', 8, 48, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (51, '08100005', '陈澄珏', 8, 47, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (52, '08100006', '廖维涵', 8, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (53, '09100001', '何耀文', 9, 37, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (54, '09100002', '李月庭', 9, 40, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (55, '09100003', '陈云婷', 9, 47, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (56, '09100004', '颜亚兰', 9, 43, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (57, '09100005', '陈浩文', 9, 45, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (58, '10100001', '陈敏怡', 10, 48, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (59, '10100002', '梁静仪', 10, 45, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (60, '10100003', '徐雁鸿', 10, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (61, '10100004', '向飞鹏', 10, 45, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (62, '10100005', '谷凯丽', 10, 47, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (63, '10100006', '郭潘志', 10, 46, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (64, '11100001', '罗阳', 11, 52, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (65, '11100002', '胡婷', 11, 45, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (66, '11100003', '宁文琴', 11, 35, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (67, '11100004', '李亚男', 11, 37, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (68, '11100005', '罗天阳', 11, 43, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (69, '11100006', '赵小娇', 11, 42, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (70, '12100001', '邓雪乔', 12, 43, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (71, '12100002', '赵雪', 12, 49, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (72, '12100003', '王华', 12, 41, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (73, '12100004', '陈雪刚', 12, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (74, '12100005', '王小明', 12, 47, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (75, '12100006', '王也', 12, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (76, '12100007', '陈乔', 12, 36, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (77, '13100001', '田明金', 13, 42, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (78, '13100002', '赵卓', 13, 46, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (79, '13100003', '何柱铭', 13, 42, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (80, '13100004', '徐娉婷', 13, 41, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (81, '13100005', '李亿豪', 13, 48, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (82, '13100006', '肖禄', 13, 37, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (83, '13100007', '王文康', 13, 39, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (84, '14100001', '吴皖瑶', 14, 39, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (85, '14100002', '邓香玲', 14, 42, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (86, '14100003', '蔡娥', 14, 46, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (87, '14100004', '谭艳', 14, 42, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (88, '14100005', '王娟', 14, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (89, '14100006', '赵娟', 14, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (90, '14100007', '王凯', 14, 45, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (91, '15100001', '杨江南', 15, 41, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (92, '15100002', '朱登科', 15, 42, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (93, '15100003', '刘开郎', 15, 42, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (94, '15100004', '曾上海', 15, 39, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (95, '15100005', '汤旭煌', 15, 47, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (96, '15100006', '何友情', 15, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (97, '15100007', '陈陪陪', 15, 46, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (98, '15100008', '王帅', 15, 47, '副教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (99, '15100009', '将胜利', 15, 42, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (100, '15100010', '严肃', 15, 45, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (101, '01100008', '张华', 1, 37, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (102, '01100009', '刘强', 1, 52, '教授', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (103, '01100010', '张忠周', 1, 43, '讲师', NULL, NULL, NULL, NULL);
INSERT INTO `enter_teacher` (`teacher_id`, `teacher_no`, `name`, `college_id`, `age`, `title`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES (104, '01100011', '陈文福', 1, 37, '讲师', NULL, NULL, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` (`dict_id`, `name`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, 'user_status', '用户状态', NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_dict` (`dict_id`, `name`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (3, 'course_type', '课程类型', 'admin', 'admin', '2023-03-22 21:34:04', '2023-03-22 21:34:04');
INSERT INTO `sys_dict` (`dict_id`, `name`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (5, 'task_status', '教学任务', 'admin', 'admin', '2023-03-30 11:08:21', '2023-03-30 11:08:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典详情';

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, 1, '激活', 'true', 1, NULL, NULL, '2023-03-03 11:15:49', NULL);
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, 1, '禁用', 'false', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (5, 3, '公共课', 'public', 1, 'admin', 'admin', '2023-03-22 21:34:44', '2023-03-22 21:34:50');
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (6, 3, '专业课', 'major', 2, 'admin', 'admin', '2023-03-22 21:35:46', '2023-03-22 21:35:46');
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (7, 3, '选修课', 'elective', 3, 'admin', 'admin', '2023-03-22 21:36:30', '2023-03-22 21:36:38');
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (11, 5, '固定', '2', 1, 'admin', 'admin', '2023-03-30 11:09:37', '2023-03-30 14:03:13');
INSERT INTO `sys_dict_detail` (`detail_id`, `dict_id`, `label`, `value`, `dict_sort`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (12, 5, '灵活', '1', 2, 'admin', 'admin', '2023-03-30 11:09:51', '2023-03-30 14:03:18');
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统菜单';

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
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (92, NULL, 7, 0, '录入管理', NULL, NULL, 5, 'education', 'enter', b'0', b'0', b'0', NULL, 'admin', 'admin', '2023-03-25 20:17:41', '2023-03-25 20:17:41');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (97, 92, 3, 1, '教学区管理', 'TeachBuild', 'enter/teachBuild/index', 4, 'email', 'teachBuild', b'0', b'0', b'0', 'teachBuild:list', 'admin', 'admin', '2023-03-25 20:22:50', '2023-03-25 20:22:50');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (98, 97, 0, 2, '新增教学区', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'teachBuild:add', 'admin', 'admin', '2023-03-25 20:23:47', '2023-03-25 20:23:47');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (99, 97, 0, 2, '编辑教学区', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'teachuild:edit', 'admin', 'admin', '2023-03-25 20:24:31', '2023-03-25 20:24:31');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (100, 97, 0, 2, '删除教学区', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'teachBuild:del', 'admin', 'admin', '2023-03-25 20:24:57', '2023-03-25 20:24:57');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (101, 92, 3, 1, '教室管理', 'Classroom', 'enter/classroom/index', 8, 'redis', 'classroom', b'0', b'0', b'0', 'classroom:list', 'admin', 'admin', '2023-03-25 20:27:38', '2023-03-25 20:27:38');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (102, 101, 0, 2, '新增教室', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'classroom:add', 'admin', 'admin', '2023-03-25 20:28:14', '2023-03-25 20:28:14');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (103, 101, 0, 2, '编辑教室', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'classroom:edit', 'admin', 'admin', '2023-03-25 20:28:46', '2023-03-25 20:28:46');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (104, 101, 0, 2, '删除教室', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'classroom:del', 'admin', 'admin', '2023-03-25 20:29:12', '2023-03-25 20:29:12');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (105, 92, 3, 1, '班级管理', 'Classes', 'enter/classes/index', 12, 'markdown', 'classes', b'0', b'0', b'0', 'class:list', 'admin', 'admin', '2023-03-25 20:30:57', '2023-03-25 20:30:57');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (106, 105, 0, 2, '新增班级', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'class:add', 'admin', 'admin', '2023-03-25 20:31:22', '2023-03-25 20:31:22');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (107, 105, 0, 2, '编辑班级', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'class:edit', 'admin', 'admin', '2023-03-25 20:32:22', '2023-03-25 20:32:22');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (108, 105, 0, 2, '删除班级', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'class:del', 'admin', 'admin', '2023-03-25 20:32:49', '2023-03-25 20:32:49');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (109, 92, 3, 1, '课程管理', 'Course', 'enter/course/index', 18, 'source', 'course', b'0', b'0', b'0', 'course:list', 'admin', 'admin', '2023-03-25 20:34:09', '2023-03-25 20:34:09');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (110, 109, 0, 2, '新增课程', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'course:add', 'admin', 'admin', '2023-03-25 20:34:32', '2023-03-25 20:34:32');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (111, 109, 0, 2, '编辑课程', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'course:edit', 'admin', 'admin', '2023-03-25 20:34:59', '2023-03-25 20:34:59');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (112, 109, 0, 2, '删除课程', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'course:del', 'admin', 'admin', '2023-03-25 20:35:26', '2023-03-25 20:35:26');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (113, 92, 3, 1, '学院管理', 'College', 'enter/college/index', 5, 'tools', 'college', b'0', b'0', b'0', 'college:list', 'admin', 'admin', '2023-03-27 19:11:44', '2023-03-27 19:11:44');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (114, 113, 0, 2, '新增学院', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'college:add', 'admin', 'admin', '2023-03-27 19:12:48', '2023-03-27 19:12:48');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (115, 113, 0, 2, '编辑学院', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'college:edit', 'admin', 'admin', '2023-03-27 19:13:16', '2023-03-27 19:13:16');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (116, 113, 0, 2, '删除学院', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'college:del', 'admin', 'admin', '2023-03-27 19:13:43', '2023-03-27 19:13:43');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (117, 92, 3, 1, '教师管理', 'Teacher', 'enter/teacher/index', 9, 'user1', 'teacher', b'0', b'0', b'0', 'teacher:list', 'admin', 'admin', '2023-03-27 19:15:56', '2023-03-27 19:15:56');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (118, NULL, 1, 0, '排课管理', NULL, NULL, 5, 'email', 'schedule', b'0', b'0', b'0', NULL, 'admin', 'admin', '2023-03-28 20:09:41', '2023-03-28 20:09:41');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (119, 117, 0, 2, '新增教师', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'teacher:add', 'admin', 'admin', '2023-03-28 20:10:30', '2023-03-28 20:10:30');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (120, 117, 0, 2, '编辑教师', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'teacher:edit', 'admin', 'admin', '2023-03-28 20:10:59', '2023-03-28 20:10:59');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (121, 117, 0, 2, '删除教师', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'teacher:del', 'admin', 'admin', '2023-03-28 20:11:38', '2023-03-28 20:11:38');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (122, 118, 3, 1, '教学任务', 'Task', 'schedule/task/index', 2, 'dictionary', 'task', b'0', b'0', b'0', 'task:list', 'admin', 'admin', '2023-03-28 20:19:59', '2023-03-28 20:21:17');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (123, 122, 0, 2, '新增教学任务', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'task:add', 'admin', 'admin', '2023-03-28 20:20:51', '2023-03-28 20:20:51');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (124, 122, 0, 2, '编辑教学任务', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'task:edit', 'admin', 'admin', '2023-03-28 20:22:14', '2023-03-28 20:22:14');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (125, 122, 0, 2, '删除教学任务', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'task:del', 'admin', 'admin', '2023-03-28 20:22:46', '2023-03-28 20:22:46');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (126, NULL, 1, 0, '查询管理', NULL, NULL, 7, 'web', 'search', b'0', b'0', b'0', NULL, 'admin', 'admin', '2023-03-28 20:25:17', '2023-03-28 20:25:17');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (127, 92, 3, 1, '学期管理', 'Semester', 'enter/semester/index', 15, 'validCode', 'semester', b'0', b'0', b'0', 'semester:list', 'admin', 'admin', '2023-03-30 09:58:03', '2023-03-30 09:58:03');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (128, 127, 0, 2, '新增学期', NULL, NULL, 1, NULL, NULL, b'0', b'0', b'0', 'semester:add', 'admin', 'admin', '2023-03-30 09:58:50', '2023-03-30 09:58:50');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (129, 127, 0, 2, '编辑学期', NULL, NULL, 2, NULL, NULL, b'0', b'0', b'0', 'semester:edit', 'admin', 'admin', '2023-03-30 09:59:18', '2023-03-30 09:59:18');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (130, 127, 0, 2, '删除学期', NULL, NULL, 3, NULL, NULL, b'0', b'0', b'0', 'semester:del', 'admin', 'admin', '2023-03-30 09:59:41', '2023-03-30 09:59:41');
INSERT INTO `sys_menu` (`menu_id`, `pid`, `sub_count`, `type`, `title`, `name`, `component`, `menu_sort`, `icon`, `path`, `i_frame`, `cache`, `hidden`, `permission`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (131, 126, 0, 1, '课表查询', 'classSchedule', 'search/schedule/index', 999, 'mnt', 'classSchedule', b'0', b'0', b'0', 'coursePlan:list', 'admin', 'admin', '2023-03-30 17:12:05', '2023-03-30 17:12:05');
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
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (1, '超级管理员', 1, '超级管理员', NULL, 'admin', '2023-03-03 11:15:49', '2023-03-30 17:12:33');
INSERT INTO `sys_role` (`role_id`, `name`, `level`, `description`, `create_by`, `update_by`, `create_time`, `update_time`) VALUES (2, '普通用户', 2, '-', NULL, 'admin', '2023-03-03 11:15:49', '2023-03-25 20:35:47');
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
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (92, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (97, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (98, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (99, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (100, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (101, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (102, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (103, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (104, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (105, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (106, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (107, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (108, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (109, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (110, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (111, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (112, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (113, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (114, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (115, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (116, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (117, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (118, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (122, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (123, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (124, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (125, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (126, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (127, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (128, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (129, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (130, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (131, 1);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (1, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (2, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (39, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (44, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (46, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (64, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (65, 2);
INSERT INTO `sys_roles_menus` (`menu_id`, `role_id`) VALUES (66, 2);
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
INSERT INTO `sys_users_roles` (`user_id`, `role_id`) VALUES (2, 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
