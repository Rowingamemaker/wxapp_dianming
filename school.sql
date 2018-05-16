/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : school

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-16 18:26:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `school_admin`
-- ----------------------------
DROP TABLE IF EXISTS `school_admin`;
CREATE TABLE `school_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` char(255) NOT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_admin
-- ----------------------------
INSERT INTO `school_admin` VALUES ('3', 'admin', 'e10adc3949ba59abbe56e057f20f883exixi', '1525581333', null, '1525581333');

-- ----------------------------
-- Table structure for `school_room`
-- ----------------------------
DROP TABLE IF EXISTS `school_room`;
CREATE TABLE `school_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` varchar(255) NOT NULL DEFAULT '' COMMENT '房间号',
  `students` varchar(255) DEFAULT '' COMMENT '学生ID 1:迟到 2:旷课  3:正常 ',
  `teacher_id` varchar(255) NOT NULL DEFAULT '' COMMENT '老师ID',
  `update_time` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT NULL,
  `sign_in_type` int(11) DEFAULT '1' COMMENT '0:二维码 1:地址位置 2:蓝牙 3:随机',
  `qrcode` varchar(255) DEFAULT NULL COMMENT '房间二维码',
  `room_address` varchar(255) DEFAULT NULL COMMENT '签到教室地址',
  `latitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `longitude` varchar(255) DEFAULT NULL COMMENT '纬度',
  `student_number` varchar(255) DEFAULT NULL COMMENT '学生人数 供随机点名使用',
  `total_number` varchar(255) DEFAULT NULL COMMENT '总学生人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_room
-- ----------------------------
INSERT INTO `school_room` VALUES ('41', 'A303', '', '25', '1526456836', '1526456836', null, '0', null, null, null, null, null, '65');
INSERT INTO `school_room` VALUES ('42', 'A505', '', '25', '1526457654', '1526457654', null, '0', null, null, null, null, null, '77');
INSERT INTO `school_room` VALUES ('43', 'b808', '{\"32\":3,\"7\":\"3\",\"5\":\"2\",\"2\":\"2\"}', '25', '1526459849', '1526457752', null, '0', null, null, null, null, '11', '88');
INSERT INTO `school_room` VALUES ('44', 'A', '{\"32\":3}', '25', '1526459890', '1526459890', null, '1', null, null, null, null, null, '82');
INSERT INTO `school_room` VALUES ('45', 'b', '', '25', '1526459918', '1526459909', null, '1', null, '福建省厦门市思明区民族路33号', '24.44579', '118.08243', null, '54');
INSERT INTO `school_room` VALUES ('46', 'Aw', '{\"32\":3}', '25', '1526460059', '1526460053', null, '1', null, '福建省厦门市思明区民族路33号', '24.44579', '118.08243', null, '22');
INSERT INTO `school_room` VALUES ('47', 'b44', '{\"32\":3}', '25', '1526461325', '1526461325', null, '0', null, null, null, null, null, '12');
INSERT INTO `school_room` VALUES ('48', 'A1', '{\"32\":3}', '25', '1526461845', '1526461845', null, '0', null, null, null, null, null, '33');
INSERT INTO `school_room` VALUES ('49', 'B2', '', '25', '1526461927', '1526461927', null, '1', null, null, null, null, null, 'undefined');
INSERT INTO `school_room` VALUES ('50', 'b8', '{\"32\":3}', '25', '1526461935', '1526461935', null, '0', null, null, null, null, null, '88');

-- ----------------------------
-- Table structure for `school_signin`
-- ----------------------------
DROP TABLE IF EXISTS `school_signin`;
CREATE TABLE `school_signin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sematic_description` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT '' COMMENT '具体地址',
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT NULL,
  `room_id` varchar(255) DEFAULT NULL COMMENT '地理签到对应的房间号',
  `latitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `longitude` varchar(255) DEFAULT NULL COMMENT '纬度',
  `nation` varchar(255) DEFAULT NULL COMMENT '国家',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '市',
  `district` varchar(255) DEFAULT NULL COMMENT '区县',
  `street` varchar(255) DEFAULT NULL COMMENT '路',
  `street_number` varchar(255) DEFAULT NULL COMMENT '路号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_signin
-- ----------------------------
INSERT INTO `school_signin` VALUES ('42', '29', '', null, '1525925733', '1525928552', null, '26', '24.44579', '118.08243', null, null, null, null, null, null);
INSERT INTO `school_signin` VALUES ('43', '31', '', '福建省厦门市思明区民族路33号', '1525939886', '1525939886', null, '26', '24.44579', '118.08243', '中国', '福建省', '厦门市', '思明区', '民族路', '民族路33号');
INSERT INTO `school_signin` VALUES ('44', '32', '', '福建省厦门市思明区民族路33号', '1526460715', '1526460715', null, '44', '24.44579', '118.08243', '中国', '福建省', '厦门市', '思明区', '民族路', '民族路33号');
INSERT INTO `school_signin` VALUES ('45', '32', '', '福建省厦门市思明区民族路33号', '1526461285', '1526461285', null, '46', '24.44579', '118.08243', '中国', '福建省', '厦门市', '思明区', '民族路', '民族路33号');
INSERT INTO `school_signin` VALUES ('46', '32', '', '福建省厦门市思明区民族路33号', '1526461886', '1526461886', null, '48', '24.44579', '118.08243', '中国', '福建省', '厦门市', '思明区', '民族路', '民族路33号');

-- ----------------------------
-- Table structure for `school_student`
-- ----------------------------
DROP TABLE IF EXISTS `school_student`;
CREATE TABLE `school_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL COMMENT '学号',
  `student_name` varchar(255) NOT NULL COMMENT '名字',
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL COMMENT '签到地址',
  `sign_in` int(11) DEFAULT '0' COMMENT '0:未签到 1:已签到',
  `type` varchar(255) DEFAULT NULL COMMENT '冗余字段 0:学生 1老师',
  `avatarUrl` varchar(255) DEFAULT '"http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png"' COMMENT '头像',
  `nickName` varchar(255) DEFAULT NULL COMMENT '名字',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_student
-- ----------------------------
INSERT INTO `school_student` VALUES ('32', '160249002', 'rOW', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'a');
INSERT INTO `school_student` VALUES ('29', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'b');
INSERT INTO `school_student` VALUES ('31', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'c');
INSERT INTO `school_student` VALUES ('35', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'd');
INSERT INTO `school_student` VALUES ('36', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'e');
INSERT INTO `school_student` VALUES ('37', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'f');
INSERT INTO `school_student` VALUES ('38', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'g');
INSERT INTO `school_student` VALUES ('39', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'h');
INSERT INTO `school_student` VALUES ('40', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'i');
INSERT INTO `school_student` VALUES ('41', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'j');
INSERT INTO `school_student` VALUES ('42', '1604912', '121', '1526450393', '1526450393', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', null, '0', '0', 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png', 'k');

-- ----------------------------
-- Table structure for `school_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `school_teacher`;
CREATE TABLE `school_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` varchar(255) NOT NULL COMMENT '老师',
  `teacher_name` varchar(255) NOT NULL COMMENT '名字',
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `delete_time` varchar(255) DEFAULT NULL,
  `open_id` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '冗余字段 0:学生 1老师',
  `nickName` varchar(255) DEFAULT 'http://rowin.oss-cn-shenzhen.aliyuncs.com/public/head.png' COMMENT '名字',
  `avatarUrl` varchar(255) DEFAULT NULL COMMENT '头像img',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_teacher
-- ----------------------------
INSERT INTO `school_teacher` VALUES ('25', '160000000', '老师Rowin', '1525581333', '1525581333', null, 'oAVX80KkynXbB_KiUMtJmct4gM5s', '1', '', '');
