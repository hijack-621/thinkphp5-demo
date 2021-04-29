/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 29/04/2021 17:32:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish_time` datetime(0) NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 1,
  `click` int(11) NOT NULL DEFAULT 0,
  `flag` set('推荐','置顶','热门','图文') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 'PHP很好学习，功能强大', '2019-06-12 18:00:00', 1, 18, NULL, 1);
INSERT INTO `article` VALUES (2, 'Mysql系统课程正在更新', '2019-07-12 18:00:00', 1, 18, NULL, 3);
INSERT INTO `article` VALUES (3, '后盾人在线学习编程', NULL, 1, 100, '推荐', 5);
INSERT INTO `article` VALUES (4, '文档库在doc.houdunren.com', NULL, 1, 100, '推荐,置顶,图文', 2);

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考勤表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES (1, 1, '2019-07-15 08:22:00');
INSERT INTO `attendance` VALUES (2, 2, '2019-07-15 09:22:00');
INSERT INTO `attendance` VALUES (3, 3, '2019-07-15 07:22:00');
INSERT INTO `attendance` VALUES (4, 4, '2019-07-15 10:55:00');
INSERT INTO `attendance` VALUES (5, 5, '2019-07-15 07:15:00');
INSERT INTO `attendance` VALUES (6, 2, '2019-07-16 11:15:00');
INSERT INTO `attendance` VALUES (7, 1, '2019-07-10 08:22:00');
INSERT INTO `attendance` VALUES (8, 2, '2019-07-21 08:15:00');
INSERT INTO `attendance` VALUES (9, 2, '2018-07-15 11:22:00');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a` float(10, 2) NULL DEFAULT NULL,
  `b` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '幼儿园', '学习PHP 开发网站', NULL, NULL);
INSERT INTO `class` VALUES (2, '小学', '前端工程师', NULL, NULL);
INSERT INTO `class` VALUES (3, '初中', '服务器知识PHP好帮助', NULL, NULL);
INSERT INTO `class` VALUES (4, '高中', '数据库学习', NULL, NULL);
INSERT INTO `class` VALUES (5, '大学', '越努力越幸运', NULL, NULL);

-- ----------------------------
-- Table structure for compal_sod_instrument_list
-- ----------------------------
DROP TABLE IF EXISTS `compal_sod_instrument_list`;
CREATE TABLE `compal_sod_instrument_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plant` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deptcode` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deptname` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiaoyanbianhao` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `changpai` char(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xinghao` char(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chuchangbianhao` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `jiaoyanriqi` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `youxiaoriqi` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `yiqimingcheng` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gzcode` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiaoyanzhouqi` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiaoyanxingzhi` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xinzengriqi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beizhu` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weizhi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `baoguanrengonghao` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `baoguanren` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bgr_mail` char(125) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yiqifuzerengonghao` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yiqifuzeren` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fzr_mail` char(125) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `step1_master_no` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `step1_master_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt1_mail` char(125) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `step2_master_no` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `step2_master_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `step3_master_no` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `step3_master_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `checkin` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 314 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of compal_sod_instrument_list
-- ----------------------------
INSERT INTO `compal_sod_instrument_list` VALUES (1, '柏泰電子', 'KJN00DABC0', '製造三課', '50666', 'FLUKE', 'FLUKE 179', '81310516', '2021/03/03', NULL, '萬用表', NULL, '6', '內校', '新增2008/04/09', NULL, 'asd', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (2, '柏泰電子', 'KJN00DABC0', '製造三課', '50394', 'FLUKE', 'FLUKE 179', '90290063', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, 'sod2', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (3, '柏泰電子', 'KJN00DABC0', '製造三課', '50479', 'FLUKE', 'FLUKE 179', '80601257', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2015/10/16', NULL, 'sod11', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (4, '柏泰電子', 'KJN00DABC0', '製造三課', '50499', 'FLUKE', 'FLUKE 179', '80601245', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2011/04/04', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (5, '柏泰電子', 'KJN00DABC0', '製造三課', '50723', 'FLUKE', 'FLUKE 179', '90480271', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2006/02/17', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (6, '柏泰電子', 'KJN00DABC0', '製造三課', '50579', 'FLUKE', 'FLUKE 179', '80601149', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2008/09/26', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (7, '柏泰電子', 'KJN00DABC0', '製造三課', '50228', 'FLUKE', 'FLUKE 179', '90310248', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (8, '柏泰電子', 'KJN00DABC0', '製造三課', '50581', 'FLUKE', 'FLUKE 179', '81610357', '2021/06/06', '2021/06/06', '萬用表', NULL, '6', '內校', '新增2016/07/01', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (9, '柏泰電子', 'KJN00DABC0', '製造三課', '50721', 'FLUKE', 'FLUKE 179', '90480256', '2021/06/06', '2021/06/06', '萬用表', NULL, '6', '內校', '新增2006/02/17', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (10, '柏泰電子', 'KJN00DABC0', '製造三課', '30515', 'QUICK', 'QUICK 191A', 'L191A1004A0181', '2021/06/02', '2021/06/02', '烙鐵溫度測試儀', NULL, '6', '內校', '新增2010/05/19', NULL, '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (11, '柏泰電子', 'KJN00DABC0', '製造三課', '30560', 'QUICK', 'QUICK 191A', 'L191A1004A0203', '2021/06/02', '2021/06/02', '烙鐵溫度測試儀', NULL, '6', '內校', '新增2010/05/19', NULL, '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (12, '柏泰電子', 'KJN00DABC0', '製造三課', '30559', 'QUICK', 'QUICK 191A', 'L191A1004A0196', '2021/06/02', '2021/06/02', '烙鐵溫度測試儀', NULL, '6', '內校', '新增2010/05/19', NULL, '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (13, '柏泰電子', 'KJN00DABC0', '製造三課', '10282', '滕藝', '0.125~1.5mm', '13pcs', '2021/05/13', '2021/05/13', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (14, '柏泰電子', 'KJN00DABC0', '製造三課', '50670', 'FLUKE', 'FLUKE 179', '82370612', '2021/05/09', '2021/05/09', '萬用表', NULL, '6', '內校', '新增2008/04/16', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (15, '柏泰電子', 'KJN00DABC0', '製造三課', '90458', 'Agilent', 'N4010A', 'MY49081836', '2021/03/22', '2021/03/22', 'BT/WLAN 無線終端測試儀', NULL, '12', '外校', '新增2011/05/19', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (16, '柏泰電子', 'KJN00DABC0', '製造三課', '10321', '滕藝', '0.05~1.5mm', '18pcs', '2021/03/10', '2021/03/10', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (17, '柏泰電子', 'KJN00DABC0', '製造三課', '10317', '滕藝', '0.05~1.5mm', '13pcs', '2021/03/10', '2021/03/10', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (18, '柏泰電子', 'KJN00DABC0', '製造三課', '30179', 'Testo', 'Testo 608-H1', '165754', '2021/03/09', '2021/03/09', '溫濕度計', NULL, '12', '外校', '新增2010/04/07', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (19, '柏泰電子', 'KJN00DABC0', '製造三課', '10196', '滕藝', '0.05~1.0mm', '11pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2013/11/25', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (20, '柏泰電子', 'KJN00DABC0', '製造三課', '10283', '滕藝', '0.05~1.5mm', '14pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (21, '柏泰電子', 'KJN00DABC0', '製造三課', '60075', 'TOPTEK', 'DS 5202CA', 'DS520200060047', '2021/02/25', '2021/02/25', '示波器', NULL, '6', '內校', '新增2005/12/17', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (22, '柏泰電子', 'KJN00DABC0', '製造三課', '60357', 'TOPTEK', 'DS 5202CA', 'DS520200050235', '2021/02/25', '2021/02/25', '示波器', NULL, '6', '內校', '新增2006/02/16', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (23, '柏泰電子', 'KJN00DABC0', '製造三課', '60381', 'TOPTEK', 'DS 5202CA', 'DS520200070042', '2021/02/25', '2021/02/25', '示波器', NULL, '6', '內校', '新增2006/02/16', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (24, '柏泰電子', 'KJN00DABC0', '製造三課', '60365', 'TOPTEK', 'DS 5202CA', 'DS520200070034', '2021/02/25', '2021/02/25', '示波器', NULL, '6', '內校', '新增2006/02/16', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (25, '柏泰電子', 'KJN00DABC0', '製造三課', '60321', 'TOPTEK', 'DS 5202CA', 'DS520200070032', '2021/02/25', '2021/02/25', '示波器', NULL, '6', '內校', '新增2006/02/16', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (26, '柏泰電子', 'KJN00DABC0', '製造三課', '60205', 'TOPTEK', 'DS 5202CA', 'DS520200060046', '2021/02/25', '2021/02/25', '示波器', NULL, '6', '內校', '新增2005/12/17', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (27, '柏泰電子', 'KJN00DABC0', '製造三課', '60154', 'Tektronix', 'TDS-220', 'C021137', '2021/02/17', '2021/02/17', '示波器', NULL, '6', '內校', '新增2016/06/29', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (28, '柏泰電子', 'KJN00DABC0', '製造三課', '60277', 'Tektronix', 'TDS 1012', 'C016026', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2008/05/12', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (29, '柏泰電子', 'KJN00DABC0', '製造三課', '60131', 'Tektronix', 'TDS-220', 'B084748', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2016/06/29', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (30, '柏泰電子', 'KJN00DABC0', '製造三課', '60044', 'Tektronix', 'TDS-220', 'B085764', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2016/06/29', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (31, '柏泰電子', 'KJN00DABC0', '製造三課', '60347', 'Tektronix', 'TDS 1012', 'C016083', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2008/05/02', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (32, '柏泰電子', 'KJN00DABC0', '製造三課', '60339', 'Tektronix', 'TDS 1012', 'C016077', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2008/05/02', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (33, '柏泰電子', 'KJN00DABC0', '製造三課', '60319', 'Tektronix', 'TDS 1012', 'C016063', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2008/04/30', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (34, '柏泰電子', 'KJN00DABC0', '製造三課', '60351', 'Tektronix', 'TDS 1012', 'C016090', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2008/05/09', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (35, '柏泰電子', 'KJN00DABC0', '製造三課', '60299', 'Tektronix', 'TDS 1012', 'C016049', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2008/05/02', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (36, '柏泰電子', 'KJN00DABC0', '製造三課', '60265', 'Tektronix', 'TDS-2012', 'C011404', NULL, NULL, '示波器', NULL, '6', '內校', '新增2016/06/29', '--- 開機閃屏，無法進入系統', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (37, '柏泰電子', 'KJN00DABC0', '製造三課', '50524', 'FLUKE', 'FLUKE 179', '80601151', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2016/01/28', '--- ---經校驗，電流無法測出數值，需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (38, '柏泰電子', 'KJN00DABC0', '製造三課', '50636', 'FLUKE', 'FLUKE 179', '80601107', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/04/18', '--- 電池線斷,無法測試,需送修.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (39, '柏泰電子', 'KJN00DABC0', '製造三課', '50566', 'FLUKE', 'FLUKE 179', '81190344', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/03/14', '--- 經校驗電流10A檔無法測出數值,需送修.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (40, '柏泰電子', 'KJN00DABC0', '製造三課', '30517', 'QUICK', 'QUICK 191A', 'L191A1004A0182', NULL, NULL, '烙鐵溫度測試儀', NULL, '6', '內校', '新增2010/05/19', '--- 經校驗滿量程500 ℃測出數值誤差超差,需送修.', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (41, '柏泰電子', 'KJN00DABC0', '製造三課', '60081', 'Tektronix', 'TDS-220', 'B084771', NULL, NULL, '示波器', NULL, '6', '內校', '新增2016/06/29', '--- 無法開機，需送修.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (42, '柏泰電子', 'KJN00DABC0', '製造三課', '50186', 'FLUKE', 'FLUKE 79', '78680801', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2011/04/26', '--- 無法開機,故暫停使用.', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (43, '柏泰電子', 'KJN00DABC0', '製造三課', '50672', 'FLUKE', 'FLUKE 179', '81310517', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/09/26', '--- 無法開機,需送修.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (44, '柏泰電子', 'KJN00DABC0', '製造三課', '50333', 'FLUKE', 'FLUKE 179', '79440321', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2007/10/23', '--- 無法開機,需送修.', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (45, '柏泰電子', 'KJN00DABC0', '製造三課', '50401', 'FLUKE', 'FLUKE 179', '90290012', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2006/01/12', '--- 經校驗電流檔400MA DC/AC無法測出數值,需送修.', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (46, '柏泰電子', 'KJN00DABC0', '製造三課', '60387', 'TOPTEK', 'DS 5202CA', 'DS520200050228', NULL, NULL, '示波器', NULL, '6', '內校', '新增2006/02/16', '--- 無法開機,需送修.', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (47, '柏泰電子', 'KJN00DABC0', '製造三課', '50638', 'FLUKE', 'FLUKE 179', '90310249', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2006/01/12', '--- 電池線損壞,無法開機', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (48, '柏泰電子', 'KJN00DABC0', '製造三課', '50494', 'FLUKE', 'FLUKE 179', '81610361', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/03/28', '--- 電流檔無法測出數值,需送修', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (49, '柏泰電子', 'KJN00DABC0', '製造三課', '30510', 'QUICK', 'QUICK 191A', 'L191A1004A0214', NULL, NULL, '烙鐵溫度測試儀', NULL, '6', '內校', '新增2010/05/19', '--- 經校驗測出數值誤差超差,故需送修', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (50, '柏泰電子', 'KJN00DABC0', '製造三課', '60175', 'Tektronix', 'TDS-2012', 'C011038', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/02', '--- 無法開機', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (51, '柏泰電子', 'KJN00DABC0', '製造三課', '60303', 'Tektronix', 'TDS 1012', 'C016051', NULL, NULL, '示波器', NULL, '6', '內校', NULL, '--- 無法開機', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (52, '柏泰電子', 'KJN00DABC0', '製造三課', '50725', 'FLUKE', 'FLUKE 179', '90480268', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2006/02/17', '--- 無法開機，需送修', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (53, '柏泰電子', 'KJN00DABC0', '製造三課', '50249', 'FLUKE', 'FLUKE 179', '90310251', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2006/01/12', '--- 無法測試交流檔電流,需送修', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (54, '柏泰電子', 'KJN00DABC0', '製造三課', '50474', 'FLUKE', 'FLUKE 179', '80601246', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2011/04/15', '--- 開機亂碼無法測試,需送修.', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (55, '柏泰電子', 'KJN00DABC0', '製造三課', '50509', 'FLUKE', 'FLUKE 179', '80601261', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/04/16', '--- 無法開機,需送修.', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (56, '柏泰電子', 'KJN00DABC0', '製造三課', '50729', 'FLUKE', 'FLUKE 179', '90480228', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2006/02/17', '--- 經校驗電流檔400MADC/AC吳法測出數值,需送修.', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (57, '柏泰電子', 'KJN00DABC0', '製造三課', '60287', 'Tektronix', 'TDS-1012', 'C016043', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/09', '--- 使用單位發現開機后機器自動關機,故需送修', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (58, '柏泰電子', 'KJN00DABC0', '製造三課', '60220', 'Tektronix', 'TDS-2012', 'C010176', NULL, NULL, '示波器', NULL, '6', '內校', '新增2007/10/29', '--- 開機黑屏,需送修.', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (59, '柏泰電子', 'KJN00DABC0', '製造三課', '60349', 'Tektronix', 'TDS-1012', 'C016089', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/12', '--- 測試時間時顯示黑屏', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (60, '柏泰電子', 'KJN00DABC0', '製造三課', '60060', 'Tektronix', 'TDS-220', 'B081565', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/24', '--- 屏幕顯示暗，無法看清波形，故建議送修', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (61, '柏泰電子', 'KJN00DABC0', '製造三課', '60135', 'Tektronix', 'TDS-220', 'B084794', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/30', '--- 畫面暗,需送修.', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (62, '柏泰電子', 'KJN00DABC0', '製造三課', '60331', 'Tektronix', 'TDS-1012', 'C016072', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/12', '--- 使用單位發現畫面暗,無法調試波形故需送修', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (63, '柏泰電子', 'KJN00DABC0', '製造三課', '60281', 'Tektronix', 'TDS 1012', 'C016036', NULL, NULL, '示波器', NULL, '6', '內校', NULL, '--- Ch1/CH2幅度測量誤差超差,故暫停使用', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (64, '柏泰電子', 'KJN00DABC0', '製造三課', '60169', 'Tektronix', 'TDS-220', 'B085770', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/30', '--- 畫面異常,無法測出數值,故暫停使用.', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (65, '柏泰電子', 'KJN00DABC0', '製造三課', '60295', 'Tektronix', 'TDS-1012', 'C016047', NULL, NULL, '示波器', NULL, '6', '內校', NULL, '--- (開機無畫面,故暫停使用.', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (66, '柏泰電子', 'KJN00DABC0', '製造三課', '60222', 'Tektronix', 'TDS-2012', 'C010189', NULL, NULL, '示波器', NULL, '6', '內校', '新增2017/11/07', '--- 閒置轉不良:使用單位發現無法開機檢測,故暫停使用', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (67, '柏泰電子', 'KJN00DABC0', '製造三課', '60056', 'Tektronix', 'TDS-220', 'B085890', NULL, NULL, '示波器', NULL, '6', '內校', '新增2016/11/17', '--- 閒置轉不良:使用單位發現無法開機檢測,故暫停使用', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (68, '柏泰電子', 'KJN00DABC0', '製造三課', '60291', 'Tektronix', 'TDS-360', 'B013016', NULL, NULL, '示波器', NULL, '6', '內校', '新增2006/01/12', '--- 閒置轉不良:使用單位發現無法開機檢測,故暫停使用', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (69, '柏泰電子', 'KJN00DABC0', '製造三課', '60004', 'Tektronix', 'TDS-220', 'B086181', NULL, NULL, '示波器', NULL, '6', '內校', '新增2007/10/19', '--- 使用單位發現CH1  CH2通道波形紊亂,故暫停使用', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (70, '柏泰電子', 'KJN00DABC0', '製造三課', '60383', 'TOPTEK', 'DS 5202CA', 'DS520200070020', NULL, NULL, '示波器', NULL, '6', '內校', '新增06/02/16', '--- 使用單位發現CH1通道堵塞,無信號,故暫停使用', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (71, '柏泰電子', 'KJN00DABC0', '製造三課', '60309', 'Tektronix', 'TDS-1012', 'C016057', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/17', '--- 測試中反復關機黑屏,故需送修后複檢', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (72, '柏泰電子', 'KJN00DABC0', '製造三課', '60409', 'Tektronix', 'TDS-1012', 'C016041', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/12', '--- 使用單位發現CH1通道調試旋鈕失靈,故需送修后複檢', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (73, '柏泰電子', 'KJN00DABC0', '製造三課', '60235', 'Tektronix', 'TDS-2012', 'C010237', NULL, NULL, '示波器', NULL, '6', '內校', '新增2007/10/25', '--- 使用單位發現開機黑屏,需送修!', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (74, '柏泰電子', 'KJN00DABC0', '製造三課', '60126', 'Tektronix', 'TDS-220', 'B082822', NULL, NULL, '示波器', NULL, '6', '內校', '新增2014/11/17', '--- 使用單位發現無法開機檢測,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (75, '柏泰電子', 'KJN00DABC0', '製造三課', '60112', 'Tektronix', 'TDS-220', 'B086176', NULL, NULL, '示波器', NULL, '6', '內校', '新增2014/11/17', '--- 使用單位發現開機白屏無法正常檢測,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (76, '柏泰電子', 'KJN00DABC0', '製造三課', '60149', 'Tektronix', 'TDS-220', 'B085888', NULL, NULL, '示波器', NULL, '6', '內校', '新增2014/11/17', '--- 使用單位發現接口損壞無法檢測,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (77, '柏泰電子', 'KJN00DABC0', '製造三課', '60050', 'Tektronix', 'TDS-220', 'C021139', NULL, NULL, '示波器', NULL, '6', '內校', '新增2014/11/17', '--- 使用單位發現無法開機檢測,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (78, '柏泰電子', 'KJN00DABC0', '製造三課', '60249', 'Tektronix', 'TDS-2012', 'C011860', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/05', '--- 使用單位發現SEC/DIV鍵失靈無法調試,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (79, '柏泰電子', 'KJN00DABC0', '製造三課', '60239', 'Tektronix', 'TDS-2012', 'C010049', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/12', '--- 使用單位發現開關鍵壞無法開機檢測,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (80, '柏泰電子', 'KJN00DABC0', '製造三課', '60255', 'Tektronix', 'TDS-2012', 'C011426', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/29', '--- 使用單位發現開機黑屏無法正常檢測,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (81, '柏泰電子', 'KJN00DABC0', '製造三課', '60245', 'Tektronix', 'TDS-2012', 'C011383', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/05', '--- 使用單位發現無法開機檢測,需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (82, '柏泰電子', 'KJN00DABC0', '製造三課', '60355', 'Tektronix', 'TDS-1012', 'C016084', NULL, NULL, '示波器', NULL, '6', '內校', '新增2014/11/17', '--- 使用單位發現開機畫面不良無法檢測,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (83, '柏泰電子', 'KJN00DABC0', '製造三課', '60289', 'Tektronix', 'TDS-1012', 'C016044', NULL, NULL, '示波器', NULL, '6', '內校', '新增2011/06/01', '--- 使用單位發現CH1通道Volts/Div旋鈕損壞,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (84, '柏泰電子', 'KJN00DABC0', '製造三課', '60253', 'Tektronix', 'TDS-2012', 'C011157', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/02', '--- 使用單位發現開機白屏無法正常檢測,故需送', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (85, '柏泰電子', 'KJN00DABC0', '製造三課', '60251', 'Tektronix', 'TDS-2012', 'C011406', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/29', '--- 使用單位發現開機黑屏,無法檢測,故暫停使用', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (86, '柏泰電子', 'KJN00DABC0', '製造三課', '60247', 'Tektronix', 'TDS-2012', 'C010105', NULL, NULL, '示波器', NULL, '6', '內校', '新增2014/11/17', '--- 使用單位發現CH2調試璇鈕損壞,無法調試,需送修.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (87, '柏泰電子', 'KJN00DABC0', '製造三課', '60216', 'Tektronix', 'TDS-2012', 'C010129', NULL, NULL, '示波器', NULL, '6', '內校', '新增2007/10/24', '--- 使用單位發現開機黑屏,無法檢測,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (88, '柏泰電子', 'KJN00DABC0', '製造三課', '50164', 'FLUKE', 'FLUKE 79', '78901025', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/04/08', '--- 經校驗電壓400mV檔/電阻/電容檔無法測出數值,故暫停使用.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (89, '柏泰電子', 'KJN00DABC0', '製造三課', '20260', '臺衡惠而邦', 'XK3108-T2000A', '6622003037', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2014/03/26', '--- 單位發現,儀器連接不上電腦,需送修', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (90, '柏泰電子', 'KJN00DABC0', '製造三課', '30196', 'KSON', 'AT-ERC-65', '4170T', NULL, NULL, 'MTBF chamber', NULL, '6', '內校', '新增06/04/21', '--- 使用單位發現控制器損壞,需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (91, '柏泰電子', 'KJN00DABC0', '製造三課', '50593', 'FLUKE', 'FLUKE 179', '81190412', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/04/16', '---  電源線斷,需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (92, '柏泰電子', 'KJN00DABC0', '製造三課', '50504', 'FLUKE', 'FLUKE 179', '80601258', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/04/16', '---  電源線斷裂,無法通電,需送修.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (93, '柏泰電子', 'KJN00DABC0', '製造三課', '50683', 'FLUKE', 'FLUKE 179', '82010080', '2021/08/11', '2021/08/11', '萬用表', NULL, '6', '內校', '新增2008/09/29', '---  經校驗10A電流檔無法測出數值,需送修.', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (94, '柏泰電子', 'KJN00DABC0', '製造三課', '80003', 'QUICK', 'QUICK 498', 'K4980811A002', '2021/08/11', '2021/08/11', '靜電手環測試儀', NULL, '6', '內校', '新增2009/02/24', '---  使用單位發現紅綠指示燈均不亮,故需送修', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (95, '柏泰電子', 'KJN00DABC0', '製造三課', '70133', 'Escort', 'ELC-3133A', '0720560011', NULL, NULL, 'LCR測試儀', NULL, '12', '外校', '新增2007/10/18', '---  無法開機檢測,故暫停使用', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (96, '柏泰電子', 'KJN00DADB0', '採購課', '50652', 'FLUKE', 'FLUKE 179', '90290360', '2021/06/27', '2021/06/27', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0410543', '楊春花', 'Sandy_Yang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410543', '楊春花', 'Sandy_Yang@compal.com', '9G40064', '陳怡伶', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (97, '柏泰電子', 'KJN00DADB0', '採購課', '50709', 'FLUKE', 'FLUKE 179', '90290013', '2021/06/27', '2021/06/27', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0410543', '楊春花', 'Sandy_Yang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410543', '楊春花', 'Sandy_Yang@compal.com', '9G40064', '陳怡伶', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (98, '仁寶信息', 'KHN00DABD0', '修護課', '30639', '北京康威儀錶有限公司', 'A-199型', '(-30℃~50℃)', NULL, NULL, '溫度計', NULL, '12', '外校', '新增2015/11/10', '--- 經計量所檢測,溫度測出數值誤差超差,建議報廢', '鉄籠子', '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (99, '仁寶信息', 'KHN00DABD0', '修護課', '30649', '台順', 'DTS-60', '20080523', NULL, NULL, '烤箱', NULL, '6', '內校', '新增2009/08/04', '--- 閒置轉不良:使用單位發現加熱溫度數值超差,故暫停使用', '黑洞', '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (100, '仁寶信息', 'KHN00DABD0', '修護課', '30380', '高強', 'AH-270', 'BZ07010203', NULL, NULL, '烤箱', NULL, '6', '內校', '新增2007/04/04', '--- 閒置轉不良:使用單位發現加熱溫度數值超差,故暫停使用', '黑洞', '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (101, '仁寶信息', 'KHN00DABD0', '修護課', '30379', '高強', 'AH-270', 'BZ07010202', NULL, NULL, '烤箱', NULL, '6', '內校', '新增2007/04/04', '--- 閒置轉不良:使用單位發現加熱溫度數值超差,故暫停使用', '黑洞', '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (102, '仁寶信息', 'KHN00DABD0', '修護課', '30189', '高強', 'AH-270', '757', NULL, NULL, '烤箱', NULL, '6', '內校', '新增06/04/21', '--- 閒置轉不良:使用單位發現加熱溫度數值超差,故暫停使用', '黑洞', '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (103, '仁寶信息', 'KHN00DABD0', '修護課', '30546', '台順', 'DTS-60', '080928', NULL, NULL, '烤箱', NULL, '6', '內校', '新增2008/10/21', '--- 使用單位發現設備無法升溫,需送修', NULL, '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (104, '仁寶信息', 'KHN00DABD0', '修護課', '30655', '台順', 'DTS 650', '090616', NULL, NULL, '烤箱', NULL, '6', '內校', '新增2009/08/04', '--- 使用單位發現設備無法升溫,需送修', NULL, '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (105, '仁寶信息', 'KHN00DABD0', '修護課', '11102', '成都成量工具集團有限公司', '0~25mm', '1104067', NULL, NULL, '外徑千分尺', NULL, '6', '內校', '新增2012/10/30', '--- 使用單位發現微分筒刻度無法歸零,故需送修后複檢', NULL, '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (106, '仁寶信息', 'KHN00DABD0', '修護課', '30640', '河間市重光儀表廠', '(-30℃~50℃)', '/', '2021/12/06', '2021/12/06', '溫度計', NULL, '12', '外校', '新增2015/11/10', NULL, NULL, '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (107, '仁寶信息', 'KHN00DABD0', '修護課', '30022', 'Solderstar', 'Neptune SL', '6940', '2021/07/04', '2021/07/04', '爐溫測試儀', NULL, '6', '內校', '新增2016/09/16', NULL, NULL, '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (108, '仁寶信息', 'KHN00DABD0', '修護課', '30551', '台順', 'DTS-600', '080901', '2021/05/04', '2021/05/04', '烤箱', NULL, '6', '內校', '新增2008/10/21', '位置：P2 A32車間B-64號房間', NULL, '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (109, '仁寶信息', 'KHN00DABD0', '修護課', '90102', 'RADOS', 'RDS-31', '2500234', '2021/03/30', '2021/03/30', 'X、r輻射劑量當量率儀', NULL, '12', '外校', '新增2018/01/10', NULL, NULL, '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (110, '仁寶信息', 'KHN00DABD0', '修護課', '30207', 'QUICK', 'QUICK 196', 'QK1961809G12525', '2021/06/27', '2021/06/27', '風槍溫度測試儀', NULL, '6', '內校', '新增2018/10/15', NULL, NULL, 'C11043M', '李超', 'Lchao_Li@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (111, '仁寶信息', 'KHN00DABD0', '修護課', '90796', 'UV-DESIGN', 'UV-Integrator', '17-83410', '2021/06/14', '2021/06/14', 'UV能量測試儀', NULL, '12', '外校', '新增2018/05/22', NULL, NULL, 'C11043M', '李超', 'Lchao_Li@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (112, '仁寶信息', 'KHN00DABD0', '修護課', '30286', 'QUICK', 'QUICK 191AD', 'QK191AD1807G20959', '2021/06/02', '2021/06/02', '烙鐵溫度測試儀', NULL, '6', '內校', '新增2018/09/12', NULL, NULL, 'C11043M', '李超', 'Lchao_Li@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (113, '仁寶信息', 'KHN00DABD0', '修護課', '30276', 'QUICK', 'QUICK 191AD', 'QK191AD1807G20960', '2021/06/02', '2021/06/02', '烙鐵溫度測試儀', NULL, '6', '內校', '新增2018/09/12', NULL, NULL, 'C11043M', '李超', 'Lchao_Li@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (114, '仁寶信息', 'KHN00DABD0', '修護課', '70036', 'Agilent', '6632B', 'MY43001225', NULL, NULL, '可編程直流電源供應器', NULL, '12', '外校', '新增2013/07/17', NULL, '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (115, '仁寶信息', 'KHN00DABD0', '修護課', '20166', '聯貿電子', 'BSWC-60', 'E7080055', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2009/09/24', '--- 經校驗測出數值誤差超差,需送修.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (116, '仁寶信息', 'KHN00DABD0', '修護課', '60241', 'Tektronix', 'TDS-2012', 'C010195', NULL, NULL, '示波器', NULL, '6', '內校', '新增2007/10/29', '--- 開關機鍵損壞,無法測試,需送修.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (117, '仁寶信息', 'KHN00DABD0', '修護課', '60335', 'Tektronix', 'TDS 1012', 'C016075', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/28', '--- 開機鍵損壞,無法測試,需送修.', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (118, '仁寶信息', 'KHN00DABD0', '修護課', '50575', 'FLUKE', 'FLUKE 179', '80601242', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/03/14', '--- 開機亂碼無法測試,需送修.', '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (119, '仁寶信息', 'KHN00DABD0', '修護課', '50616', 'FLUKE', 'FLUKE 179', '81190361', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/04/16', '--- 無法開機,需送修.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (120, '仁寶信息', 'KHN00DABD0', '修護課', '60101', 'Tektronix', 'TDS-220', 'B084844', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/05', '--- CH1通道無法連接，故建議送修', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (121, '仁寶信息', 'KHN00DABD0', '修護課', '50454', 'FLUKE', 'FLUKE 179', '81320045', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2010/10/28', '--- 使用單位發現無法開機檢測,故需送修', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (122, '仁寶信息', 'KHN00DABD0', '修護課', '60307', 'Tektronix', 'TDS 1012', 'C016055', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/11/28', '--- 開機后頻繁滅機,故需送修', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (123, '仁寶信息', 'KHN00DABD0', '修護課', '60090', 'Tektronix', 'TDS-220', 'B086118', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/30', '--- 開機無畫面,需送修.', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (124, '仁寶信息', 'KHN00DABD0', '修護課', '50634', 'FLUKE', 'FLUKE 179', '80601108', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/03/27', '--- 電池連接線已損壞,無法開機.', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (125, '仁寶信息', 'KHN00DABD0', '修護課', '30233', '寧波市江北慈城開發塑膠五金加工廠', '雙魚', '(-50℃~50℃)', '2021/09/02', '2021/09/02', '溫度計', NULL, '12', '外校', '新增2013/03/05', NULL, '鉄籠子', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (126, '仁寶信息', 'KHN00DABD0', '修護課', '60305', 'Tektronix', 'TDS-1012', 'C016054', '2021/07/08', '2021/07/08', '示波器', NULL, '6', '內校', '新增2016/06/29', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (127, '仁寶信息', 'KHN00DABD0', '修護課', '50715', 'FLUKE', 'FLUKE 179', '90290359', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2006/02/16', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (128, '仁寶信息', 'KHN00DABD0', '修護課', '50559', 'FLUKE', 'FLUKE 179', '90290061', '2021/06/15', '2021/06/15', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (129, '仁寶信息', 'KHN00DABD0', '修護課', '50707', 'FLUKE', 'FLUKE 179', '90310247', '2021/06/08', '2021/06/08', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (130, '仁寶信息', 'KHN00DABD0', '修護課', '50219', 'FLUKE', 'FLUKE 179', '80601256', '2021/06/06', '2021/06/06', '萬用表', NULL, '6', '內校', '新增2008/04/16', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0513768', '張文昌', 'Wes_Zhang@compal.com', '07Q7173', '邱振華', '0410071', '姚波', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (131, '仁寶信息', 'KHN00DAB00', '維修部', '30949', '信泰微', 'UNOR3', '192.168.1.115', '2021/11/23', '2021/11/23', '溫濕度計', NULL, '12', '外校', '新增2019/11/05', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (132, '仁寶信息', 'KHN00DAB00', '維修部', '30948', '信泰微', 'UNOR3', '192.168.1.114', '2021/11/23', '2021/11/23', '溫濕度計', NULL, '12', '外校', '新增2019/11/05', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (133, '仁寶信息', 'KHN00DAB00', '維修部', '30947', '信泰微', 'UNOR3', '192.168.1.113', '2021/11/23', '2021/11/23', '溫濕度計', NULL, '12', '外校', '新增2019/11/05', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (134, '仁寶信息', 'KHN00DAB00', '維修部', '30946', '信泰微', 'UNOR3', '192.168.1.112', '2021/11/23', '2021/11/23', '溫濕度計', NULL, '12', '外校', '新增2019/11/05', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (135, '仁寶信息', 'KHN00DAB00', '維修部', '30917', '信泰微', 'UNOR3', '192.168.1.111', '2021/09/06', '2021/09/06', '溫濕度計', NULL, '12', '外校', '新增2019/07/31', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (136, '仁寶信息', 'KHN00DAB00', '維修部', '30916', '信泰微', 'UNOR3', '192.168.1.110', '2021/09/06', '2021/09/06', '溫濕度計', NULL, '12', '外校', '新增2019/07/31', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (137, '仁寶信息', 'KHN00DAB00', '維修部', '30915', '信泰微', 'UNOR3', '192.168.1.109', '2021/09/06', '2021/09/06', '溫濕度計', NULL, '12', '外校', '新增2019/07/31', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (138, '仁寶信息', 'KHN00DAB00', '維修部', '30914', '信泰微', 'UNOR3', '192.168.1.108', '2021/09/06', '2021/09/06', '溫濕度計', NULL, '12', '外校', '新增2019/07/31', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (139, '仁寶信息', 'KHN00DAB00', '維修部', '30913', '信泰微', 'UNOR3', '192.168.1.107', '2021/09/06', '2021/09/06', '溫濕度計', NULL, '12', '外校', '新增2019/07/31', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (140, '仁寶信息', 'KHN00DAB00', '維修部', '30905', '信泰微', 'UNOR3', '192.168.1.106', '2021/07/19', '2021/07/19', '溫濕度計', NULL, '12', '外校', '新增2019/07/16', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (141, '仁寶信息', 'KHN00DAB00', '維修部', '30904', '信泰微', 'UNOR3', '192.168.1.105', '2021/07/19', '2021/07/19', '溫濕度計', NULL, '12', '外校', '新增2019/07/16', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (142, '仁寶信息', 'KHN00DAB00', '維修部', '30903', '信泰微', 'UNOR3', '192.168.1.104', '2021/07/19', '2021/07/19', '溫濕度計', NULL, '12', '外校', '新增2019/07/16', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (143, '仁寶信息', 'KHN00DAB00', '維修部', '30902', '信泰微', 'UNOR3', '192.168.1.103', '2021/07/19', '2021/07/19', '溫濕度計', NULL, '12', '外校', '新增2019/07/16', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (144, '仁寶信息', 'KHN00DAB00', '維修部', '30901', '信泰微', 'UNOR3', '192.168.1.102', '2021/07/19', '2021/07/19', '溫濕度計', NULL, '12', '外校', '新增2019/07/16', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (145, '仁寶信息', 'KHN00DAB00', '維修部', '30870', 'SOD PE', '/', '192.168.1.101', '2021/06/09', '2021/06/09', '溫濕度計', NULL, '12', '外校', '新增2019/04/26', NULL, NULL, 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', 'C140K34', '徐晚', 'Aviva_Xu@compal.com', '0410071', '姚波', '9047107', '陳晃宙', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (146, '仁寶信息', 'KHN00DAGA0', '產品工程課', '80191', 'QUICK', 'QUICK 492', '4920803019', NULL, NULL, '靜電手腳環測試儀', NULL, '6', '內校', '新增2009/01/14', '位置：五廠4F RMA', '黑洞', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin74_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (147, '仁寶信息', 'KHN00DAGA0', '產品工程課', '20254', 'Defender 3000', 'TCS-D31P150BL', 'B000333GCM', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2010/09/13', '--- 使用單位發現無法開機檢測,故需送修', '黑洞', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin73_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (148, '仁寶信息', 'KHN00DAGA0', '產品工程課', '20145', '上海規矩儀器科技有限公司', 'XK3150(W)', 'S12105328', '2021/08/11', '2021/08/11', '電子秤', NULL, '6', '內校', '新增2012/07/19', '---  使用單位發現無法充電,故需送修', '黑洞', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin72_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (149, '仁寶信息', 'KHN00DAGA0', '產品工程課', '10343', '滕藝', '0.05~1.5mm', '11pcs', '2021/03/10', '2021/03/10', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin71_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (150, '仁寶信息', 'KHN00DAGA0', '產品工程課', '10344', '滕藝', '0.05~1.5mm', '12pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin70_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (151, '仁寶信息', 'KHN00DAGA0', '產品工程課', '80168', 'HIOKI', '3540', '070632013', NULL, NULL, '微歐姆計', NULL, '12', '外校', '新增2007/10/18', '良品閒置:2017/09/21使用單位確認ok', NULL, 'C101R7T', '徐德林', 'Bruce_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin69_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (152, '仁寶信息', 'KHN00DAGA0', '產品工程課', '90235', 'Tektronix', 'AFG3022B', 'C030323', NULL, NULL, '函數發生器', NULL, '12', '外校', '新增2008/01/05', '良品閒置:2017/09/21使用單位確認ok', '鉄籠子', 'C101R7T', '徐德林', 'Bruce_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin68_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (153, '仁寶信息', 'KHN00DAGA0', '產品工程課', '90217', 'Tektronix', 'AFG3022B', 'C030322', NULL, NULL, '函數發生器', NULL, '12', '外校', '新增2008/01/05', '良品閒置:2017/09/21使用單位確認ok', '鉄籠子', 'C101R7T', '徐德林', 'Bruce_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin67_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (154, '仁寶信息', 'KHN00DAGA0', '產品工程課', '60167', 'TOPTEK', 'DSO 6104A', 'MY44008058', NULL, NULL, '示波器', NULL, '12', '外校', '新增2007/10/26', NULL, '鉄籠子', 'C101R7T', '徐德林', 'Bruce_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin66_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (155, '仁寶信息', 'KHN00DAGA0', '產品工程課', '70138', 'ESCORT', 'EPS-3060TD', 'E011900', NULL, NULL, '電源供應器', NULL, '6', '內校', '新增2008/03/25', '良品閒置:2017/09/21使用單位確認ok', '鉄籠子', 'C101R7T', '徐德林', 'Bruce_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin65_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (156, '仁寶信息', 'KHN00DAGA0', '產品工程課', '20006', '上海耀華稱重系統有限公司', 'XK3190', '703602', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2017/11/07', '--- 閒置轉不良:使用單位發現稱重無法顯示數值,故暫停使用', NULL, '0401943', '徐金保', 'Golden_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin64_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (157, '仁寶信息', 'KHN00DAGA0', '產品工程課', '20016', '上海英展機電企業有限公司', 'TCS(SB730)', 'S02405915', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2017/11/07', '--- 閒置轉不良:使用單位發現稱重無法顯示數值,故暫停使用', NULL, '0401943', '徐金保', 'Golden_Xu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin63_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (158, '仁寶資訊', 'KFN00DAGA0', '產品工程課', '10187', 'TaJima', 'BX2-S30', '/', '2021/07/07', '2021/07/07', '水平儀', NULL, '12', '外校', '新增2018/07/10', NULL, NULL, '0401480', '王軍', 'Peter_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin62_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (159, '仁寶資訊', 'KFN00DAGA0', '產品工程課', '10231', 'Mitutoyo', '293-831-30', '66372702', '2021/02/25', '2021/02/25', '外徑千分尺', NULL, '6', '內校', '新增2018/07/10', NULL, NULL, '0401480', '王軍', 'Peter_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '8947686', '徐民憲', 'Kevin61_Hsu@compal.com', '9147071', '吳逸民', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (160, '仁寶信息', 'KMN00DACC0', '備品品管課', '11190', '滕藝', '0.3-1.5mm', '11pcs', NULL, NULL, '厚薄規', NULL, '6', '內校', '新增2015/11/21', '--- 葉片規格不全,建議報廢.', NULL, 'C140LPN', '魏云云', 'Cloud_Wei@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0504564', '夏司麗', 'Abby_Xia@compal.com', '0703923', '于普平', '0820423', '劉振環', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (161, '仁寶信息', 'KMN00DACC0', '備品品管課', '70032', 'TREK', 'TREK 156A', '2940', '2021/05/12', '2021/05/12', '離子風扇測試儀', NULL, '12', '外校', '新增2018/04/19', NULL, NULL, 'C140LPN', '魏云云', 'Cloud_Wei@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0504564', '夏司麗', 'Abby_Xia@compal.com', '0703923', '于普平', '0820423', '劉振環', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (162, '仁寶信息', 'KMN00DACC0', '備品品管課', '10983', '滕藝', '0.05-1.5mm', '16pcs', '2021/03/13', '2021/03/13', '厚薄規', NULL, '6', '內校', '新增2014/06/30', NULL, NULL, 'C140LPN', '魏云云', 'Cloud_Wei@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0504564', '夏司麗', 'Abby_Xia@compal.com', '0703923', '于普平', '0820423', '劉振環', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (163, '仁寶信息', 'KMN00DACC0', '備品品管課', '10985', '滕藝', '0.05-1.5mm', '11pcs', '2021/03/10', '2021/03/10', '厚薄規', NULL, '6', '內校', '新增2014/07/07', NULL, NULL, 'C140LPN', '魏云云', 'Cloud_Wei@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0504564', '夏司麗', 'Abby_Xia@compal.com', '0703923', '于普平', '0820423', '劉振環', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (164, '仁寶信息', 'KMN00DACC0', '備品品管課', '11191', '滕藝', '0.075-1.5mm', '18pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2015/11/21', NULL, NULL, 'C140LPN', '魏云云', 'Cloud_Wei@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0504564', '夏司麗', 'Abby_Xia@compal.com', '0703923', '于普平', '0820423', '劉振環', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (165, '仁寶信息', 'KMN00DACC0', '備品品管課', '10984', '滕藝', '0.1~1.5mm', '9pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2014/06/30', NULL, NULL, 'C140LPN', '魏云云', 'Cloud_Wei@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0504564', '夏司麗', 'Abby_Xia@compal.com', '0703923', '于普平', '0820423', '劉振環', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (166, '仁寶信息', 'KHN00DAAC0', '備品倉管課', '20323', '英展', 'XK3150(W)', 'CW18204127', '2021/04/14', '2021/04/14', '電子地磅', NULL, '6', '內校', '新增2018/10/23', '位置：五廠四樓', '倉庫', 'C1409M2', '黃春根', 'Chungen_Huang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0271985', '倪宇', 'Jim_Ni@compal.com', '0200131', '金冬芳', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (167, '仁寶信息', 'KHN00DABC0', '系統修護課', '20472', '上海英展機電企業有限公司', 'ALH-3kg', 'T019400851', '2021/04/19', '2021/04/19', '電子桌秤', NULL, '6', '內校', '新增2019/12/18', NULL, NULL, 'C120IFC', '崔冉冉', 'Ranran_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (168, '仁寶信息', 'KMN00DABA0', '作業課', '30636', 'Testo', 'Testo 608-H1', '146839', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增09/07/06', NULL, '黑洞', '0408662', '馬磊', 'Making_Ma@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (169, '仁寶信息', 'KMN00DABA0', '作業課', '30635', 'Testo', 'Testo 608-H1', '146815', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增09/07/06', NULL, '黑洞', '0408662', '馬磊', 'Making_Ma@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (170, '仁寶信息', 'KMN00DABA0', '作業課', '30632', 'Testo', 'Testo 608-H1', '146832', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增09/07/06', NULL, '黑洞', '0408662', '馬磊', 'Making_Ma@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (171, '仁寶信息', 'KMN00DABA0', '作業課', '30633', 'Testo', 'Testo 608-H1', '34886514', '2021/06/09', '2021/06/09', '溫濕度計', NULL, '12', '外校', '新增2016/06/23', NULL, NULL, '0408662', '馬磊', 'Making_Ma@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (172, '仁寶信息', 'KMN00DABA0', '作業課', '30634', 'Testo', 'Testo 608-H1', '34882572', '2021/03/09', '2021/03/09', '溫濕度計', NULL, '12', '外校', '新增2009/07/06', 'SN:146817==>34882572', NULL, '0408662', '馬磊', 'Making_Ma@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (173, '仁寶信息', 'KMN00DABA0', '作業課', '30431', 'Testo', 'Testo 608-H1', '34882571', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (174, '仁寶信息', 'KMN00DABA0', '作業課', '30374', 'Testo', 'Testo 608-H1', '34882556', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (175, '仁寶信息', 'KMN00DABA0', '作業課', '30394', 'Testo', 'Testo 608-H1', '1241337321', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (176, '仁寶信息', 'KMN00DABA0', '作業課', '30202', 'Testo', 'Testo 608-H1', '34882553', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (177, '仁寶信息', 'KMN00DABA0', '作業課', '30205', 'Testo', 'Testo 608-H1', '34871672', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (178, '仁寶信息', 'KMN00DABA0', '作業課', '30378', 'Testo', 'Testo 608-H1', '34882569', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (179, '仁寶信息', 'KMN00DABA0', '作業課', '30217', 'Testo', 'Testo 608-H1', '34882558', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (180, '仁寶信息', 'KMN00DABA0', '作業課', '70107', 'Escort', 'ELC-132A', '04110045', NULL, NULL, 'LCR測試儀', NULL, '12', '外校', '新增06/08/30', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (181, '仁寶信息', 'KMN00DABB0', '製造課', '50739', 'FLUKE', 'FLUKE 179', '90480267', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2006/02/17', '--- 測試電流檔無數值', NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (182, '仁寶信息', 'KMN00DABB0', '製造課', '30652', '台順', 'DTS 650', '090613', NULL, NULL, '烤箱', NULL, '6', '內校', '新增2009/08/04', '位置：五廠4F RMA車間 --- 測試數值誤差超差,建議維修', NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (183, '仁寶信息', 'KMN00DABB0', '製造課', '50640', 'FLUKE', 'FLUKE 179', '80601260', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/03/30', '--- 無法開機,需送修.', '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (184, '仁寶信息', 'KMN00DABB0', '製造課', '60279', 'Tektronix', 'TDS-1012', 'C016027', NULL, NULL, '示波器', NULL, '6', '內校', NULL, '--- 無法開機,需送修.', '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (185, '仁寶信息', 'KMN00DABB0', '製造課', '30547', '台順', 'DTS-60', '080930', NULL, NULL, '烤箱', NULL, '6', '內校', '新增08/10/21', '--- 經校驗,測出箱內均勻度與偏差誤差超差,需送修.', NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (186, '仁寶信息', 'KMN00DABB0', '製造課', '60117', 'Tektronix', 'TDS-220', 'B085886', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/05/02', '--- 使用單位發現開機屏幕過暗,無法調試波形,故需送修后複檢', '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (187, '仁寶信息', 'KMN00DABB0', '製造課', '30651', '台順', 'DTS 650', '090612', NULL, NULL, '烤箱', NULL, '6', '內校', '新增2009/08/04', '--- 維修后校驗溫度數值誤差&均勻度超差,需送修', '黑洞', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (188, '仁寶信息', 'KMN00DABB0', '製造課', '30216', 'DATAPAQ', 'DP9061A', '11096', NULL, NULL, '爐溫測試儀', NULL, '6', '內校', '新增06/08/30', '---  使用單位發現，無法連接電腦使用，需送修', NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (189, '仁寶信息', 'KMN00DABB0', '製造課', '30369', '北京康威儀表有限公司', '(-20℃~50℃)', '/', '2021/12/06', '2021/12/06', '溫度計', NULL, '12', '外校', '新增2009/11/16', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (190, '仁寶信息', 'KMN00DABB0', '製造課', '60230', 'Tektronix', 'TDS 2012', 'C012036', '2021/07/18', '2021/07/18', '示波器', NULL, '6', '內校', '新增2016/06/29', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (191, '仁寶信息', 'KMN00DABB0', '製造課', '50533', 'FLUKE', 'FLUKE 179', '81190362', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2010/10/29', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (192, '仁寶信息', 'KMN00DABB0', '製造課', '50563', 'FLUKE', 'FLUKE 179', '90310250', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (193, '仁寶信息', 'KMN00DABB0', '製造課', '50727', 'FLUKE', 'FLUKE 179', '90480232', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2006/02/17', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (194, '仁寶信息', 'KMN00DABB0', '製造課', '50621', 'FLUKE', 'FLUKE 179', '80601111', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2008/04/18', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (195, '仁寶信息', 'KMN00DABB0', '製造課', '50569', 'FLUKE', 'FLUKE 179', '81190342', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2008/03/14', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (196, '仁寶信息', 'KMN00DABB0', '製造課', '30037', 'QUICK', 'QUICK 191A', 'L191A0706A0149', '2021/06/02', '2021/06/02', '烙鐵溫度測試儀', NULL, '6', '內校', '新增2007/06/22', NULL, '鉄籠子', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (197, '仁寶信息', 'KMN00DABB0', '製造課', '30552', '台順', 'DTS-600', '080902', '2021/05/02', '2021/05/02', '烤箱', NULL, '6', '內校', '新增2008/10/21', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (198, '仁寶信息', 'KMN00DABB0', '製造課', '30544', '台順', 'DTS-60', '080932', '2021/05/02', '2021/05/02', '烤箱', NULL, '6', '內校', '新增2008/10/21', '位置：五廠4F RMA車間', NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (199, '仁寶信息', 'KMN00DABB0', '製造課', '60629', 'Tektronix', 'TDS-2012', 'C030252', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2011/05/19', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (200, '仁寶信息', 'KMN00DABA0', '作業課', '90118', 'HIOS', 'HP-10', '799110', '2021/04/23', '2021/04/23', '扭力測試儀', NULL, '6', '內校', '新增2005/01/10', '2009/04/21轉入', NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (201, '仁寶信息', 'KMN00DABA0', '作業課', '80038', 'QUICK', 'QUICK 498', 'K4980512A107', '2021/04/12', '2021/04/12', '靜電手環測試儀', NULL, '6', '內校', '新增2006/04/11', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (202, '仁寶信息', 'KMN00DABA0', '作業課', '30180', 'Testo', 'Testo 608-H1', '165772', '2021/03/09', '2021/03/09', '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, '鉄籠子', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (203, '仁寶信息', 'KMN00DABA0', '作業課', '30326', 'Testo', 'Testo 608-H1', '165771', '2021/03/09', '2021/03/09', '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (204, '仁寶信息', 'KMN00DABA0', '作業課', '30396', 'Testo', 'Testo 608-H1', '165775', '2021/03/09', '2021/03/09', '溫濕度計', NULL, '12', '外校', '新增2010/04/19', 'SN:由165783=>165775', NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (205, '仁寶信息', 'KMN00DABA0', '作業課', '30324', 'Testo', 'Testo 608-H1', '165774', '2021/03/09', '2021/03/09', '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (206, '仁寶信息', 'KMN00DABA0', '作業課', '30199', 'Testo', 'Testo 608-H1', '165773', '2021/03/09', '2021/03/09', '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (207, '仁寶信息', 'KMN00DABA0', '作業課', '30209', 'Testo', 'Testo 608-H1', '165769', '2021/03/09', '2021/03/09', '溫濕度計', NULL, '12', '外校', '新增2010/04/19', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (208, '仁寶信息', 'KMN00DABA0', '作業課', '30327', 'Testo', 'Testo 608-H1', '34882558', '2021/03/09', '2021/03/09', '溫濕度計', NULL, '12', '外校', '新增2010/04/19', 'SN:165766==>34882558', NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (209, '仁寶資訊', 'KFN00DABC0', '系統修護課', '80004', 'Pegasus', 'PE168-STG-2', 'PB180A001B001445', '2021/04/11', '2021/04/11', '人體綜合測試儀', NULL, '6', '內校', '新增2018/05/14', '位置：五廠4F RMA', '車間門口', '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (210, '仁寶資訊', 'KFN00DABC0', '系統修護課', '20327', '上海規矩儀器科技有限公司', 'XK3150(W)', 'S12206976', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2012/07/16', NULL, NULL, '0410071', '姚波', 'Wave_Yao@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0410071', '姚波', 'Wave_Yao@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (211, '仁寶信息', 'KHN00DABA0', '作業課', '30909', '高強', 'FlBE—1200-6-QDN', 'BZAJ074751', '2021/07/07', '2021/07/07', '干燥箱', NULL, '6', '內校', '新增2020/08/25', NULL, NULL, '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (212, '仁寶信息', 'KHN00DABA0', '作業課', '30908', '高強', 'FlBE—1200-6-QDN', 'BZAJ074750', '2021/07/07', '2021/07/07', '干燥箱', NULL, '6', '內校', '新增2020/08/25', NULL, NULL, '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (213, '仁寶信息', 'KHN00DABA0', '作業課', '30373', '高強', 'FlBE—1200-6-QDN', 'BZAJ074752', '2021/07/07', '2021/07/07', '干燥箱', NULL, '6', '內校', '新增2020/08/25', NULL, NULL, '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (214, '仁寶信息', 'KHN00DABA0', '作業課', '30887', '高強', 'F1BE-1200-6-QDN', 'BZAI 104784', '2021/04/27', '2021/04/27', '干燥箱', NULL, '6', '內校', '新增2019/11/05', NULL, NULL, '0464465', '宋學珍', 'Jenny_Song@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (215, '仁寶信息', 'KHN00DABA0', '作業課', '30816', '美之陽', 'MSD-3200', 'C32OF17010501', NULL, NULL, '干燥箱', NULL, '6', '內校', '新增2017/02/10', NULL, '黑洞', 'C130ZFT', '王新娟', 'Smile_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (216, '仁寶信息', 'KHN00DABA0', '作業課', '30568', '高強', 'A10-315', 'BZ10074668', NULL, NULL, '干燥箱', NULL, '6', '內校', '新增2010/08/03', NULL, '黑洞', 'C130ZFT', '王新娟', 'Smile_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (217, '仁寶信息', 'KHN00DABA0', '作業課', '30567', '高強', 'A10-315', 'BZ10074669', NULL, NULL, '干燥箱', NULL, '6', '內校', '新增2010/08/03', NULL, '黑洞', 'C130ZFT', '王新娟', 'Smile_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (218, '仁寶信息', 'KHN00DABA0', '作業課', '30043', 'NABBO', '161229-1SCX', '/', NULL, NULL, '溫濕度看板', NULL, '12', '外校', '新增2017/04/05', '--- 退檢,濕度超差,需送修.', '黑洞', 'C130ZFT', '王新娟', 'Smile_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (219, '仁寶信息', 'KHN00DABA0', '作業課', '30045', '高強', 'SDE-315', '311234', NULL, NULL, '干燥箱', NULL, '6', '內校', '新增2013/05/03', '位置：五廠4F RMA車間物料房 --- 濕度無法降至10%無法達到使用單位測試需求', '黑洞', 'C130ZFT', '王新娟', 'Smile_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (220, '仁寶信息', 'KHN00DABA0', '作業課', '30817', '美之陽', 'MSD-3200', 'C32OF17010901', NULL, NULL, '干燥箱', NULL, '6', '內校', '新增2017/02/10', '--- 濕度無法達到使用方的測試需求,需送修', '黑洞', 'C130ZFT', '王新娟', 'Smile_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (221, '仁寶信息', 'KHN00DABA0', '作業課', '20236', '上海卓精電子科技有限公司', 'BSM220.3', 'F1024120155011221405200', '2021/03/08', '2021/03/08', '電子天平', NULL, '12', '外校', '新增2016/05/13', NULL, NULL, '0464465', '宋學珍', 'Jenny_Song@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464465', '宋學珍', 'Jenny_Song@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (222, '柏泰電子', 'KJN00DAGA0', '產品工程課', '10038', 'Mitutoyo', '500-173(300mm)', '1065014', '2021/03/09', '2021/03/09', '數顯卡尺', NULL, '6', '內校', '新增2010/03/08', NULL, NULL, '0204315', '王軍', 'Peter_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0204323', '吳桂年', 'Nic_Wu@compal.com', '8947686', '徐民憲', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (223, '柏泰電子', 'KJN00DAGA0', '產品工程課', '10015', 'Mitutoyo', '500-173(300mm)', '1064499', '2021/03/09', '2021/03/09', '數顯卡尺', NULL, '6', '內校', '新增2010/03/08', NULL, NULL, '0204315', '王軍', 'Peter_Wang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0204323', '吳桂年', 'Nic_Wu@compal.com', '8947686', '徐民憲', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (224, '仁寶信息', 'KHN00DACA0', '品管課', '70920', 'TREK', 'TREK 520', '3528', '2021/09/07', '2021/09/07', '靜電電壓測試儀', NULL, '12', '外校', '新增2015/09/04', NULL, NULL, '0504564', '夏司麗', 'Abby_Xia@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0703923', '于普平', 'Amy_Yu@compal.com', '0820423', '劉振環', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (225, '仁寶信息', 'KHN00DACA0', '品管課', '70122', 'TREK', 'TREK 152', '138', '2021/07/02', '2021/07/02', '表面阻抗測試儀', NULL, '12', '外校', '新增2010/06/01', NULL, NULL, '0504564', '夏司麗', 'Abby_Xia@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0703923', '于普平', 'Amy_Yu@compal.com', '0820423', '劉振環', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (226, '仁寶信息', 'KHN00DACA0', '品管課', '40010', 'TES', 'TES-1334A', '141105056', '2021/06/09', '2021/06/09', '照度計', NULL, '12', '外校', '新增2015/07/13', NULL, NULL, '0504564', '夏司麗', 'Abby_Xia@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0703923', '于普平', 'Amy_Yu@compal.com', '0820423', '劉振環', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (227, '仁寶信息', 'KHN00DACA0', '品管課', '80339', 'DR.SCHNEIDER PC', 'SL-030', '771123', '2021/04/19', '2021/04/19', '表面電阻測試儀', NULL, '6', '內校', '新增2009/07/08', NULL, NULL, '0504564', '夏司麗', 'Abby_Xia@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0703923', '于普平', 'Amy_Yu@compal.com', '0820423', '劉振環', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (228, '仁寶信息', 'KHN00DACA0', '品管課', '90110', 'HIOS', 'HP-10', '18629', NULL, NULL, '扭力測試儀', NULL, '6', '內校', '新增06/02/07', '--- 維修后逆時針測出數值仍誤差超差,需送修', '黑洞', '0201286', '李益萍', 'Liping_Li@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0703923', '于普平', 'Amy_Yu@compal.com', '0820423', '劉振環', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (229, '柏泰電子', 'KJN00DACA0', '品管課', '10136', '滕藝', '0.05~1.5mm', '18pcs', NULL, NULL, '厚薄規', NULL, '6', '內校', '新增2015/07/08', '--- 葉片刻度嚴重磨損,建議報廢.', NULL, 'C131BY0', '朱麗菲', 'Gloria_Zhu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0703923', '于普平', 'Amy_Yu@compal.com', '0820423', '劉振環', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (230, '柏泰電子', 'KJN00DACA0', '品管課', '10032', '滕藝', '0.05~1.5mm', '16cs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, 'C131BY0', '朱麗菲', 'Gloria_Zhu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0703923', '于普平', 'Amy_Yu@compal.com', '0820423', '劉振環', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (231, '柏泰電子', 'KJN00DABC0', '製造三課', '50731', 'FLUKE', 'FLUKE 179', '90480255', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2006/02/17', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (232, '柏泰電子', 'KJN00DABC0', '製造三課', '50363', 'FLUKE', 'FLUKE 179', '77701305', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2008/09/26', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (233, '柏泰電子', 'KJN00DABC0', '製造三課', '50076', 'FLUKE', 'FLUKE 179', '79420399', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2008/03/27', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (234, '柏泰電子', 'KJN00DABC0', '製造三課', '50552', 'FLUKE', 'FLUKE 179', '80601259', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2008/03/14', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (235, '柏泰電子', 'KJN00DABC0', '製造三課', '50545', 'FLUKE', 'FLUKE 179', '80601150', '2021/06/27', '2021/06/27', '萬用表', NULL, '6', '內校', '新增2008/03/21', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (236, '柏泰電子', 'KJN00DABC0', '製造三課', '50586', 'FLUKE', 'FLUKE 179', '81190413', '2021/06/27', '2021/06/27', '萬用表', NULL, '6', '內校', '新增2008/04/16', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (237, '柏泰電子', 'KJN00DABC0', '製造三課', '50711', 'FLUKE', 'FLUKE 179', '90290030', '2021/06/27', '2021/06/27', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (238, '柏泰電子', 'KJN00DABC0', '製造三課', '50733', 'FLUKE', 'FLUKE 179', '90480108', '2021/06/27', '2021/06/27', '萬用表', NULL, '6', '內校', '新增2006/02/17', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (239, '柏泰電子', 'KJN00DABC0', '製造三課', '50305', 'FLUKE', 'FLUKE 179', '90290029', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (240, '柏泰電子', 'KJN00DABC0', '製造三課', '50379', 'FLUKE', 'FLUKE 179', '90290027', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2008/04/08', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (241, '柏泰電子', 'KJN00DABC0', '製造三課', '50325', 'FLUKE', 'FLUKE 179', '90290028', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (242, '柏泰電子', 'KJN00DABC0', '製造三課', '50102', 'FLUKE', 'FLUKE 179', '78130100', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2015/10/16', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (243, '柏泰電子', 'KJN00DABC0', '製造三課', '50044', 'FLUKE', 'FLUKE 79', '78680803', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2008/04/09', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (244, '柏泰電子', 'KJN00DABC0', '製造三課', '50650', 'FLUKE', 'FLUKE 179', '82370593', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2008/04/15', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (245, '柏泰電子', 'KJN00DABC0', '製造三課', '50691', 'FLUKE', 'FLUKE 179', '90290361', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2006/01/12', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (246, '柏泰電子', 'KJN00DABC0', '製造三課', '50735', 'FLUKE', 'FLUKE 179', '90480272', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2006/02/17', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (247, '柏泰電子', 'KJN00DABC0', '製造三課', '50689', 'FLUKE', 'FLUKE 179', '82010037', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2008/04/18', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (248, '柏泰電子', 'KJN00DABC0', '製造三課', '50698', 'FLUKE', 'FLUKE 179', '82470384', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2008/03/22', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (249, '柏泰電子', 'KJN00DABC0', '製造三課', '50435', 'FLUKE', 'FLUKE 179', '81320042', '2021/07/04', '2021/07/04', '萬用表', NULL, '6', '內校', '新增2015/05/11', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (250, '柏泰電子', 'KJN00DABC0', '製造三課', '50609', 'FLUKE', 'FLUKE 179', '80601040', '2021/07/06', '2021/07/06', '萬用表', NULL, '6', '內校', '新增2008/03/14', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (251, '柏泰電子', 'KJN00DABC0', '製造三課', '60407', 'Tektronix', 'TDS-1012', 'C014315', '2021/07/08', '2021/07/08', '示波器', NULL, '6', '內校', NULL, NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (252, '柏泰電子', 'KJN00DABC0', '製造三課', '60234', 'Tektronix', 'TDS-2012', 'C010304', '2021/07/18', '2021/07/18', '示波器', NULL, '6', '內校', '新增2015/04/13', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (253, '柏泰電子', 'KJN00DABC0', '製造三課', '60337', 'Tektronix', 'TDS-1012', 'C016076', '2021/07/19', '2021/07/19', '示波器', NULL, '6', '內校', '新增2016/06/29', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (254, '柏泰電子', 'KJN00DABC0', '製造三課', '60301', 'Tektronix', 'TDS-1012', 'C016050', '2021/07/19', '2021/07/19', '示波器', NULL, '6', '內校', '新增2016/06/29', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (255, '柏泰電子', 'KJN00DABC0', '製造三課', '91061', 'Agilent', 'U2001A', 'MY56340003', '2021/08/24', '2021/08/24', '功率傳感器', NULL, '12', '外校', '新增2016/09/21', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (256, '柏泰電子', 'KJN00DABC0', '製造三課', '70013', 'Agilent', 'U2001A', 'MY53360028', '2021/12/06', '2021/12/06', '功率傳感器', NULL, '12', '外校', '新增2013/11/28', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (257, '柏泰電子', 'KJN00DABC0', '製造三課', '70614', 'Agilent', 'U2001A', 'MY54370006', '2021/12/06', '2021/12/06', '功率傳感器', NULL, '12', '外校', '新增2014/11/03', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (258, '柏泰電子', 'KJN00DABC0', '製造三課', '70613', 'Agilent', 'U2001A', 'MY54370008', '2021/12/06', '2021/12/06', '功率傳感器', NULL, '12', '外校', '新增2014/11/03', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (259, '柏泰電子', 'KJN00DABC0', '製造三課', '30352', 'Testo', 'Testo 608-H1', '1241337321', '2021/12/29', '2021/12/29', '溫濕度計', NULL, '12', '外校', '新增2015/07/10', NULL, '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (260, '柏泰電子', 'KJN00DABC0', '製造三課', '30157', 'KSON', 'AT-E2C-90', '4168T', NULL, NULL, 'MTBF chamber', NULL, '6', '內校', '新增2005/12/17', '良品閒置:2017/09/21使用單位確認ok', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (261, '柏泰電子', 'KJN00DABC0', '製造三課', '30128', 'KSON', 'AT-E2C-90', '4169T', NULL, NULL, 'MTBF chamber', NULL, '6', '內校', '新增2005/12/17\n2014/04/18收到該單位開具的申請:延長1年有效期.', '良品閒置:2017/09/21使用單位確認ok', NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (262, '柏泰電子', 'KJN00DABC0', '製造三課', '80115', 'QUICK', 'QUICK 492E', '4921005026', NULL, NULL, '人體綜合測試儀', NULL, '6', '內校', '新增2010/07/05', '位置：五廠4F RMA', '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (263, '柏泰電子', 'KJN00DABC0', '製造三課', '30203', 'Testo', 'Testo 608-H1', '143952', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增09/07/29', NULL, '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (264, '柏泰電子', 'KJN00DABC0', '製造三課', '30319', 'Testo', 'Testo 608-H1', '143957', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增09/07/29', NULL, NULL, '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (265, '柏泰電子', 'KJN00DABC0', '製造三課', '30351', 'Testo', 'Testo 608-H1', '143966', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增09/07/29', NULL, '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (266, '柏泰電子', 'KJN00DABC0', '製造三課', '30238', 'Testo', 'Testo 608-H1', '143950', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增09/07/29', NULL, '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (267, '柏泰電子', 'KJN00DABC0', '製造三課', '30193', 'Testo', 'Testo 608-H1', '34882541', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增2010/04/07', NULL, '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (268, '柏泰電子', 'KJN00DABC0', '製造三課', '30171', 'Testo', 'Testo 608-H1', '34882677', NULL, NULL, '溫濕度計', NULL, '12', '外校', '新增2010/04/07', NULL, '黑洞', '0615692', '于志學', 'Zhixue_Yu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (269, '柏泰電子', 'KJN00DABC0', '製造三課', '90644', '上海眾里電子有限公司', 'QH10', 'ZL2005B01056', '2021/06/10', '2021/06/10', '可燃氣體探測器', NULL, '12', '外校', '新增2020/05/25', NULL, NULL, '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (270, '柏泰電子', 'KJN00DABC0', '製造三課', '90645', '上海眾里電子有限公司', 'QH10', 'ZL2005B01090', '2021/06/10', '2021/06/10', '可燃氣體探測器', NULL, '12', '外校', '新增2020/05/25', NULL, NULL, '0513768', '張文昌', 'Wes_Zhang@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (271, '柏泰電子', 'KJN00DABC0', '製造三課', '60267', 'Tektronix', 'TDS-1012', 'C016065', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2008/04/29', NULL, NULL, '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (272, '柏泰電子', 'KJN00DABC0', '製造三課', '60184', 'Tektronix', 'TDS-2012', 'C012011', '2021/02/16', '2021/02/16', '示波器', NULL, '6', '內校', '新增2008/05/02', NULL, NULL, '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (273, '柏泰電子', 'KJN00DABC0', '製造三課', '10023', '滕藝', '0.05~1.5mm', '16pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2013/07/10', NULL, NULL, '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (274, '柏泰電子', 'KJN00DABC0', '製造三課', '10183', '滕藝', '0.1-1.0mm', '11pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2013/07/10', NULL, NULL, '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (275, '柏泰電子', 'KJN00DABC0', '製造三課', '10209', '滕藝', '0.05-1.0mm', '12pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2013/07/10', NULL, NULL, '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (276, '柏泰電子', 'KJN00DABC0', '製造三課', '50606', 'FLUKE', 'FLUKE 179', '80601255', '2021/06/16', '2021/06/16', '萬用表', NULL, '6', '內校', '新增2010/10/20', NULL, NULL, '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (277, '柏泰電子', 'KJN00DABC0', '製造三課', '50644', 'FLUKE', 'FLUKE 179', '82010079', '2021/06/27', '2021/06/27', '萬用表', NULL, '6', '內校', '新增2008/04/09', NULL, NULL, '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (278, '柏泰電子', 'KJN00DABC0', '製造三課', '50798', 'FLUKE', 'FLUKE 179', '82370595', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/03/21', '---  10A DC/AC無法測出數值,需送修.', '黑洞', '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (279, '柏泰電子', 'KJN00DABC0', '製造三課', '60207', 'Tektronix', 'TDS-2012', 'C011392', NULL, NULL, '示波器', NULL, '6', '內校', '新增2007/10/24', '--- 使用單位發現開機黑屏,無法檢測,故需送修', NULL, '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (280, '柏泰電子', 'KJN00DABC0', '製造三課', '60293', 'Tektronix', 'TDS-1012', 'C016046', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/24', '--- 設備無法開機,故暫停使用', '黑洞', '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (281, '柏泰電子', 'KJN00DABC0', '製造三課', '50583', 'FLUKE', 'FLUKE 179', '81610362', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2008/03/14', '--- 毫安檔電流無法測出數值,需送修', '黑洞', '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (282, '柏泰電子', 'KJN00DABC0', '製造三課', '50737', 'FLUKE', 'FLUKE 179', '90480119', NULL, NULL, '萬用表', NULL, '6', '內校', '新增2006/02/17', '--- 經校驗毫安檔DC/AC無法測出數值,需送修.', '鉄籠子', '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (283, '柏泰電子', 'KJN00DABC0', '製造三課', '60065', 'Tektronix', 'TDS-220', 'B085784', NULL, NULL, '示波器', NULL, '6', '內校', '新增2008/04/15', '--- 屏幕顯示暗，無法測試', NULL, '0520225', '劉自良', 'Charly_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0520225', '劉自良', 'Charly_Liu@compal.com', '0401943', '徐金保', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (284, '仁寶資訊', 'KFN00DABE0', '備品製造課', '10197', '滕藝', '0.1-1.5mm', '14pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, '0251437', '袁花', 'Angela_Yuan@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (285, '仁寶資訊', 'KFN00DABE0', '備品製造課', '10225', '滕藝', '0.1-1.5mm', '14pcs', '2021/03/09', '2021/03/09', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, '0251437', '袁花', 'Angela_Yuan@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (286, '仁寶資訊', 'KFN00DABE0', '備品製造課', '10280', '滕藝', '0.05~1.5mm', '15pcs', '2021/03/10', '2021/03/10', '厚薄規', NULL, '6', '內校', '新增2015/07/08', NULL, NULL, '0251437', '袁花', 'Angela_Yuan@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (287, '仁寶資訊', 'KFN00DABE0', '備品製造課', '20471', '上海英展機電企業有限公司', 'ALH-3kg', 'T019400852', '2021/04/19', '2021/04/19', '電子桌秤', NULL, '6', '內校', '新增2019/12/18', NULL, NULL, '0251437', '袁花', 'Angela_Yuan@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (288, '仁寶信息', 'KHN00DABE0', '備品製造課', '20088', '上海英展機電企業有限公司', 'TCS(SB730)', 'S25200972', '2021/08/11', '2021/08/11', '電子秤', NULL, '6', '內校', '新增2008/02/15', '---  使用單位發現測試數值誤差超差,需送修.', NULL, '0702153', '袁海峰', 'Dick_Yuan@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (289, '仁寶信息', 'KHN00DABE0', '備品製造課', '20113', '上海規矩儀器科技有限公司', 'XK3150(W)', 'S10102502', NULL, NULL, '電子秤', NULL, '6', '內校', '新增05/07/05', '--- 使用單位發現測出數值誤差超差,故需送修', NULL, '0702153', '袁海峰', 'Dick_Yuan@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (290, '仁寶信息', 'KHN00DABE0', '備品製造課', '20090', '上海英展機電企業有限公司', 'ALH-6kg', 'S1100157', NULL, NULL, '電子桌秤', NULL, '6', '內校', '新增2008/02/21', '--- 使用單位發現秤重時數值誤差超差及無法自動歸零,故需送修', '黑洞', '0702153', '袁海峰', 'Dick_Yuan@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (291, '仁寶信息', 'KHN00DABE0', '備品製造課', '20421', '上海英展機電企業有限公司', 'XK3150(W)', 'S15210113', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2015/10/27', '--- 使用單位發現屏幕顯示異常,故需送修', '黑洞', '0702153', '袁海峰', 'Dick_Yuan@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (292, '仁寶信息', 'KMN00DABE0', '備品製造課', '20116', '上海規矩儀器科技有限公司', 'XK3150(W)', 'S11404004', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2012/02/24', NULL, NULL, 'C120IFC', '崔冉冉', 'Ranran_Cui@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (293, '仁寶信息', 'KHN00DABE0', '備品製造課', '20564', '上海英展機電企業有限公司', 'XK3150(W)-SH', 'STWB2020921', '2021/03/13', '2021/03/13', '電子秤', NULL, '6', '內校', '新增2020/09/10', NULL, NULL, '0357324', '劉芹', 'Qin_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (294, '仁寶信息', 'KHN00DABE0', '備品製造課', '20565', '上海英展機電企業有限公司', 'XK3150(W)-SH', 'STWB2020922', '2021/03/13', '2021/03/13', '電子秤', NULL, '6', '內校', '新增2020/09/10', NULL, NULL, '0357324', '劉芹', 'Qin_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (295, '仁寶信息', 'KHN00DABE0', '備品製造課', '20418', '上海英展機電企業有限公司', 'XK3150(W)', 'S15210110', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2015/10/27', NULL, NULL, '0357324', '劉芹', 'Qin_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (296, '仁寶信息', 'KHN00DABE0', '備品製造課', '20170', '上海英展機電企業有限公司', 'XK3150(W)', 'CW17200606', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2017/10/23', NULL, NULL, '0357324', '劉芹', 'Qin_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (297, '仁寶信息', 'KHN00DABE0', '備品製造課', '20559', '英展', 'XK3150(W)', 'STWB1940831', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2020/05/07', NULL, NULL, '0357324', '劉芹', 'Qin_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (298, '仁寶信息', 'KHN00DABE0', '備品製造課', '90034', 'MICROTEST', '8720', 'CLHA14025', NULL, NULL, '線材綜合測試儀', NULL, '12', '外校', '新增2010/08/24', '---  經昆山計量所檢驗數值超差.', NULL, '0357324', '劉芹', 'Qin_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (299, '仁寶信息', 'KHN00DABE0', '備品製造課', '20419', '上海英展機電企業有限公司', 'XK3150(W)', 'S15210111', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2015/10/27', '--- 使用單位發現屏幕顯示異常,故需送修', NULL, '0357324', '劉芹', 'Qin_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (300, '仁寶信息', 'KHN00DABE0', '備品製造課', '90626', 'PRECISING', 'HP-10', '253473', NULL, NULL, '扭力測試儀', NULL, '6', '內校', '新增2012/03/15', '--- 經校驗,測出數值誤差超差,需送修', NULL, '0357324', '劉芹', 'Qin_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (301, '仁寶信息', 'KHN00DABE0', '備品製造課', '20174', '上海英展機電企業有限公司', 'XK3150(W)', 'CW17300291', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2017/10/23', '--- 無法連接打印,需送修.', '黑洞', '0357324', '劉芹', 'Qin_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (302, '仁寶信息', 'KHN00DABE0', '備品製造課', '20319', '臺衡惠而邦', 'XK3108-T2000A', '5925038126', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2013/11/12', NULL, NULL, '0409880', '劉家榮', 'Ageless_Liu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (303, '仁寶信息', 'KMN00DABE0', '備品製造課', '20320', '臺衡惠而邦', 'XK3108-T2000A', '6111042127', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2013/11/12', NULL, NULL, '07Q7157', '瞿麗', 'Li_Qu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (304, '仁寶信息', 'KMN00DABE0', '備品製造課', '20155', '臺衡惠而邦', 'XK3108-T2000A', '6821022012', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2014/10/07', NULL, NULL, '07Q7157', '瞿麗', 'Li_Qu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (305, '仁寶信息', 'KMN00DABE0', '備品製造課', '20085', '上海規矩儀器科技有限公司', 'XK3150(W)', 'A08335944', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2006/09/06', '2010/09/06由ABO轉入\n2011/08/22由ABO 組包一課轉入\n2015/03/25由A58 TNB轉入\n2011/07/21由IPHA210轉入', NULL, '07Q7157', '瞿麗', 'Li_Qu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (306, '仁寶信息', 'KMN00DABE0', '備品製造課', '20438', '上海英展機電企業有限公司', 'XK3150(W)', 'KFGMMAF130188', '2021/04/06', '2021/04/06', '電子秤', NULL, '6', '內校', '新增2019/10/04', NULL, NULL, '07Q7157', '瞿麗', 'Li_Qu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (307, '仁寶信息', 'KHN00DABE0', '備品製造課', '20237', '上海規矩儀器科技有限公司', 'XK3150(W)', 'S09401147', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2010/01/07', '--- 傳感器壞，需送修.', NULL, '07Q7157', '瞿麗', 'Li_Qu@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0409880', '劉家榮', 'Ageless_Liu@compal.com', '9047107', '陳晃宙', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (308, '仁寶信息', 'KMN00DAAB0', '倉庫管理課', '30183', '高強', 'SDE-315', 'AZ05040242', NULL, NULL, '干燥箱', NULL, '6', '內校', '新增06/04/21', '--- 經校驗,測出濕度數值誤差超差', NULL, 'C14246P', '陳浩', 'Haohao_Chen@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0305693', '錢真', 'Money_Qian@compal.com', '0200131', '金冬芳', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (309, '仁寶信息', 'KMN00DAAB0', '倉庫管理課', '30058', '高強', 'SDE-320', '002893', NULL, NULL, '干燥箱', NULL, '6', '內校', NULL, '--- 閒置轉不良:使用單位發現溫度示值誤差超差,故暫停使用', NULL, 'C14246P', '陳浩', 'Haohao_Chen@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0305693', '錢真', 'Money_Qian@compal.com', '0200131', '金冬芳', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (310, '仁寶信息', 'KMN00DAAB0', '倉庫管理課', '30069', '高強', 'SDE-315', '003988', NULL, NULL, '干燥箱', NULL, '6', '內校', NULL, '--- 閒置轉不良:使用單位發現溫度示值誤差超差,故暫停使用', NULL, 'C14246P', '陳浩', 'Haohao_Chen@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0305693', '錢真', 'Money_Qian@compal.com', '0200131', '金冬芳', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (311, '仁寶資訊', 'KFN00DAAB0', '倉庫管理課', '20026', '上海耀華稱重系統有限公司', 'A12E', '703700', '2021/04/15', '2021/04/15', '電子地磅', NULL, '6', '內校', '新增2008/02/19', '位置：（天河）中外運倉庫', '天合', '0464953', '謝瑞鋒', 'Frank_Xie@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0305693', '錢真', 'Money_Qian@compal.com', '0200131', '金冬芳', '9147071', '吳逸民', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (312, '仁寶資訊', 'KFN00DABB0', '製造課', '20167', '聯貿電子', 'TCS-060', 'E7080039', NULL, NULL, '電子秤', NULL, '6', '內校', '新增2009/09/24', '--- 經校驗40kg以上測出數值誤差超差,需送修.', NULL, 'C140WKV', '孟東', 'Dong_Meng@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464953', '謝瑞鋒', 'Frank_Xie@compal.com', '0305693', '錢真', '0200131', '金冬芳', NULL);
INSERT INTO `compal_sod_instrument_list` VALUES (313, '仁寶資訊', 'KFN00DABB0', '製造課', '20374', '上海耀華稱重系統有限公司', 'XK3190-A12+E', '1810146559', '2021/04/13', '2021/04/13', '稱重牛車', NULL, '6', '內校', '新增2019/02/20', '位置：五廠4樓成品倉', '倉庫', '0464953', '謝瑞鋒', 'Frank_Xie@compal.com', '20687142', '崔志正', 'Zhizheng_Cui@compal.com', '0464953', '謝瑞鋒', 'Frank_Xie@compal.com', '0305693', '錢真', '0200131', '金冬芳', NULL);

-- ----------------------------
-- Table structure for ep_img_path
-- ----------------------------
DROP TABLE IF EXISTS `ep_img_path`;
CREATE TABLE `ep_img_path`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `path1` char(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path3` char(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 929 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of ep_img_path
-- ----------------------------
INSERT INTO `ep_img_path` VALUES (270, '/tp5/public/static/epimgs/270/孟東.jpg', '/tp5/public/static/epimgs/270/崔志正.jpg');
INSERT INTO `ep_img_path` VALUES (901, '/tp5/public/static/epimgs/901/徐晚.jpg', '/tp5/public/static/epimgs/901/崔志正.jpg');
INSERT INTO `ep_img_path` VALUES (271, '/tp5/public/static/epimgs/271/謝瑞鋒.jpg', '/tp5/public/static/epimgs/271/崔志正.jpg');
INSERT INTO `ep_img_path` VALUES (272, '/tp5/public/static/epimgs/272/姚波.jpg', '/tp5/public/static/epimgs/272/崔志正.jpg');
INSERT INTO `ep_img_path` VALUES (273, '/tp5/public/static/epimgs/273/袁花.png', '/tp5/public/static/epimgs/273/崔志正.png');
INSERT INTO `ep_img_path` VALUES (274, '/tp5/public/static/epimgs/274/袁花.png', '/tp5/public/static/epimgs/274/崔志正.png');
INSERT INTO `ep_img_path` VALUES (275, '/tp5/public/static/epimgs/275/袁花.png', '/tp5/public/static/epimgs/275/崔志正.jpg');
INSERT INTO `ep_img_path` VALUES (276, '/tp5/public/static/epimgs/276/崔志正.jpg', NULL);
INSERT INTO `ep_img_path` VALUES (277, '/tp5/public/static/epimgs/277/崔志正.jpg', '/tp5/public/static/epimgs/277/all.jpg');
INSERT INTO `ep_img_path` VALUES (914, '/tp5/public/static/epimgs/914/崔志正.jpg', '/tp5/public/static/epimgs/914/all.jpg');
INSERT INTO `ep_img_path` VALUES (915, '/tp5/public/static/epimgs/915/崔志正.jpg', '/tp5/public/static/epimgs/915/all.jpg');
INSERT INTO `ep_img_path` VALUES (916, '/tp5/public/static/epimgs/916/崔志正.jpg', '/tp5/public/static/epimgs/916/all.jpg');
INSERT INTO `ep_img_path` VALUES (917, '/tp5/public/static/epimgs/917/崔志正.jpg', '/tp5/public/static/epimgs/917/all.jpg');
INSERT INTO `ep_img_path` VALUES (918, '/tp5/public/static/epimgs/918/崔志正.jpg', '/tp5/public/static/epimgs/918/all.jpg');
INSERT INTO `ep_img_path` VALUES (919, '/tp5/public/static/epimgs/919/崔志正.jpg', '/tp5/public/static/epimgs/919/all.jpg');
INSERT INTO `ep_img_path` VALUES (920, '/tp5/public/static/epimgs/920/崔志正.jpg', '/tp5/public/static/epimgs/920/all.jpg');
INSERT INTO `ep_img_path` VALUES (921, '/tp5/public/static/epimgs/921/崔志正.jpg', '/tp5/public/static/epimgs/921/all.jpg');
INSERT INTO `ep_img_path` VALUES (922, '/tp5/public/static/epimgs/922/崔志正.png', '/tp5/public/static/epimgs/922/all.png');
INSERT INTO `ep_img_path` VALUES (928, '/tp5/public/static/epimgs/928/崔志正.jpg', '/tp5/public/static/epimgs/928/all.jpg');
INSERT INTO `ep_img_path` VALUES (93, '/tp5/public/static/epimgs/93/崔志正.jpg', '/tp5/public/static/epimgs/93/all.jpg');
INSERT INTO `ep_img_path` VALUES (94, '/tp5/public/static/epimgs/94/崔志正.jpg', '/tp5/public/static/epimgs/94/all.jpg');
INSERT INTO `ep_img_path` VALUES (95, '/tp5/public/static/epimgs/95/崔志正.jpg', NULL);
INSERT INTO `ep_img_path` VALUES (148, '/tp5/public/static/epimgs/148/崔志正.jpg', '/tp5/public/static/epimgs/148/all.jpg');
INSERT INTO `ep_img_path` VALUES (288, '/tp5/public/static/epimgs/288/崔志正.png', '/tp5/public/static/epimgs/288/all.jpg');
INSERT INTO `ep_img_path` VALUES (289, '/tp5/public/static/epimgs/289/崔志正.png', NULL);
INSERT INTO `ep_img_path` VALUES (1, '/tp5/public/static/epimgs/1/于志學.jpg', '/tp5/public/static/epimgs/1/all.jpg');
INSERT INTO `ep_img_path` VALUES (2, '/tp5/public/static/epimgs/2/于志學.jpg', '/tp5/public/static/epimgs/2/all.png');
INSERT INTO `ep_img_path` VALUES (3, '/tp5/public/static/epimgs/3/于志學.png', '/tp5/public/static/epimgs/3/all.jpg');

-- ----------------------------
-- Table structure for equipment_mail
-- ----------------------------
DROP TABLE IF EXISTS `equipment_mail`;
CREATE TABLE `equipment_mail`  (
  `id` int(10) NOT NULL,
  `toname` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipment_mail
-- ----------------------------
INSERT INTO `equipment_mail` VALUES (1, 'iori', '1409330098@qq.com');
INSERT INTO `equipment_mail` VALUES (2, 'test2', 'test2@123.com');

-- ----------------------------
-- Table structure for equipment_mail1
-- ----------------------------
DROP TABLE IF EXISTS `equipment_mail1`;
CREATE TABLE `equipment_mail1`  (
  `id` int(10) NOT NULL,
  `toname` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipment_mail1
-- ----------------------------
INSERT INTO `equipment_mail1` VALUES (2, 'test222', 'test@123.com');
INSERT INTO `equipment_mail1` VALUES (2, 'test222', 'test@123.com');
INSERT INTO `equipment_mail1` VALUES (2, 'test222', 'test@123.com');
INSERT INTO `equipment_mail1` VALUES (2, 'test222', 'test@123.com');
INSERT INTO `equipment_mail1` VALUES (2, 'test222', 'test@123.com');
INSERT INTO `equipment_mail1` VALUES (2, 'test222', 'test@123.com');

-- ----------------------------
-- Table structure for lesson
-- ----------------------------
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lesson
-- ----------------------------
INSERT INTO `lesson` VALUES (1, 'PHP');
INSERT INTO `lesson` VALUES (2, 'MYSQL');
INSERT INTO `lesson` VALUES (3, 'LINUX');
INSERT INTO `lesson` VALUES (4, 'JS');

-- ----------------------------
-- Table structure for pend_equipitem
-- ----------------------------
DROP TABLE IF EXISTS `pend_equipitem`;
CREATE TABLE `pend_equipitem`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plant` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `checkdata` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `checktype` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custodian` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `incharge` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `director1` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT 0,
  `itime` timestamp(0) NULL DEFAULT NULL,
  `etime1` timestamp(0) NULL DEFAULT NULL,
  `step1` int(1) NULL DEFAULT NULL,
  `step2` int(1) NULL DEFAULT NULL,
  `step3` int(1) NULL DEFAULT NULL,
  `itime2` timestamp(0) NULL DEFAULT NULL,
  `etime2` timestamp(0) NULL DEFAULT NULL,
  `etime3` timestamp(0) NULL DEFAULT NULL,
  `memo1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memo2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memo3` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bgr_mail` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fzr_mail` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt1_mail` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 932 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pend_equipitem
-- ----------------------------
INSERT INTO `pend_equipitem` VALUES (293, '電子秤', 'XK3150(W)-SH', '上海英展機電企業有限公司', '仁寶信息', '備品製造課', '2021-03-13', '內校', '劉芹', '崔志正', '劉家榮', 0, '2021-03-05 08:46:30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Qin_Liu@compal.com', 'Zhizheng_Cui@compal.com', 'Ageless_Liu@compal.com');
INSERT INTO `pend_equipitem` VALUES (162, '厚薄規', '0.05-1.5mm', '滕藝', '仁寶信息', '備品品管課', '2021-03-13', '內校', '魏云云', '崔志正', '夏司麗', 0, '2021-03-05 08:46:30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cloud_Wei@compal.com', 'Zhizheng_Cui@compal.com', 'Abby_Xia@compal.com');
INSERT INTO `pend_equipitem` VALUES (1, '萬用表', 'FLUKE 179', 'FLUKE', '柏泰電子', '製造三課', '2021-03-03', '內校', '于志學', '崔志正', '劉自良', 0, '2021-02-23 15:56:30', '2021-03-02 19:12:22', 1, 0, NULL, NULL, NULL, NULL, 'asd', NULL, NULL, 'Zhixue_Yu@compal.com', 'Zhizheng_Cui@compal.com', 'Charly_Liu@compal.com');
INSERT INTO `pend_equipitem` VALUES (221, '電子天平', 'BSM220.3', '上海卓精電子科技有限公司', '仁寶信息', '作業課', '2021-03-08', '外校', '宋學珍', '崔志正', '宋學珍', 0, '2021-02-28 08:46:30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jenny_Song@compal.com', 'Zhizheng_Cui@compal.com', 'Jenny_Song@compal.com');
INSERT INTO `pend_equipitem` VALUES (294, '電子秤', 'XK3150(W)-SH', '上海英展機電企業有限公司', '仁寶信息', '備品製造課', '2021-03-13', '內校', '劉芹', '崔志正', '劉家榮', 0, '2021-03-05 08:46:30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Qin_Liu@compal.com', 'Zhizheng_Cui@compal.com', 'Ageless_Liu@compal.com');
INSERT INTO `pend_equipitem` VALUES (15, 'BT/WLAN 無線終端測試儀', 'N4010A', 'Agilent', '柏泰電子', '製造三課', '2021-03-22', '外校', '于志學', '崔志正', '劉自良', 0, '2021-03-14 08:46:30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Zhixue_Yu@compal.com', 'Zhizheng_Cui@compal.com', 'Charly_Liu@compal.com');
INSERT INTO `pend_equipitem` VALUES (201, '靜電手環測試儀', 'QUICK 498', 'QUICK', '仁寶信息', '作業課', '2021-04-12', '內校', '姚波', '崔志正', '姚波', 0, '2021-04-04 08:46:30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Wave_Yao@compal.com', 'Zhizheng_Cui@compal.com', 'Wave_Yao@compal.com');
INSERT INTO `pend_equipitem` VALUES (313, '稱重牛車', 'XK3190-A12+E', '上海耀華稱重系統有限公司', '仁寶資訊', '製造課', '2021-04-13', '內校', '謝瑞鋒', '崔志正', '謝瑞鋒', 0, '2021-04-05 08:46:30', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Frank_Xie@compal.com', 'Zhizheng_Cui@compal.com', 'Frank_Xie@compal.com');

-- ----------------------------
-- Table structure for stu
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `sex` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `stu_id`(`class_id`) USING BTREE,
  CONSTRAINT `stu_id` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu
-- ----------------------------
INSERT INTO `stu` VALUES (1, '李广', 1, '1998-02-12 08:22:13', '2019-07-20 14:22:16', '男');
INSERT INTO `stu` VALUES (2, '何青', 1, '1985-07-22 18:19:13', '2019-07-17 21:50:38', '女');
INSERT INTO `stu` VALUES (3, '钱佳', 3, '1989-11-17 10:29:13', '2019-07-17 20:54:14', '男');
INSERT INTO `stu` VALUES (4, '刘玉', 1, '1999-07-03 19:46:13', '2019-07-17 20:54:14', '女');
INSERT INTO `stu` VALUES (5, '后盾人', 2, '2003-09-01 20:33:13', '2019-07-20 16:41:32', '男');
INSERT INTO `stu` VALUES (6, '张云', 3, '1996-09-01 20:33:13', '2019-07-19 12:59:40', '女');
INSERT INTO `stu` VALUES (7, '李风', 1, '2003-02-15 20:33:13', '2019-07-20 14:30:02', '男');
INSERT INTO `stu` VALUES (8, '李兰', 2, NULL, '2019-07-19 12:50:07', '女');
INSERT INTO `stu` VALUES (9, '李月', 1, NULL, '2019-07-18 17:49:03', '女');
INSERT INTO `stu` VALUES (10, '刘雷', NULL, '1996-11-08 20:33:13', '2019-07-20 15:59:28', NULL);
INSERT INTO `stu` VALUES (17, '柳儿', 5, NULL, '2021-03-19 15:46:05', '女');
INSERT INTO `stu` VALUES (18, '柳儿', 2, NULL, '2021-03-19 09:26:52', '女');

-- ----------------------------
-- Table structure for stu_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_info`;
CREATE TABLE `stu_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生资料表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_info
-- ----------------------------
INSERT INTO `stu_info` VALUES (1, '2300071698@qq.com', '2300071698', '999999999', 1);
INSERT INTO `stu_info` VALUES (2, 'good@houdunren.com', '9999999', '188888888', 3);
INSERT INTO `stu_info` VALUES (3, 'hello@houdunren.com', '2222', '1988888888', 5);

-- ----------------------------
-- Table structure for stu_lesson
-- ----------------------------
DROP TABLE IF EXISTS `stu_lesson`;
CREATE TABLE `stu_lesson`  (
  `stu_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生学习的课程表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_lesson
-- ----------------------------
INSERT INTO `stu_lesson` VALUES (1, 2);
INSERT INTO `stu_lesson` VALUES (1, 1);
INSERT INTO `stu_lesson` VALUES (2, 3);
INSERT INTO `stu_lesson` VALUES (3, 4);
INSERT INTO `stu_lesson` VALUES (4, 2);
INSERT INTO `stu_lesson` VALUES (5, 3);
INSERT INTO `stu_lesson` VALUES (6, 1);

-- ----------------------------
-- Table structure for think_afm
-- ----------------------------
DROP TABLE IF EXISTS `think_afm`;
CREATE TABLE `think_afm`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `job_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_no` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `overtime_type` int(2) NOT NULL,
  `dntype` int(2) NOT NULL,
  `ocmtype` int(2) NOT NULL,
  `nowday` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `begin_time` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_time` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pthour` float(3, 1) NOT NULL,
  `oreason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_no` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'INR0000000',
  `fill_time` timestamp(0) NOT NULL,
  `eflag` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_afm
-- ----------------------------
INSERT INTO `think_afm` VALUES (11, '20547537', 'KMN00DACB0', '孫暢暢', 2, 1, 2, '2020/09/13', '2020/09/11 08:00', '2020/09/11 19:40', 10.0, '配合生产', 'INR0000000', '2020-09-11 08:58:44', 1);
INSERT INTO `think_afm` VALUES (9, '20551283', 'KHN00DACB0', '劉俊成', 2, 1, 2, '2020/09/15', '2020/09/11 08:00', '2020/09/11 19:40', 10.0, '配合生产', 'INR0000000', '2020-09-11 08:18:46', 1);
INSERT INTO `think_afm` VALUES (8, '20551283', 'KHN00DACB0', '劉俊成', 2, 1, 2, '2020/09/11', '2020/09/11 08:00', '2020/09/11 19:40', 10.0, '配合生产', 'INR0000000', '2020-09-11 08:18:46', 1);
INSERT INTO `think_afm` VALUES (10, '20547537', 'KMN00DACB0', '孫暢暢', 2, 1, 2, '2020/09/14', '2020/09/11 08:00', '2020/09/11 19:40', 10.0, '配合生产', 'INR0000000', '2020-09-11 08:58:44', 1);
INSERT INTO `think_afm` VALUES (12, '20547537', 'KMN00DACB0', '孫暢暢', 2, 1, 2, '2020/09/12', '2020/09/11 08:00', '2020/09/11 19:40', 10.0, '配合生产', 'INR0000000', '2020-09-11 08:58:44', 1);

-- ----------------------------
-- Table structure for think_bfm
-- ----------------------------
DROP TABLE IF EXISTS `think_bfm`;
CREATE TABLE `think_bfm`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `job_id` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_no` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bdate` date NOT NULL,
  `begin_time` timestamp(0) NOT NULL,
  `end_time` timestamp(0) NOT NULL,
  `bday` float(3, 1) NOT NULL,
  `bthour` float(3, 1) NOT NULL,
  `breason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `baddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fill_time` timestamp(0) NOT NULL,
  `eflag` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_bfm
-- ----------------------------
INSERT INTO `think_bfm` VALUES (1, 'admin', 'K*N00DACB0', '管理员', '2020-08-27', '2020-08-27 00:00:00', '2020-08-27 16:07:00', 0.0, 2.0, 'dsa', '2', '2020-08-27 16:07:01', 0);
INSERT INTO `think_bfm` VALUES (2, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 08:57:00', '2020-08-28 08:57:00', 1.0, 0.0, 'ddd', 'sa', '2020-08-28 08:57:01', 0);
INSERT INTO `think_bfm` VALUES (3, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 08:57:00', '2020-08-28 08:57:00', 2.0, 0.0, 'ddd', 'sa', '2020-08-28 08:57:01', 0);
INSERT INTO `think_bfm` VALUES (4, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 08:57:00', '2020-08-28 08:57:00', 3.0, 0.0, 'ddd', 'sa', '2020-08-28 08:57:01', 0);
INSERT INTO `think_bfm` VALUES (5, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 08:57:00', '2020-08-28 08:57:00', 4.0, 0.0, 'ddd', 'sa', '2020-09-02 15:37:37', 1);
INSERT INTO `think_bfm` VALUES (6, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 09:11:00', '2020-08-28 09:11:00', 5.0, 8.0, 'sa', 'ddd', '2020-08-28 09:11:31', NULL);
INSERT INTO `think_bfm` VALUES (7, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 08:57:00', '2020-08-28 08:57:00', 6.0, 0.0, 'ddd', 'sa', '2020-08-28 08:57:01', NULL);
INSERT INTO `think_bfm` VALUES (8, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 09:11:00', '2020-08-28 09:11:00', 7.0, 8.0, 'sa', 'ddd', '2020-08-28 09:11:31', NULL);
INSERT INTO `think_bfm` VALUES (9, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 08:57:00', '2020-08-28 08:57:00', 8.0, 0.0, 'ddd', 'sa', '2020-08-28 08:57:01', NULL);
INSERT INTO `think_bfm` VALUES (10, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 09:11:00', '2020-08-28 09:11:00', 9.0, 8.0, 'sa', 'ddd', '2020-08-28 09:11:31', NULL);
INSERT INTO `think_bfm` VALUES (11, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 08:57:00', '2020-08-28 08:57:00', 10.0, 0.0, 'ddd', 'sa', '2020-08-28 08:57:01', NULL);
INSERT INTO `think_bfm` VALUES (12, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 09:11:00', '2020-08-28 09:11:00', 11.0, 8.0, 'sa', 'ddd', '2020-08-28 09:11:31', NULL);
INSERT INTO `think_bfm` VALUES (13, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 09:11:00', '2020-08-28 09:11:00', 12.0, 8.0, 'sa', 'ddd', '2020-08-28 09:11:31', NULL);
INSERT INTO `think_bfm` VALUES (14, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 08:57:00', '2020-08-28 08:57:00', 13.0, 0.0, 'ddd', 'sa', '2020-08-28 08:57:01', NULL);
INSERT INTO `think_bfm` VALUES (15, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 09:11:00', '2020-08-28 09:11:00', 14.0, 8.0, 'sa', 'ddd', '2020-08-28 09:11:31', NULL);
INSERT INTO `think_bfm` VALUES (16, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 09:11:00', '2020-08-28 09:11:00', 15.0, 8.0, 'sa', 'ddd', '2020-08-28 09:11:31', NULL);
INSERT INTO `think_bfm` VALUES (17, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 08:57:00', '2020-08-28 08:57:00', 16.0, 0.0, 'ddd', 'sa', '2020-08-28 08:57:01', NULL);
INSERT INTO `think_bfm` VALUES (18, 'admin', 'K*N00DACB0', '管理员', '2020-08-28', '2020-08-28 09:11:00', '2020-08-28 09:11:00', 17.0, 8.0, 'sa', 'ddd', '2020-08-28 09:11:31', NULL);

-- ----------------------------
-- Table structure for think_book
-- ----------------------------
DROP TABLE IF EXISTS `think_book`;
CREATE TABLE `think_book`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish_time` int(11) UNSIGNED NULL DEFAULT NULL,
  `create_time` int(11) UNSIGNED NOT NULL,
  `update_time` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(6) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_book
-- ----------------------------
INSERT INTO `think_book` VALUES (1, 'thinkphprumen', 1577808000, 1604389309, 1604389309, 1, 21);
INSERT INTO `think_book` VALUES (2, 'thinkphpjinjie', 1591372800, 1604389309, 1604389309, 1, 22);
INSERT INTO `think_book` VALUES (3, 'thinkphprumen', 1577808000, 1604389424, 1604389424, 1, 23);
INSERT INTO `think_book` VALUES (4, 'thinkphpjinjie', 1591372800, 1604389424, 1604389424, 1, 24);
INSERT INTO `think_book` VALUES (5, 'thinkphprumen1', 1577808000, 1604389427, 1604389427, 1, 25);
INSERT INTO `think_book` VALUES (6, '12222', 1591372800, 1604389427, 1604390036, 1, 25);

-- ----------------------------
-- Table structure for think_hfm
-- ----------------------------
DROP TABLE IF EXISTS `think_hfm`;
CREATE TABLE `think_hfm`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `job_id` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_no` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `overtime_type` int(2) NOT NULL,
  `dntype` int(2) NOT NULL,
  `ocmtype` int(2) NOT NULL,
  `nowday` date NOT NULL,
  `begin_time` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_time` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rthour` float NOT NULL,
  `oreason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_no` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'INR0000000',
  `fill_time` timestamp(0) NOT NULL,
  `eflag` int(1) NULL DEFAULT NULL,
  `type` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '例假',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_hfm
-- ----------------------------
INSERT INTO `think_hfm` VALUES (1, '20551283', 'K*N00DACB0', '管理员', 2, 1, 2, '2020-08-27', '2020-08-27 13:42:00', '2020-08-27 13:42:00', 1.5, '配合生产', 'INR0000000', '2020-09-09 09:43:10', 1, '例假');
INSERT INTO `think_hfm` VALUES (2, '20551284', 'K*N00DACB0', '管理员', 2, 1, 2, '2020-09-28', '2020-08-28 09:26:00', '2020-08-28 09:26:00', 8.5, '配合生产', 'INR0000000', '2020-09-09 09:43:06', 1, '例假');
INSERT INTO `think_hfm` VALUES (3, '20551283', 'K*N00DACB0', '管理员', 2, 1, 3, '2020-08-28', '2020-08-28 09:26:00', '2020-08-28 09:26:00', 8.5, '配合生产', 'INR0000000', '2020-09-09 09:43:06', 1, '例假');
INSERT INTO `think_hfm` VALUES (4, '20551283', 'K*N00DACB0', '管理员', 3, 1, 2, '2020-09-26', '2020-08-28 09:26:00', '2020-08-28 09:26:00', 8.5, '配合生产', 'INR0000000', '2020-09-09 09:43:06', 1, '例假');
INSERT INTO `think_hfm` VALUES (5, '20331234', 'K*N00DACB0', '管理员', 3, 1, 2, '2020-09-26', '2020-08-28 09:26:00', '2020-08-28 09:26:00', 8.5, '配合生产', 'INR0000000', '2020-09-09 09:43:06', 1, '例假');
INSERT INTO `think_hfm` VALUES (6, '20551283', 'KMN00DACB0', '孫暢暢', 2, 1, 2, '2020-10-15', '2020/10/15 14:12', '2020/10/15 14:12', 0, '配合生产', 'INR0000000', '2020-10-15 14:12:04', 1, '例假');

-- ----------------------------
-- Table structure for think_info
-- ----------------------------
DROP TABLE IF EXISTS `think_info`;
CREATE TABLE `think_info`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `launcher` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `launch_time` timestamp(0) NULL DEFAULT NULL,
  `endtime` timestamp(0) NULL DEFAULT NULL,
  `checker1` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status1` int(2) NOT NULL,
  `checker2` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status2` int(2) NOT NULL,
  `itform_id` int(12) NULL DEFAULT NULL,
  `all_status` int(2) NULL DEFAULT 0,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_info
-- ----------------------------
INSERT INTO `think_info` VALUES (1, 'a', 'a', '2020-07-08 14:47:21', NULL, 'Bruce', 1, 'Nic', 2, 45, 3);
INSERT INTO `think_info` VALUES (2, '5', '5', '2020-07-08 14:49:09', NULL, 'Bruce', 1, 'Nic', 2, 46, 3);
INSERT INTO `think_info` VALUES (3, '55', '55', '2020-07-08 14:52:03', NULL, 'Bruce', 1, 'Nic', 2, 47, 3);
INSERT INTO `think_info` VALUES (4, '6', '6', '2020-07-09 10:26:17', NULL, 'Bruce', 1, 'Nic', 2, 48, 3);
INSERT INTO `think_info` VALUES (5, '7', '7', '2020-07-14 10:22:59', NULL, 'Bruce', 1, 'Nic', 2, 49, 3);
INSERT INTO `think_info` VALUES (6, '778', '778', '2020-07-14 10:23:10', NULL, 'Bruce', 1, 'Nic', 2, 50, 3);
INSERT INTO `think_info` VALUES (7, '7788', '7788', '2020-07-14 10:23:15', NULL, 'Bruce', 0, 'Nic', 2, 51, 3);
INSERT INTO `think_info` VALUES (8, '9', '9', '2020-07-15 09:52:51', NULL, 'Bruce', 1, 'Nic', 2, 60, 3);
INSERT INTO `think_info` VALUES (9, 'test', 'st', '2020-07-21 08:52:35', NULL, 'Bruce', 1, 'Nic', 2, 61, 3);
INSERT INTO `think_info` VALUES (10, 'sod软体系统', 'pe', '2020-07-27 11:15:01', NULL, 'Bruce', 1, 'Nic', 2, 62, 3);
INSERT INTO `think_info` VALUES (11, 'sod软体系统', 'pe', '2020-08-07 09:38:40', NULL, 'Bruce', 0, 'Nic', 0, 63, 0);
INSERT INTO `think_info` VALUES (12, 'tpm ver', 'qa', '2020-08-07 13:40:40', NULL, 'Bruce', 0, 'Nic', 0, 64, 0);

-- ----------------------------
-- Table structure for think_itform
-- ----------------------------
DROP TABLE IF EXISTS `think_itform`;
CREATE TABLE `think_itform`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fond` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `switch` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `textarea` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `checker1` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `checker2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `checkinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_itform
-- ----------------------------
INSERT INTO `think_itform` VALUES (48, '6', '6', '6', 'emergency', '写作,阅读', 'on', '男', '6', 'bruce', 'nic', NULL);
INSERT INTO `think_itform` VALUES (47, '55', '55', '5', 'emergency', '写作', 'on', '男', '55', 'bruce', 'nic', 'bruce:ok&nic:ok&nic:ok&nic:ok&nic:ok&nic:ok&nic:ok&目前无后续签核:ok');
INSERT INTO `think_itform` VALUES (45, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aaaaaa', 'bruce', 'nic', 'bruce:asd&nic:fg&目前无后续签核:ok');
INSERT INTO `think_itform` VALUES (46, '5', 'sdsdfsdffffffffffffffffffffffffffffdasda', '5ffsdffffffffffffffffffffffffffasdasdasdas', 'emergency', '写作', 'on', '男', '5', 'bruce', 'nic', 'bruce:ok&nic:ok');
INSERT INTO `think_itform` VALUES (51, '7788', '7788', '7778', 'normal', '写作', 'on', '男', '7778888', 'bruce', 'nic', 'bruce:asd&.nic:ok.&目前无后续签核:ok');
INSERT INTO `think_itform` VALUES (50, '778', '778', '777', 'normal', '写作', 'on', '男', '7778', 'bruce', 'nic', NULL);
INSERT INTO `think_itform` VALUES (49, '7', '7', '777', 'normal', '写作', 'on', '男', '777', 'bruce', 'nic', 'bruce:阿萨德&bruce:阿萨德&目前无后续签核:ok');
INSERT INTO `think_itform` VALUES (38, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aaaaaa', NULL, NULL, NULL);
INSERT INTO `think_itform` VALUES (37, '3', '3', '333', 'normal', '写作,阅读,发呆', 'on', '男', '333', NULL, NULL, NULL);
INSERT INTO `think_itform` VALUES (36, '1', '1', '1', 'normal', '写作', 'on', '男', '1', NULL, NULL, NULL);
INSERT INTO `think_itform` VALUES (35, '1', '1', '1', 'normal', '写作', 'on', '男', '1', NULL, NULL, NULL);
INSERT INTO `think_itform` VALUES (60, '9', '9', '9', 'normal', '写作', 'on', '男', '9', 'bruce', 'nic', 'nic:ok.bruce:olk.,nic:ok bruce:okok nic:ok bruce:ojbk nic:ok nic:ok nic:ojo nic:ok nic:oksa nic:nima nic:sadas nic:mma nic:asdas nic:非常脆弱的时候 nic:ok nic:asd nic:ok nic:ok nic:ok');
INSERT INTO `think_itform` VALUES (61, 'test', 'st', 'jack', 'normal', '写作,阅读', 'on', '女', 'test  over', 'bruce', 'nic', 'bruce:step1  ok&nic:step 2  ok');
INSERT INTO `think_itform` VALUES (62, 'sod软体系统', 'pe', '123456', 'emergency', '写作', 'on', '男', '尽快完成本部门自用的网站', 'bruce', 'nic', 'bruce:ok&nic:okkk');
INSERT INTO `think_itform` VALUES (63, 'sod软体系统', 'pe', 'pe', 'normal', '写作', 'on', '男', '1', NULL, NULL, NULL);
INSERT INTO `think_itform` VALUES (64, 'tpm软体系统', 'qa', 'qa', 'normal', '写作,阅读', 'on', '男', '1', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for think_lfm
-- ----------------------------
DROP TABLE IF EXISTS `think_lfm`;
CREATE TABLE `think_lfm`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `job_id` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_no` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `begin_time` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_time` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lday` float(2, 1) NOT NULL,
  `lhour` float(3, 1) NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `htype` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_no` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'INR0000000',
  `fill_time` datetime(0) NOT NULL,
  `eflag` int(1) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_lfm
-- ----------------------------
INSERT INTO `think_lfm` VALUES (1, 'admin', 'K*N00DACB0', '管理员', '2020-08-25 00:00:00', '2020-08-25 00:00:00', 0.0, 3.0, '家中有事', '续病假', 'INR0000000', '2020-09-01 10:37:04', 0);
INSERT INTO `think_lfm` VALUES (2, 'admin123333', 'K*N00DACB0', '管理员', '2020-08-24 00:00:00', '2020-08-24 00:00:00', 1.5, 12.0, '家中有事', '陪产假', 'INR0000000', '2020-09-01 10:37:04', 0);
INSERT INTO `think_lfm` VALUES (3, 'admin', 'K*N00DACB0', '管理员', '2020-08-24 00:00:00', '2020-08-24 00:00:00', 0.0, 2.0, '家中有事', '病假', 'INR0000000', '2020-09-02 10:37:04', 1);
INSERT INTO `think_lfm` VALUES (4, 'admin', 'K*N00DACB0', '管理员', '2020-08-24 00:00:00', '2020-08-24 00:00:00', 1.5, 12.0, '家中有事', '续病假', 'INR0000000', '2020-09-02 10:37:04', 1);
INSERT INTO `think_lfm` VALUES (5, 'admin', 'K*N00DACB0', '管理员', '2020-08-26 09:21:00', '2020-08-26 12:00:00', 0.0, 3.0, '家中有事', '补休', 'INR0000000', '2020-09-02 10:37:04', 1);
INSERT INTO `think_lfm` VALUES (6, '200554411', 'K*N00DACB0', '管理员', '2020/08/26 08:00', '2020/08/26 12:00', 0.5, 4.0, '家中有事', '病假', 'INR0000000', '2020-09-02 10:37:04', 1);
INSERT INTO `think_lfm` VALUES (7, 'admin', 'K*N00DACB0', '管理员', '2020/08/26 08:00', '2020/08/26 10:00', 0.5, 4.0, '家中有事', '补休', 'INR0000000', '2020-08-26 14:39:18', 1);
INSERT INTO `think_lfm` VALUES (8, 'admin', 'K*N00DACB0', '管理员', '2020/08/27 16:23', '2020/08/27 16:23', 0.0, 6.0, '家中有事', '旷工', 'INR0000000', '2020-08-27 16:22:58', 1);
INSERT INTO `think_lfm` VALUES (9, 'admin', 'K*N00DACB0', '管理员', '2020/08/28 09:35', '2020/08/28 09:35', 0.0, 2.0, '家中有事', '丧假', 'INR0000000', '2020-09-08 16:55:22', 1);
INSERT INTO `think_lfm` VALUES (10, 'admin', 'K*N00DACB0', '管理员', '2020/09/01 09:00', '2020/09/01 11:00', 0.0, 3.0, '家中有事', '婚假', 'INR0000000', '2020-09-08 16:55:22', 1);
INSERT INTO `think_lfm` VALUES (11, 'admin', 'K*N00DACB0', '管理员', '2020/09/02 08:30', '2020/09/02 10:30', 0.0, 2.0, '家中有事', '補休', 'INR0000000', '2020-09-08 16:55:22', 1);
INSERT INTO `think_lfm` VALUES (12, '20551283', 'KHN00DACB0', '劉俊成', '2020/09/09 00:00', '2020/09/09 09:30', 0.0, 1.5, '家中有事', '病假', 'INR0000000', '2020-09-09 08:02:50', 1);
INSERT INTO `think_lfm` VALUES (13, '0813028', 'KMN00DACB0', '邵言昌', '2020/09/10 08:26', '2020/09/10 08:26', 0.5, 4.0, '家中有事', '续病假', 'INR0000000', '2020-09-10 08:26:28', 1);

-- ----------------------------
-- Table structure for think_nfm
-- ----------------------------
DROP TABLE IF EXISTS `think_nfm`;
CREATE TABLE `think_nfm`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `job_id` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_no` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `overtime_type` int(2) NOT NULL,
  `ocmtype` int(2) NOT NULL,
  `nowday` date NOT NULL,
  `begin_time` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_time` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rthour` float(3, 1) NOT NULL,
  `oreason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_no` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'INR0000000',
  `fill_time` timestamp(0) NOT NULL,
  `eflag` int(1) NULL DEFAULT NULL,
  `type` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '平时',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_nfm
-- ----------------------------
INSERT INTO `think_nfm` VALUES (1, '20551283', 'K*N00DACB0', '管理员', 1, 3, '2020-08-27', '2020-08-27 14:44:00', '2020-08-27 14:44:00', 2.0, '配合生产', 'INR0000000', '2020-09-02 15:37:49', 1, '平时');
INSERT INTO `think_nfm` VALUES (2, '20551283', 'K*N00DACB0', '管理员', 1, 2, '2020-08-28', '2020-08-28 09:31:00', '2020-08-28 09:31:00', 12.0, '配合生产', 'INR0000000', '2020-09-02 15:37:49', 1, '平时');
INSERT INTO `think_nfm` VALUES (4, 'admin', 'K*N00DACB0', '管理员', 1, 2, '2020-08-27', '2020-08-30 14:44:00', '2020-08-27 14:44:00', 2.0, '配合生产', 'INR0000000', '2020-09-02 15:37:49', 1, '平时');
INSERT INTO `think_nfm` VALUES (5, 'admin', 'K*N00DACB0', '管理员', 1, 2, '2020-08-28', '2020-09-01 09:31:00', '2020-08-28 09:31:00', 12.0, '配合生产', 'INR0000000', '2020-09-02 15:37:49', 1, '平时');
INSERT INTO `think_nfm` VALUES (3, 'admin', 'K*N00DACB0', '管理员', 1, 2, '2020-08-27', '2020-08-29 14:44:00', '2020-08-27 14:44:00', 2.0, '配合生产', 'INR0000000', '2020-09-02 15:37:49', 1, '平时');
INSERT INTO `think_nfm` VALUES (6, 'admin', 'K*N00DACB0', '管理员', 1, 2, '2020-08-28', '2020-09-02 09:31:00', '2020-08-28 09:31:00', 12.0, '配合生产', 'INR0000000', '2020-09-02 15:37:49', 1, '平时');
INSERT INTO `think_nfm` VALUES (7, '20551283', 'KHN00DACB0', '劉俊成', 1, 2, '2020-09-30', '2020-09-15 14:17:00', '2020-09-15 14:17:00', 22.0, '配合生产', 'INR0000000', '2020-09-15 14:17:22', 0, '平时');
INSERT INTO `think_nfm` VALUES (8, '20331234', '123', 'weil', 1, 2, '2020-10-15', '2020-10-15 14:17:00', '2020-10-15 17:00', 11.0, '配合生产', 'INR0000000', '2020-10-15 13:41:46', NULL, '平时');

-- ----------------------------
-- Table structure for think_profile
-- ----------------------------
DROP TABLE IF EXISTS `think_profile`;
CREATE TABLE `think_profile`  (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `truename` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(6) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_profile
-- ----------------------------
INSERT INTO `think_profile` VALUES (1, 'testla', 820425600, '123321com', '123321@qq.com', 45);

-- ----------------------------
-- Table structure for think_user
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user`  (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 0,
  `employee_id` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cname` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeptCode` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` float NULL DEFAULT NULL,
  `pexport` int(1) NULL DEFAULT NULL,
  `zc` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES (39, 'aaa', 'aaa', '2020-09-22 10:21:56', NULL, 0, 'aaa', '李四', 'aa', 'aa', 123, 0, NULL);
INSERT INTO `think_user` VALUES (40, 'asd', 'asd', '2020-09-22 10:25:20', NULL, 0, 'asd', 'asd', 'asd', 'sad', 111, 0, NULL);
INSERT INTO `think_user` VALUES (4, 'zhenli_gong', 'zhenli_gong', '2020-12-21 08:58:46', '2020-08-31 13:26:35', 0, 'C1317A11a', '龚珍利111', 'KFN00DACD0a', '產品工程課', 62.5, 0, 'op');
INSERT INTO `think_user` VALUES (5, 'xw_shan', 'xw_shan', '2020-12-17 11:22:36', '2020-08-31 13:29:11', 0, '20594796', '單興旺', 'KFN00DACD0a', '備品機構工程課a', 78, 0, NULL);
INSERT INTO `think_user` VALUES (6, 'jie_duan', 'jie_duan', '2020-09-18 10:58:38', '2020-08-31 13:30:22', 0, '20565035', '段杰', 'KFN00DACD0', '備品機構工程課', 111, 0, NULL);
INSERT INTO `think_user` VALUES (7, 'zhen_li', 'zhen_li', '2020-09-18 10:58:38', '2020-08-31 13:31:07', 0, '20362225', '李振', 'KFN00DACD0', '備品機構工程課', 111, 0, NULL);
INSERT INTO `think_user` VALUES (8, 'jun_wang', 'jun_wang', '2020-09-18 10:58:38', '2020-08-31 13:32:03', 1, '0401480', '王軍', 'KHN00DACB0', '產品工程課', 111, 0, NULL);
INSERT INTO `think_user` VALUES (9, 'ye_gan', 'ye_gan', '2020-09-23 14:35:21', '2020-08-31 13:32:31', 0, '20638037', '干野', 'KHN00DACB0', '產品工程課', 111, 0, 'op');
INSERT INTO `think_user` VALUES (37, 'dd', 'dd', '2020-09-21 11:16:23', NULL, 0, 'dd', 'bb', 'aaa', 'aa', NULL, 0, NULL);
INSERT INTO `think_user` VALUES (38, '88888888', '88888888', '2020-09-21 11:20:56', NULL, 0, '88888888', '张三', '666666666', 'RD', NULL, 0, NULL);
INSERT INTO `think_user` VALUES (11, 'haiping_wu', 'haiping_wu', '2020-09-16 14:29:05', '2020-08-31 13:34:02', 0, '20548641', '吳海平', 'KHN00DACB0', '產品工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (12, 'jianpeng_xu', 'jianpeng_xu', '2020-09-16 14:29:05', '2020-08-31 13:34:48', 0, '0808121', '許建鵬', 'KHN00DACB0', '產品工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (13, 'ruyan_sun', 'ruyan_sun', '2020-09-16 14:29:05', '2020-08-31 13:35:46', 0, '0705951', '孫如艷', 'KHN00DACB0', '產品工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (14, 'xuxing_hao', 'xuxing_hao', '2020-09-16 14:29:05', '2020-08-31 13:36:33', 0, '20135778', '郝徐鑫', 'KHN00DACD0', '備品機構工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (15, 'rui_yang', 'rui_yang', '2020-09-16 14:29:05', '2020-08-31 13:37:11', 0, '20129827', '楊瑞', 'KHN00DACD0', '備品機構工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (16, 'dandan_tian', 'dandan_tian', '2020-09-23 14:36:03', '2020-08-31 13:37:43', 0, '20564235', '田丹丹', 'KHN00DACD0', '備品機構工程課', 88, 0, 'op');
INSERT INTO `think_user` VALUES (17, 'lingdi_zhang', 'lingdi_zhang', '2020-09-23 14:36:09', '2020-08-31 13:39:26', 0, '20296255', '張玲娣', 'KHN00DACD0', '備品機構工程課', 88, 0, 'op');
INSERT INTO `think_user` VALUES (18, 'jing_hu', 'jing_hu', '2020-09-16 14:29:05', '2020-08-31 13:40:27', 0, '20555198', '胡靖', 'KMN00DACB0', '產品工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (19, 'xianwei_zhuo', 'xianwei_zhuo', '2020-09-16 14:29:05', '2020-08-31 13:41:43', 0, 'C08000N', '卓獻偉', 'KMN00DACB0', '產品工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (20, 'iori', '123', '2020-09-24 08:34:24', '2020-08-31 13:42:25', 0, '20551283', '孫暢暢', 'KMN00DACB0', '產品工程課', 60, 1, 'op');
INSERT INTO `think_user` VALUES (21, 'yanchan_shao', 'yanchan_shao', '2020-09-16 14:29:05', '2020-08-31 13:43:14', 0, '0813028', '邵言昌', 'KMN00DACB0', '產品工程課', NULL, 1, NULL);
INSERT INTO `think_user` VALUES (22, 'huan_wang', 'huan_wang', '2020-09-23 14:37:04', '2020-08-31 13:43:42', 0, '20440674', '王歡', 'KMN00DACB0', '產品工程課', 88, 0, 'op');
INSERT INTO `think_user` VALUES (23, 'siqi_han', 'siqi_han', '2020-09-23 14:36:14', '2020-08-31 13:46:08', 0, '20643117', '韓思琪', 'KMN00DACD0', '備品機構工程課', 88, 0, 'op');
INSERT INTO `think_user` VALUES (24, 'xiangdong_meng', 'xiangdong_meng', '2020-09-16 14:29:05', '2020-08-31 13:46:41', 0, '20597699', '孟祥東', 'KMN00DACD0', '備品機構工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (25, 'yu_chen', 'yu_chen', '2020-09-16 14:29:05', '2020-08-31 13:47:34', 0, '20586369', '陳雨', 'KMN00DACD0', '備品機構工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (26, 'zx_zhu', 'zx_zhu', '2020-09-16 14:29:05', '2020-08-31 13:48:11', 0, '20551284', '朱志翔', 'KMN00DACD0', '備品機構工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (27, 'qingliang_huang', 'qingliang_huang', '2020-09-18 10:53:37', '2020-08-31 13:48:55', 1, '0711543', '黃慶亮', 'KJN00DACB0', '產品工程課', NULL, 0, NULL);
INSERT INTO `think_user` VALUES (28, 'panpan_zhang', 'panpan_zhang', '2020-09-23 14:36:15', '2020-08-31 13:50:41', 0, '20654236', '張盼盼', 'KJN00DACB0', '產品工程課', 88, 0, 'op');
INSERT INTO `think_user` VALUES (29, 'jian_hou', 'jian_hou', '2020-09-16 14:29:05', '2020-08-31 13:51:16', 0, '20610037', '侯健', 'KJN00DACB0', '產品工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (30, 'yifu_wu', 'yifu_wu', '2020-09-16 14:29:05', '2020-08-31 13:51:42', 0, '20500284', '吳義富', 'KJN00DACB0', '產品工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (31, 'chunsheng_xu', 'chunsheng_xu', '2020-09-18 10:53:41', '2020-08-31 13:52:18', 1, '0204315', '許春生', 'KJN00DACB0', '產品工程課', NULL, 0, NULL);
INSERT INTO `think_user` VALUES (32, 'bin_yang', 'bin_yang', '2020-09-16 14:29:05', '2020-08-31 13:52:47', 0, '20362227', '楊斌', 'KJN00DACB0', '產品工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (33, 'yang_yang', 'yang_yang', '2020-09-16 14:29:05', '2020-08-31 13:53:16', 0, '20680030', '楊洋', 'KHN00DACD0', '備品機構工程課', 60, 0, NULL);
INSERT INTO `think_user` VALUES (36, 'qew', 'qew', '2020-09-18 10:59:19', NULL, 0, 'qew', 'qwe', 'qwe', 'qwe', 100, 0, NULL);
INSERT INTO `think_user` VALUES (41, '流年', '123456', '1996-01-01 00:00:00', '1996-01-02 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `think_user` VALUES (42, '流年', '123456', '1996-01-01 00:00:00', '1996-01-02 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `think_user` VALUES (43, '流年', '123456', '1996-01-01 00:00:00', '1996-01-02 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `think_user` VALUES (44, '流年', '123456', '1996-01-01 00:00:00', '1996-01-02 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `think_user` VALUES (45, 'test1', '123', '2020-11-03 13:30:09', '2020-11-03 13:30:09', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
