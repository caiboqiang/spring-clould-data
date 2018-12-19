/*
Navicat MySQL Data Transfer

Source Server         : 192.168.100.212
Source Server Version : 50173
Source Host           : 192.168.100.212:3306
Source Database       : imut_manage

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-12-19 17:17:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `class_info`
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `classroom_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教室id',
  `classroom_name` varchar(100) NOT NULL COMMENT '教室名称',
  `classroom_position` varchar(100) NOT NULL COMMENT '教室位置',
  `capacity` int(50) NOT NULL COMMENT '容纳人数',
  `create_time` char(20) NOT NULL COMMENT '创建时间',
  `room_id` int(11) DEFAULT NULL COMMENT '房间id',
  `doctor_id` int(11) DEFAULT NULL COMMENT 'B超室医生标识Id',
  `teacher_id` int(11) DEFAULT NULL COMMENT '老师标识Id',
  PRIMARY KEY (`classroom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('20', 'sdfdsf', '433', '555', '2018-11-27 16:33:59', '0', '0', '0');

-- ----------------------------
-- Table structure for `condition_type`
-- ----------------------------
DROP TABLE IF EXISTS `condition_type`;
CREATE TABLE `condition_type` (
  `condition_id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_name` varchar(50) NOT NULL,
  `create_time` char(20) NOT NULL,
  PRIMARY KEY (`condition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of condition_type
-- ----------------------------
INSERT INTO `condition_type` VALUES ('1', '肝脏', '2018-9-10');
INSERT INTO `condition_type` VALUES ('2', '肾脏', '2018-09-10 18:17:35');
INSERT INTO `condition_type` VALUES ('6', '心脏', '2018-09-14 06:15:22');
INSERT INTO `condition_type` VALUES ('8', '晚期癌症', '2018-09-20 17:27:17');
INSERT INTO `condition_type` VALUES ('9', '早期癌症11', '2018-09-20 17:27:55');

-- ----------------------------
-- Table structure for `record_video`
-- ----------------------------
DROP TABLE IF EXISTS `record_video`;
CREATE TABLE `record_video` (
  `rv_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '录制视频id',
  `rv_name` varchar(100) NOT NULL COMMENT '录制视频名称',
  `doctor_id` int(11) NOT NULL COMMENT 'B超室医生标识id',
  `condition_id` int(11) DEFAULT NULL COMMENT '病情分类id',
  `teaching_date` char(20) NOT NULL COMMENT '教学日期',
  `rv_duration` varchar(20) DEFAULT NULL COMMENT '视频时长',
  `classroom_id` int(11) DEFAULT NULL COMMENT '教室id',
  `teacher_id` int(11) DEFAULT NULL COMMENT '老师标识Id',
  `rv_url` varchar(255) NOT NULL COMMENT '视频保存路径',
  PRIMARY KEY (`rv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2345 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record_video
-- ----------------------------
INSERT INTO `record_video` VALUES ('2247', '20181127114330shijiaoshi1', '26', '0', '2018-11-27 11:42:27', null, '62481', null, 'http://10.100.99.22/index1.mp4');
INSERT INTO `record_video` VALUES ('2340', '20181129162447shijiaoshi1', '26', '0', '2018-11-29 16:23:24', null, '62481', null, 'http://10.100.99.22/index1.mp4');
INSERT INTO `record_video` VALUES ('2341', '20181129162505shijiaoshi1', '26', '0', '2018-11-29 16:23:42', null, '62481', null, 'http://10.100.99.22/index1.mp4');
INSERT INTO `record_video` VALUES ('2342', '20181129162507shijiaoshi1', '26', '0', '2018-11-29 16:23:44', null, '62481', null, 'http://10.100.99.22/index1.mp4');
INSERT INTO `record_video` VALUES ('2343', '20181210102709shijiaoshi1', '26', '0', '2018-12-10 10:25:04', null, '62481', null, 'http://10.100.99.22/record/5e77bca8-fafb-45d3-92d7-817503bf769c-----26-17390-----2018-12-10-10-25-18.webm');
INSERT INTO `record_video` VALUES ('2344', '20181210102711shijiaoshi1', '26', '0', '2018-12-10 10:25:06', null, '62481', null, 'http://10.100.99.22/record/377df30f-aab0-4f95-8472-84789dc2e42a-----26-17390-----2018-12-10-10-25-20.webm');

-- ----------------------------
-- Table structure for `user_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL,
  `user_group_name` varchar(100) NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('1', '管理员');
INSERT INTO `user_group` VALUES ('2', '老师');
INSERT INTO `user_group` VALUES ('3', 'B超室医生');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(100) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `isfreeze` int(11) NOT NULL,
  `create_time` char(20) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_salt` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'admin', '13260532925', '1', '0', '2018-9-6', '123456', '');
INSERT INTO `user_info` VALUES ('2', '张三11', '15852365412', '3', '0', '2018-9-6', '123456', '');
INSERT INTO `user_info` VALUES ('3', '李四1', '15854785698', '3', '0', '2018-9-6', '123456', '');
INSERT INTO `user_info` VALUES ('4', '11111', '15896258888', '3', '0', '2018-09-06 14:28:02', '1111111', '');
INSERT INTO `user_info` VALUES ('7', '张医生', '18986270431', '3', '0', '2018-09-10 03:38:59', '123456', '');
INSERT INTO `user_info` VALUES ('8', '张老师', '18986270432', '2', '0', '2018-09-10 03:39:41', '123456', '');
INSERT INTO `user_info` VALUES ('10', 'qwer', '18040540028', '2', '0', '2018-09-11 05:52:15', '123456', '');
INSERT INTO `user_info` VALUES ('12', '123', '15865456325', '3', '0', '2018-09-18 15:26:08', '111111', '');
INSERT INTO `user_info` VALUES ('13', '12', '15236225632', '3', '0', '2018-09-18 16:01:16', '111111', '');
INSERT INTO `user_info` VALUES ('14', '1 23', '15963258745', '3', '0', '2018-09-18 16:05:14', '123 123', '');
INSERT INTO `user_info` VALUES ('15', '1231111111', '15236363636', '3', '0', '2018-09-18 16:07:01', '111111', '');
INSERT INTO `user_info` VALUES ('16', '1111111111', '15963258899', '3', '0', '2018-09-18 16:49:16', '111111111111', '');
INSERT INTO `user_info` VALUES ('21', '123', '15852585258', '3', '0', '2018-09-19 11:01:20', '111111', '');
INSERT INTO `user_info` VALUES ('26', 'fdgfd', '18040540033', '3', '0', '2018-09-21 09:29:57', '123456', '');
INSERT INTO `user_info` VALUES ('28', 'sddddd', '18040540066', '3', '0', '2018-09-26 15:14:18', '329de4f8d48246e9533e1c90f7d20e78', '');
INSERT INTO `user_info` VALUES ('29', '研发测试', '18078945612', '2', '0', '2018-11-26 14:10:05', '123456', '');
INSERT INTO `user_info` VALUES ('32', '小菜', '13971320963', '2', '0', '2018-12-05 15:58:37', '1943a109cc0f14a75502d94d55e450f6', '0bd73a997d40607e9f2f');
INSERT INTO `user_info` VALUES ('33', '小菜', '13971320964', '2', '0', '2018-12-06 00:09:21', 'd50ccef907438e9227e074263c6bdfc8', '57c0ccd3c4ecea9c1992');
