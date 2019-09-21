/*
Navicat MySQL Data Transfer

Source Server         : wall1
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : share

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-08-08 23:31:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_isbn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_price` decimal(10,2) DEFAULT NULL,
  `book_publisher` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_operate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_release_date` datetime DEFAULT NULL,
  `book_owner` int(255) DEFAULT NULL,
  `book_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_face` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of book
-- ----------------------------

-- ----------------------------
-- Table structure for borrow_record
-- ----------------------------
DROP TABLE IF EXISTS `borrow_record`;
CREATE TABLE `borrow_record` (
  `borrow_id` int(11) NOT NULL,
  `vip_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `borrow_date` datetime DEFAULT NULL,
  `reback_date` datetime DEFAULT NULL,
  `borrow_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`borrow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of borrow_record
-- ----------------------------

-- ----------------------------
-- Table structure for change_record
-- ----------------------------
DROP TABLE IF EXISTS `change_record`;
CREATE TABLE `change_record` (
  `change_id` int(11) NOT NULL,
  `change_in_vip_id` int(11) DEFAULT NULL,
  `change_in_book_id` int(11) DEFAULT NULL,
  `change_out_vip_id` int(11) DEFAULT NULL,
  `change_out_book_id` int(11) DEFAULT NULL,
  `change_date` datetime DEFAULT NULL,
  PRIMARY KEY (`change_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of change_record
-- ----------------------------

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `admin_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
INSERT INTO `sys_admin` VALUES ('zs', '123', '1', '张三', '初级管理员', '正常');

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `dictionary_id` int(40) NOT NULL,
  `dictionary_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dictionary_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dictionary_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dictionary_type_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dictionary_order` int(255) DEFAULT NULL,
  PRIMARY KEY (`dictionary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
INSERT INTO `sys_dictionary` VALUES ('1', '普通菜单', 'PTCD', '菜单类型', 'CDLX', '1');
INSERT INTO `sys_dictionary` VALUES ('2', '管理菜单', 'GLCD', '菜单类型', 'CDLX', '2');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int(40) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(40) DEFAULT NULL,
  `menu_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_order` int(255) DEFAULT NULL,
  `menu_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '添加菜单', 'menu/add', '2', 'GL', '2', 'TJCD');
INSERT INTO `sys_menu` VALUES ('2', '菜单管理', '', null, 'GL', '1', 'CDGL');
INSERT INTO `sys_menu` VALUES ('3', '查看菜单', 'menu/list', '2', 'GL', '3', 'CKCD');
INSERT INTO `sys_menu` VALUES ('4', '更新菜单', 'menu/update', '2', 'GL', '4', 'GXCD');
INSERT INTO `sys_menu` VALUES ('5', 'da??', 'vip/', null, null, '3', 'HYGL');

-- ----------------------------
-- Table structure for sys_vip
-- ----------------------------
DROP TABLE IF EXISTS `sys_vip`;
CREATE TABLE `sys_vip` (
  `vip_id` int(11) NOT NULL,
  `vip_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_birthday` date DEFAULT NULL,
  `vip_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_idcard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vip_join_date` datetime DEFAULT NULL,
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_vip
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passWord` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2', null, null);
INSERT INTO `user` VALUES ('3', 'walltest', null, null);
INSERT INTO `user` VALUES ('4', 'wall0', null, null);
INSERT INTO `user` VALUES ('5', 'wall1', null, null);
INSERT INTO `user` VALUES ('6', 'wall2', null, null);
INSERT INTO `user` VALUES ('7', 'wall3', null, null);
INSERT INTO `user` VALUES ('8', 'wall4', null, null);
INSERT INTO `user` VALUES ('9', 'wall5', null, null);
INSERT INTO `user` VALUES ('10', 'wall6', null, null);
INSERT INTO `user` VALUES ('11', 'wall7', null, null);
INSERT INTO `user` VALUES ('12', 'wall8', null, null);
INSERT INTO `user` VALUES ('13', 'wall9', null, null);
INSERT INTO `user` VALUES ('14', 'wall10', null, null);
INSERT INTO `user` VALUES ('15', 'wall11', null, null);
INSERT INTO `user` VALUES ('16', 'wall12', null, null);
INSERT INTO `user` VALUES ('17', 'wall13', null, null);
INSERT INTO `user` VALUES ('18', 'wall14', null, null);
INSERT INTO `user` VALUES ('19', 'wall15', null, null);
INSERT INTO `user` VALUES ('20', 'wall16', null, null);
INSERT INTO `user` VALUES ('21', 'wall17', null, null);
INSERT INTO `user` VALUES ('22', 'wall18', null, null);
INSERT INTO `user` VALUES ('23', 'wall19', null, null);
INSERT INTO `user` VALUES ('24', 'wall20', null, null);
INSERT INTO `user` VALUES ('25', 'wall21', null, null);
INSERT INTO `user` VALUES ('26', 'wall22', null, null);
INSERT INTO `user` VALUES ('27', 'wall23', null, null);
INSERT INTO `user` VALUES ('28', 'wall24', null, null);
INSERT INTO `user` VALUES ('29', 'wall25', null, null);
INSERT INTO `user` VALUES ('30', 'wall26', null, null);
INSERT INTO `user` VALUES ('31', 'wall27', null, null);
INSERT INTO `user` VALUES ('32', 'wall28', null, null);
INSERT INTO `user` VALUES ('33', 'wall29', null, null);
INSERT INTO `user` VALUES ('34', 'wall30', null, null);
INSERT INTO `user` VALUES ('35', 'wall31', null, null);
INSERT INTO `user` VALUES ('36', 'wall32', null, null);
INSERT INTO `user` VALUES ('37', 'wall33', null, null);
INSERT INTO `user` VALUES ('38', 'wall34', null, null);
INSERT INTO `user` VALUES ('39', 'wall35', null, null);
INSERT INTO `user` VALUES ('40', 'wall36', null, null);
INSERT INTO `user` VALUES ('41', 'wall37', null, null);
INSERT INTO `user` VALUES ('42', 'wall38', null, null);
INSERT INTO `user` VALUES ('43', 'wall39', null, null);
INSERT INTO `user` VALUES ('44', 'wall40', null, null);
INSERT INTO `user` VALUES ('45', 'wall41', null, null);
INSERT INTO `user` VALUES ('46', 'wall42', null, null);
INSERT INTO `user` VALUES ('47', 'wall43', null, null);
INSERT INTO `user` VALUES ('48', 'wall44', null, null);
INSERT INTO `user` VALUES ('49', 'wall45', null, null);
INSERT INTO `user` VALUES ('50', 'wall46', null, null);
INSERT INTO `user` VALUES ('51', 'wall47', null, null);
INSERT INTO `user` VALUES ('52', 'wall48', null, null);
INSERT INTO `user` VALUES ('53', 'wall49', null, null);
INSERT INTO `user` VALUES ('54', 'wall50', null, null);
INSERT INTO `user` VALUES ('55', 'wall51', null, null);
INSERT INTO `user` VALUES ('56', 'wall52', null, null);
INSERT INTO `user` VALUES ('57', 'wall53', null, null);
INSERT INTO `user` VALUES ('58', 'wall54', null, null);
INSERT INTO `user` VALUES ('59', 'wall55', null, null);
INSERT INTO `user` VALUES ('60', 'wall56', null, null);
INSERT INTO `user` VALUES ('61', 'wall57', null, null);
INSERT INTO `user` VALUES ('62', 'wall58', null, null);
INSERT INTO `user` VALUES ('63', 'wall59', null, null);
INSERT INTO `user` VALUES ('64', 'wall60', null, null);
INSERT INTO `user` VALUES ('65', 'wall61', null, null);
INSERT INTO `user` VALUES ('66', 'wall62', null, null);
INSERT INTO `user` VALUES ('67', 'wall63', null, null);
INSERT INTO `user` VALUES ('68', 'wall64', null, null);
INSERT INTO `user` VALUES ('69', 'wall65', null, null);
INSERT INTO `user` VALUES ('70', 'wall66', null, null);
INSERT INTO `user` VALUES ('71', 'wall67', null, null);
INSERT INTO `user` VALUES ('72', 'wall68', null, null);
INSERT INTO `user` VALUES ('73', 'wall69', null, null);
INSERT INTO `user` VALUES ('74', 'wall70', null, null);
INSERT INTO `user` VALUES ('75', 'wall71', null, null);
INSERT INTO `user` VALUES ('76', 'wall72', null, null);
INSERT INTO `user` VALUES ('77', 'wall73', null, null);
INSERT INTO `user` VALUES ('78', 'wall74', null, null);
INSERT INTO `user` VALUES ('79', 'wall75', null, null);
INSERT INTO `user` VALUES ('80', 'wall76', null, null);
INSERT INTO `user` VALUES ('81', 'wall77', null, null);
INSERT INTO `user` VALUES ('82', 'wall78', null, null);
INSERT INTO `user` VALUES ('83', 'wall79', null, null);
INSERT INTO `user` VALUES ('84', 'wall80', null, null);
INSERT INTO `user` VALUES ('85', 'wall81', null, null);
INSERT INTO `user` VALUES ('86', 'wall82', null, null);
INSERT INTO `user` VALUES ('87', 'wall83', null, null);
INSERT INTO `user` VALUES ('88', 'wall84', null, null);
INSERT INTO `user` VALUES ('89', 'wall85', null, null);
INSERT INTO `user` VALUES ('90', 'wall86', null, null);
INSERT INTO `user` VALUES ('91', 'wall87', null, null);
INSERT INTO `user` VALUES ('92', 'wall88', null, null);
INSERT INTO `user` VALUES ('93', 'wall89', null, null);
INSERT INTO `user` VALUES ('94', 'wall90', null, null);
INSERT INTO `user` VALUES ('95', 'wall91', null, null);
INSERT INTO `user` VALUES ('96', 'wall92', null, null);
INSERT INTO `user` VALUES ('97', 'wall93', null, null);
INSERT INTO `user` VALUES ('98', 'wall94', null, null);
INSERT INTO `user` VALUES ('99', 'wall95', null, null);
INSERT INTO `user` VALUES ('100', 'wall96', null, null);
INSERT INTO `user` VALUES ('101', 'wall97', null, null);
INSERT INTO `user` VALUES ('102', 'wall98', null, null);
INSERT INTO `user` VALUES ('103', 'wall99', null, null);
INSERT INTO `user` VALUES ('104', 'wall100', null, null);
INSERT INTO `user` VALUES ('105', 'wall101', null, null);
INSERT INTO `user` VALUES ('106', 'wall102', null, null);
INSERT INTO `user` VALUES ('107', 'wall103', null, null);
INSERT INTO `user` VALUES ('108', 'wall104', null, null);
INSERT INTO `user` VALUES ('109', 'wall105', null, null);
INSERT INTO `user` VALUES ('110', 'wall106', null, null);
INSERT INTO `user` VALUES ('111', 'wall107', null, null);
INSERT INTO `user` VALUES ('112', 'wall108', null, null);
INSERT INTO `user` VALUES ('113', 'wall109', null, null);
INSERT INTO `user` VALUES ('114', 'wall110', null, null);
INSERT INTO `user` VALUES ('115', 'wall111', null, null);
INSERT INTO `user` VALUES ('116', 'wall112', null, null);
INSERT INTO `user` VALUES ('117', 'wall113', null, null);
INSERT INTO `user` VALUES ('118', 'wall114', null, null);
INSERT INTO `user` VALUES ('119', 'wall115', null, null);
INSERT INTO `user` VALUES ('120', 'wall116', null, null);
INSERT INTO `user` VALUES ('121', 'wall117', null, null);
INSERT INTO `user` VALUES ('122', 'wall118', null, null);
INSERT INTO `user` VALUES ('123', 'wall119', null, null);
INSERT INTO `user` VALUES ('124', 'wall120', null, null);
INSERT INTO `user` VALUES ('125', 'wall121', null, null);
INSERT INTO `user` VALUES ('126', 'wall122', null, null);
INSERT INTO `user` VALUES ('127', 'wall123', null, null);
INSERT INTO `user` VALUES ('128', 'wall124', null, null);
INSERT INTO `user` VALUES ('129', 'wall125', null, null);
INSERT INTO `user` VALUES ('130', 'wall126', null, null);
INSERT INTO `user` VALUES ('131', 'wall127', null, null);
INSERT INTO `user` VALUES ('132', 'wall128', null, null);
INSERT INTO `user` VALUES ('133', 'wall129', null, null);
INSERT INTO `user` VALUES ('134', 'wall130', null, null);
INSERT INTO `user` VALUES ('135', 'wall131', null, null);
INSERT INTO `user` VALUES ('136', 'wall132', null, null);
INSERT INTO `user` VALUES ('137', 'wall133', null, null);
INSERT INTO `user` VALUES ('138', 'wall134', null, null);
INSERT INTO `user` VALUES ('139', 'wall135', null, null);
INSERT INTO `user` VALUES ('140', 'wall136', null, null);
INSERT INTO `user` VALUES ('141', 'wall137', null, null);
INSERT INTO `user` VALUES ('142', 'wall138', null, null);
INSERT INTO `user` VALUES ('143', 'wall139', null, null);
INSERT INTO `user` VALUES ('144', 'wall140', null, null);
INSERT INTO `user` VALUES ('145', 'wall141', null, null);
INSERT INTO `user` VALUES ('146', 'wall142', null, null);
INSERT INTO `user` VALUES ('147', 'wall143', null, null);
INSERT INTO `user` VALUES ('148', 'wall144', null, null);
INSERT INTO `user` VALUES ('149', 'wall145', null, null);
INSERT INTO `user` VALUES ('150', 'wall146', null, null);
INSERT INTO `user` VALUES ('151', 'wall147', null, null);
INSERT INTO `user` VALUES ('152', 'wall148', null, null);
INSERT INTO `user` VALUES ('153', 'wall149', null, null);
INSERT INTO `user` VALUES ('154', 'wall150', null, null);
INSERT INTO `user` VALUES ('155', 'wall151', null, null);
INSERT INTO `user` VALUES ('156', 'wall152', null, null);
INSERT INTO `user` VALUES ('157', 'wall153', null, null);
INSERT INTO `user` VALUES ('158', 'wall154', null, null);
INSERT INTO `user` VALUES ('159', 'wall155', null, null);
INSERT INTO `user` VALUES ('160', 'wall156', null, null);
INSERT INTO `user` VALUES ('161', 'wall157', null, null);
INSERT INTO `user` VALUES ('162', 'wall158', null, null);
INSERT INTO `user` VALUES ('163', 'wall159', null, null);
INSERT INTO `user` VALUES ('164', 'wall160', null, null);
INSERT INTO `user` VALUES ('165', 'wall161', null, null);
INSERT INTO `user` VALUES ('166', 'wall162', null, null);
INSERT INTO `user` VALUES ('167', 'wall163', null, null);
INSERT INTO `user` VALUES ('168', 'wall164', null, null);
INSERT INTO `user` VALUES ('169', 'wall165', null, null);
INSERT INTO `user` VALUES ('170', 'wall166', null, null);
INSERT INTO `user` VALUES ('171', 'wall167', null, null);
INSERT INTO `user` VALUES ('172', 'wall168', null, null);
INSERT INTO `user` VALUES ('173', 'wall169', null, null);
INSERT INTO `user` VALUES ('174', 'wall170', null, null);
INSERT INTO `user` VALUES ('175', 'wall171', null, null);
INSERT INTO `user` VALUES ('176', 'wall172', null, null);
INSERT INTO `user` VALUES ('177', 'wall173', null, null);
INSERT INTO `user` VALUES ('178', 'wall174', null, null);
INSERT INTO `user` VALUES ('179', 'wall175', null, null);
INSERT INTO `user` VALUES ('180', 'wall176', null, null);
INSERT INTO `user` VALUES ('181', 'wall177', null, null);
INSERT INTO `user` VALUES ('182', 'wall178', null, null);
INSERT INTO `user` VALUES ('183', 'wall179', null, null);
INSERT INTO `user` VALUES ('184', 'wall180', null, null);
INSERT INTO `user` VALUES ('185', 'wall181', null, null);
INSERT INTO `user` VALUES ('186', 'wall182', null, null);
INSERT INTO `user` VALUES ('187', 'wall183', null, null);
INSERT INTO `user` VALUES ('188', 'wall184', null, null);
INSERT INTO `user` VALUES ('189', 'wall185', null, null);
INSERT INTO `user` VALUES ('190', 'wall186', null, null);
INSERT INTO `user` VALUES ('191', 'wall187', null, null);
INSERT INTO `user` VALUES ('192', 'wall188', null, null);
INSERT INTO `user` VALUES ('193', 'wall189', null, null);
INSERT INTO `user` VALUES ('194', 'wall190', null, null);
INSERT INTO `user` VALUES ('195', 'wall191', null, null);
INSERT INTO `user` VALUES ('196', 'wall192', null, null);
INSERT INTO `user` VALUES ('197', 'wall193', null, null);
INSERT INTO `user` VALUES ('198', 'wall194', null, null);
INSERT INTO `user` VALUES ('199', 'wall195', null, null);
INSERT INTO `user` VALUES ('200', 'wall196', null, null);
INSERT INTO `user` VALUES ('201', 'wall197', null, null);
INSERT INTO `user` VALUES ('202', 'wall198', null, null);
INSERT INTO `user` VALUES ('203', 'wall199', null, null);
INSERT INTO `user` VALUES ('204', 'wall200', null, null);
INSERT INTO `user` VALUES ('205', 'wall201', null, null);
INSERT INTO `user` VALUES ('206', 'wall202', null, null);
INSERT INTO `user` VALUES ('207', 'wall203', null, null);
INSERT INTO `user` VALUES ('208', 'wall204', null, null);
INSERT INTO `user` VALUES ('209', 'wall205', null, null);
INSERT INTO `user` VALUES ('210', 'wall206', null, null);
INSERT INTO `user` VALUES ('211', 'wall207', null, null);
INSERT INTO `user` VALUES ('212', 'wall208', null, null);
INSERT INTO `user` VALUES ('213', 'wall209', null, null);
INSERT INTO `user` VALUES ('214', 'wall210', null, null);
INSERT INTO `user` VALUES ('215', 'wall211', null, null);
INSERT INTO `user` VALUES ('216', 'wall212', null, null);
INSERT INTO `user` VALUES ('217', 'wall213', null, null);
INSERT INTO `user` VALUES ('218', 'wall214', null, null);
INSERT INTO `user` VALUES ('219', 'wall215', null, null);
INSERT INTO `user` VALUES ('220', 'wall216', null, null);
INSERT INTO `user` VALUES ('221', 'wall217', null, null);
INSERT INTO `user` VALUES ('222', 'wall218', null, null);
INSERT INTO `user` VALUES ('223', 'wall219', null, null);
INSERT INTO `user` VALUES ('224', 'wall220', null, null);
INSERT INTO `user` VALUES ('225', 'wall221', null, null);
INSERT INTO `user` VALUES ('226', 'wall222', null, null);
INSERT INTO `user` VALUES ('227', 'wall223', null, null);
INSERT INTO `user` VALUES ('228', 'wall224', null, null);
INSERT INTO `user` VALUES ('229', 'wall225', null, null);
INSERT INTO `user` VALUES ('230', 'wall226', null, null);
INSERT INTO `user` VALUES ('231', 'wall227', null, null);
INSERT INTO `user` VALUES ('232', 'wall228', null, null);
INSERT INTO `user` VALUES ('233', 'wall229', null, null);
INSERT INTO `user` VALUES ('234', 'wall230', null, null);
INSERT INTO `user` VALUES ('235', 'wall231', null, null);
INSERT INTO `user` VALUES ('236', 'wall232', null, null);
INSERT INTO `user` VALUES ('237', 'wall233', null, null);
INSERT INTO `user` VALUES ('238', 'wall234', null, null);
INSERT INTO `user` VALUES ('239', 'wall235', null, null);
INSERT INTO `user` VALUES ('240', 'wall236', null, null);
INSERT INTO `user` VALUES ('241', 'wall237', null, null);
INSERT INTO `user` VALUES ('242', 'wall238', null, null);
INSERT INTO `user` VALUES ('243', 'wall239', null, null);
INSERT INTO `user` VALUES ('244', 'wall240', null, null);
INSERT INTO `user` VALUES ('245', 'wall241', null, null);
INSERT INTO `user` VALUES ('246', 'wall242', null, null);
INSERT INTO `user` VALUES ('247', 'wall243', null, null);
INSERT INTO `user` VALUES ('248', 'wall244', null, null);
INSERT INTO `user` VALUES ('249', 'wall245', null, null);
INSERT INTO `user` VALUES ('250', 'wall246', null, null);
INSERT INTO `user` VALUES ('251', 'wall247', null, null);
INSERT INTO `user` VALUES ('252', 'wall248', null, null);
INSERT INTO `user` VALUES ('253', 'wall249', null, null);
INSERT INTO `user` VALUES ('254', 'wall250', null, null);
INSERT INTO `user` VALUES ('255', 'wall251', null, null);
INSERT INTO `user` VALUES ('256', 'wall252', null, null);
INSERT INTO `user` VALUES ('257', 'wall253', null, null);
INSERT INTO `user` VALUES ('258', 'wall254', null, null);
INSERT INTO `user` VALUES ('259', 'wall255', null, null);
INSERT INTO `user` VALUES ('260', 'wall256', null, null);
INSERT INTO `user` VALUES ('261', 'wall257', null, null);
INSERT INTO `user` VALUES ('262', 'wall258', null, null);
INSERT INTO `user` VALUES ('263', 'wall259', null, null);
INSERT INTO `user` VALUES ('264', 'wall260', null, null);
INSERT INTO `user` VALUES ('265', 'wall261', null, null);
INSERT INTO `user` VALUES ('266', 'wall262', null, null);
INSERT INTO `user` VALUES ('267', 'wall263', null, null);
INSERT INTO `user` VALUES ('268', 'wall264', null, null);
INSERT INTO `user` VALUES ('269', 'wall265', null, null);
INSERT INTO `user` VALUES ('270', 'wall266', null, null);
INSERT INTO `user` VALUES ('271', 'wall267', null, null);
INSERT INTO `user` VALUES ('272', 'wall268', null, null);
INSERT INTO `user` VALUES ('273', 'wall269', null, null);
INSERT INTO `user` VALUES ('274', 'wall270', null, null);
INSERT INTO `user` VALUES ('275', 'wall271', null, null);
INSERT INTO `user` VALUES ('276', 'wall272', null, null);
INSERT INTO `user` VALUES ('277', 'wall273', null, null);
INSERT INTO `user` VALUES ('278', 'wall274', null, null);
INSERT INTO `user` VALUES ('279', 'wall275', null, null);
INSERT INTO `user` VALUES ('280', 'wall276', null, null);
INSERT INTO `user` VALUES ('281', 'wall277', null, null);
INSERT INTO `user` VALUES ('282', 'wall278', null, null);
INSERT INTO `user` VALUES ('283', 'wall279', null, null);
INSERT INTO `user` VALUES ('284', 'wall280', null, null);
INSERT INTO `user` VALUES ('285', 'wall281', null, null);
INSERT INTO `user` VALUES ('286', 'wall282', null, null);
INSERT INTO `user` VALUES ('287', 'wall283', null, null);
INSERT INTO `user` VALUES ('288', 'wall284', null, null);
INSERT INTO `user` VALUES ('289', 'wall285', null, null);
INSERT INTO `user` VALUES ('290', 'wall286', null, null);
INSERT INTO `user` VALUES ('291', 'wall287', null, null);
INSERT INTO `user` VALUES ('292', 'wall288', null, null);
INSERT INTO `user` VALUES ('293', 'wall289', null, null);
INSERT INTO `user` VALUES ('294', 'wall290', null, null);
INSERT INTO `user` VALUES ('295', 'wall291', null, null);
INSERT INTO `user` VALUES ('296', 'wall292', null, null);
INSERT INTO `user` VALUES ('297', 'wall293', null, null);
INSERT INTO `user` VALUES ('298', 'wall294', null, null);
INSERT INTO `user` VALUES ('299', 'wall295', null, null);
INSERT INTO `user` VALUES ('300', 'wall296', null, null);
INSERT INTO `user` VALUES ('301', 'wall297', null, null);
INSERT INTO `user` VALUES ('302', 'wall298', null, null);
INSERT INTO `user` VALUES ('303', 'wall299', null, null);
INSERT INTO `user` VALUES ('304', 'wall300', null, null);
INSERT INTO `user` VALUES ('305', 'wall301', null, null);
INSERT INTO `user` VALUES ('306', 'wall302', null, null);
INSERT INTO `user` VALUES ('307', 'wall303', null, null);
INSERT INTO `user` VALUES ('308', 'wall304', null, null);
INSERT INTO `user` VALUES ('309', 'wall305', null, null);
INSERT INTO `user` VALUES ('310', 'wall306', null, null);
INSERT INTO `user` VALUES ('311', 'wall307', null, null);
INSERT INTO `user` VALUES ('312', 'wall308', null, null);
INSERT INTO `user` VALUES ('313', 'wall309', null, null);
INSERT INTO `user` VALUES ('314', 'wall310', null, null);
INSERT INTO `user` VALUES ('315', 'wall311', null, null);
INSERT INTO `user` VALUES ('316', 'wall312', null, null);
INSERT INTO `user` VALUES ('317', 'wall313', null, null);
INSERT INTO `user` VALUES ('318', 'wall314', null, null);
INSERT INTO `user` VALUES ('319', 'wall315', null, null);
INSERT INTO `user` VALUES ('320', 'wall316', null, null);
INSERT INTO `user` VALUES ('321', 'wall317', null, null);
INSERT INTO `user` VALUES ('322', 'wall318', null, null);
INSERT INTO `user` VALUES ('323', 'wall319', null, null);
INSERT INTO `user` VALUES ('324', 'wall320', null, null);
INSERT INTO `user` VALUES ('325', 'wall321', null, null);
INSERT INTO `user` VALUES ('326', 'wall322', null, null);
INSERT INTO `user` VALUES ('327', 'wall323', null, null);
INSERT INTO `user` VALUES ('328', 'wall324', null, null);
INSERT INTO `user` VALUES ('329', 'wall325', null, null);
INSERT INTO `user` VALUES ('330', 'wall326', null, null);
INSERT INTO `user` VALUES ('331', 'wall327', null, null);
INSERT INTO `user` VALUES ('332', 'wall328', null, null);
INSERT INTO `user` VALUES ('333', 'wall329', null, null);
INSERT INTO `user` VALUES ('334', 'wall330', null, null);
INSERT INTO `user` VALUES ('335', 'wall331', null, null);
INSERT INTO `user` VALUES ('336', 'wall332', null, null);
INSERT INTO `user` VALUES ('337', 'wall333', null, null);
INSERT INTO `user` VALUES ('338', 'wall334', null, null);
INSERT INTO `user` VALUES ('339', 'wall335', null, null);
INSERT INTO `user` VALUES ('340', 'wall336', null, null);
INSERT INTO `user` VALUES ('341', 'wall337', null, null);
INSERT INTO `user` VALUES ('342', 'wall338', null, null);
INSERT INTO `user` VALUES ('343', 'wall339', null, null);
INSERT INTO `user` VALUES ('344', 'wall340', null, null);
INSERT INTO `user` VALUES ('345', 'wall341', null, null);
INSERT INTO `user` VALUES ('346', 'wall342', null, null);
INSERT INTO `user` VALUES ('347', 'wall343', null, null);
INSERT INTO `user` VALUES ('348', 'wall344', null, null);
INSERT INTO `user` VALUES ('349', 'wall345', null, null);
INSERT INTO `user` VALUES ('350', 'wall346', null, null);
INSERT INTO `user` VALUES ('351', 'wall347', null, null);
INSERT INTO `user` VALUES ('352', 'wall348', null, null);
INSERT INTO `user` VALUES ('353', 'wall349', null, null);
INSERT INTO `user` VALUES ('354', 'wall350', null, null);
INSERT INTO `user` VALUES ('355', 'wall351', null, null);
INSERT INTO `user` VALUES ('356', 'wall352', null, null);
INSERT INTO `user` VALUES ('357', 'wall353', null, null);
INSERT INTO `user` VALUES ('358', 'wall354', null, null);
INSERT INTO `user` VALUES ('359', 'wall355', null, null);
INSERT INTO `user` VALUES ('360', 'wall356', null, null);
INSERT INTO `user` VALUES ('361', 'wall357', null, null);
INSERT INTO `user` VALUES ('362', 'wall358', null, null);
INSERT INTO `user` VALUES ('363', 'wall359', null, null);
INSERT INTO `user` VALUES ('364', 'wall360', null, null);
INSERT INTO `user` VALUES ('365', 'wall361', null, null);
INSERT INTO `user` VALUES ('366', 'wall362', null, null);
INSERT INTO `user` VALUES ('367', 'wall363', null, null);
INSERT INTO `user` VALUES ('368', 'wall364', null, null);
INSERT INTO `user` VALUES ('369', 'wall365', null, null);
INSERT INTO `user` VALUES ('370', 'wall366', null, null);
INSERT INTO `user` VALUES ('371', 'wall367', null, null);
INSERT INTO `user` VALUES ('372', 'wall368', null, null);
INSERT INTO `user` VALUES ('373', 'wall369', null, null);
INSERT INTO `user` VALUES ('374', 'wall370', null, null);
INSERT INTO `user` VALUES ('375', 'wall371', null, null);
INSERT INTO `user` VALUES ('376', 'wall372', null, null);
INSERT INTO `user` VALUES ('377', 'wall373', null, null);
INSERT INTO `user` VALUES ('378', 'wall374', null, null);
INSERT INTO `user` VALUES ('379', 'wall375', null, null);
INSERT INTO `user` VALUES ('380', 'wall376', null, null);
INSERT INTO `user` VALUES ('381', 'wall377', null, null);
INSERT INTO `user` VALUES ('382', 'wall378', null, null);
INSERT INTO `user` VALUES ('383', 'wall379', null, null);
INSERT INTO `user` VALUES ('384', 'wall380', null, null);
INSERT INTO `user` VALUES ('385', 'wall381', null, null);
INSERT INTO `user` VALUES ('386', 'wall382', null, null);
INSERT INTO `user` VALUES ('387', 'wall383', null, null);
INSERT INTO `user` VALUES ('388', 'wall384', null, null);
INSERT INTO `user` VALUES ('389', 'wall385', null, null);
INSERT INTO `user` VALUES ('390', 'wall386', null, null);
INSERT INTO `user` VALUES ('391', 'wall387', null, null);
INSERT INTO `user` VALUES ('392', 'wall388', null, null);
INSERT INTO `user` VALUES ('393', 'wall389', null, null);
INSERT INTO `user` VALUES ('394', 'wall390', null, null);
INSERT INTO `user` VALUES ('395', 'wall391', null, null);
INSERT INTO `user` VALUES ('396', 'wall392', null, null);
INSERT INTO `user` VALUES ('397', 'wall393', null, null);
INSERT INTO `user` VALUES ('398', 'wall394', null, null);
INSERT INTO `user` VALUES ('399', 'wall395', null, null);
INSERT INTO `user` VALUES ('400', 'wall396', null, null);
INSERT INTO `user` VALUES ('401', 'wall397', null, null);
INSERT INTO `user` VALUES ('402', 'wall398', null, null);
INSERT INTO `user` VALUES ('403', 'wall399', null, null);
INSERT INTO `user` VALUES ('404', 'wall400', null, null);
INSERT INTO `user` VALUES ('405', 'wall401', null, null);
INSERT INTO `user` VALUES ('406', 'wall402', null, null);
INSERT INTO `user` VALUES ('407', 'wall403', null, null);
INSERT INTO `user` VALUES ('408', 'wall404', null, null);
INSERT INTO `user` VALUES ('409', 'wall405', null, null);
INSERT INTO `user` VALUES ('410', 'wall406', null, null);
INSERT INTO `user` VALUES ('411', 'wall407', null, null);
INSERT INTO `user` VALUES ('412', 'wall408', null, null);
INSERT INTO `user` VALUES ('413', 'wall409', null, null);
INSERT INTO `user` VALUES ('414', 'wall410', null, null);
INSERT INTO `user` VALUES ('415', 'wall411', null, null);
INSERT INTO `user` VALUES ('416', 'wall412', null, null);
INSERT INTO `user` VALUES ('417', 'wall413', null, null);
INSERT INTO `user` VALUES ('418', 'wall414', null, null);
INSERT INTO `user` VALUES ('419', 'wall415', null, null);
INSERT INTO `user` VALUES ('420', 'wall416', null, null);
INSERT INTO `user` VALUES ('421', 'wall417', null, null);
INSERT INTO `user` VALUES ('422', 'wall418', null, null);
INSERT INTO `user` VALUES ('423', 'wall419', null, null);
INSERT INTO `user` VALUES ('424', 'wall420', null, null);
INSERT INTO `user` VALUES ('425', 'wall421', null, null);
INSERT INTO `user` VALUES ('426', 'wall422', null, null);
INSERT INTO `user` VALUES ('427', 'wall423', null, null);
INSERT INTO `user` VALUES ('428', 'wall424', null, null);
INSERT INTO `user` VALUES ('429', 'wall425', null, null);
INSERT INTO `user` VALUES ('430', 'wall426', null, null);
INSERT INTO `user` VALUES ('431', 'wall427', null, null);
INSERT INTO `user` VALUES ('432', 'wall428', null, null);
INSERT INTO `user` VALUES ('433', 'wall429', null, null);
INSERT INTO `user` VALUES ('434', 'wall430', null, null);
INSERT INTO `user` VALUES ('435', 'wall431', null, null);
INSERT INTO `user` VALUES ('436', 'wall432', null, null);
INSERT INTO `user` VALUES ('437', 'wall433', null, null);
INSERT INTO `user` VALUES ('438', 'wall434', null, null);
INSERT INTO `user` VALUES ('439', 'wall435', null, null);
INSERT INTO `user` VALUES ('440', 'wall436', null, null);
INSERT INTO `user` VALUES ('441', 'wall437', null, null);
INSERT INTO `user` VALUES ('442', 'wall438', null, null);
INSERT INTO `user` VALUES ('443', 'wall439', null, null);
INSERT INTO `user` VALUES ('444', 'wall440', null, null);
INSERT INTO `user` VALUES ('445', 'wall441', null, null);
INSERT INTO `user` VALUES ('446', 'wall442', null, null);
INSERT INTO `user` VALUES ('447', 'wall443', null, null);
INSERT INTO `user` VALUES ('448', 'wall444', null, null);
INSERT INTO `user` VALUES ('449', 'wall445', null, null);
INSERT INTO `user` VALUES ('450', 'wall446', null, null);
INSERT INTO `user` VALUES ('451', 'wall447', null, null);
INSERT INTO `user` VALUES ('452', 'wall448', null, null);
INSERT INTO `user` VALUES ('453', 'wall449', null, null);
INSERT INTO `user` VALUES ('454', 'wall450', null, null);
INSERT INTO `user` VALUES ('455', 'wall451', null, null);
INSERT INTO `user` VALUES ('456', 'wall452', null, null);
INSERT INTO `user` VALUES ('457', 'wall453', null, null);
INSERT INTO `user` VALUES ('458', 'wall454', null, null);
INSERT INTO `user` VALUES ('459', 'wall455', null, null);
INSERT INTO `user` VALUES ('460', 'wall456', null, null);
INSERT INTO `user` VALUES ('461', 'wall457', null, null);
INSERT INTO `user` VALUES ('462', 'wall458', null, null);
INSERT INTO `user` VALUES ('463', 'wall459', null, null);
INSERT INTO `user` VALUES ('464', 'wall460', null, null);
INSERT INTO `user` VALUES ('465', 'wall461', null, null);
INSERT INTO `user` VALUES ('466', 'wall462', null, null);
INSERT INTO `user` VALUES ('467', 'wall463', null, null);
INSERT INTO `user` VALUES ('468', 'wall464', null, null);
INSERT INTO `user` VALUES ('469', 'wall465', null, null);
INSERT INTO `user` VALUES ('470', 'wall466', null, null);
INSERT INTO `user` VALUES ('471', 'wall467', null, null);
INSERT INTO `user` VALUES ('472', 'wall468', null, null);
INSERT INTO `user` VALUES ('473', 'wall469', null, null);
INSERT INTO `user` VALUES ('474', 'wall470', null, null);
INSERT INTO `user` VALUES ('475', 'wall471', null, null);
INSERT INTO `user` VALUES ('476', 'wall472', null, null);
INSERT INTO `user` VALUES ('477', 'wall473', null, null);
INSERT INTO `user` VALUES ('478', 'wall474', null, null);
INSERT INTO `user` VALUES ('479', 'wall475', null, null);
INSERT INTO `user` VALUES ('480', 'wall476', null, null);
INSERT INTO `user` VALUES ('481', 'wall477', null, null);
INSERT INTO `user` VALUES ('482', 'wall478', null, null);
INSERT INTO `user` VALUES ('483', 'wall479', null, null);
INSERT INTO `user` VALUES ('484', 'wall480', null, null);
INSERT INTO `user` VALUES ('485', 'wall481', null, null);
INSERT INTO `user` VALUES ('486', 'wall482', null, null);
INSERT INTO `user` VALUES ('487', 'wall483', null, null);
INSERT INTO `user` VALUES ('488', 'wall484', null, null);
INSERT INTO `user` VALUES ('489', 'wall485', null, null);
INSERT INTO `user` VALUES ('490', 'wall486', null, null);
INSERT INTO `user` VALUES ('491', 'wall487', null, null);
INSERT INTO `user` VALUES ('492', 'wall488', null, null);
INSERT INTO `user` VALUES ('493', 'wall489', null, null);
INSERT INTO `user` VALUES ('494', 'wall490', null, null);
INSERT INTO `user` VALUES ('495', 'wall491', null, null);
INSERT INTO `user` VALUES ('496', 'wall492', null, null);
INSERT INTO `user` VALUES ('497', 'wall493', null, null);
INSERT INTO `user` VALUES ('498', 'wall494', null, null);
INSERT INTO `user` VALUES ('499', 'wall495', null, null);
INSERT INTO `user` VALUES ('500', 'wall496', null, null);
INSERT INTO `user` VALUES ('501', 'wall497', null, null);
INSERT INTO `user` VALUES ('502', 'wall498', null, null);
INSERT INTO `user` VALUES ('503', 'wall499', null, null);
INSERT INTO `user` VALUES ('504', 'wall500', null, null);
INSERT INTO `user` VALUES ('505', 'wall501', null, null);
INSERT INTO `user` VALUES ('506', 'wall502', null, null);
INSERT INTO `user` VALUES ('507', 'wall503', null, null);
INSERT INTO `user` VALUES ('508', 'wall504', null, null);
INSERT INTO `user` VALUES ('509', 'wall505', null, null);
INSERT INTO `user` VALUES ('510', 'wall506', null, null);
INSERT INTO `user` VALUES ('511', 'wall507', null, null);
INSERT INTO `user` VALUES ('512', 'wall508', null, null);
INSERT INTO `user` VALUES ('513', 'wall509', null, null);
INSERT INTO `user` VALUES ('514', 'wall510', null, null);
INSERT INTO `user` VALUES ('515', 'wall511', null, null);
INSERT INTO `user` VALUES ('516', 'wall512', null, null);
INSERT INTO `user` VALUES ('517', 'wall513', null, null);
INSERT INTO `user` VALUES ('518', 'wall514', null, null);
INSERT INTO `user` VALUES ('519', 'wall515', null, null);
INSERT INTO `user` VALUES ('520', 'wall516', null, null);
INSERT INTO `user` VALUES ('521', 'wall517', null, null);
INSERT INTO `user` VALUES ('522', 'wall518', null, null);
INSERT INTO `user` VALUES ('523', 'wall519', null, null);
INSERT INTO `user` VALUES ('524', 'wall520', null, null);
INSERT INTO `user` VALUES ('525', 'wall521', null, null);
INSERT INTO `user` VALUES ('526', 'wall522', null, null);
INSERT INTO `user` VALUES ('527', 'wall523', null, null);
INSERT INTO `user` VALUES ('528', 'wall524', null, null);
INSERT INTO `user` VALUES ('529', 'wall525', null, null);
INSERT INTO `user` VALUES ('530', 'wall526', null, null);
INSERT INTO `user` VALUES ('531', 'wall527', null, null);
INSERT INTO `user` VALUES ('532', 'wall528', null, null);
INSERT INTO `user` VALUES ('533', 'wall529', null, null);
INSERT INTO `user` VALUES ('534', 'wall530', null, null);
INSERT INTO `user` VALUES ('535', 'wall531', null, null);
INSERT INTO `user` VALUES ('536', 'wall532', null, null);
INSERT INTO `user` VALUES ('537', 'wall533', null, null);
INSERT INTO `user` VALUES ('538', 'wall534', null, null);
INSERT INTO `user` VALUES ('539', 'wall535', null, null);
INSERT INTO `user` VALUES ('540', 'wall536', null, null);
INSERT INTO `user` VALUES ('541', 'wall537', null, null);
INSERT INTO `user` VALUES ('542', 'wall538', null, null);
INSERT INTO `user` VALUES ('543', 'wall539', null, null);
INSERT INTO `user` VALUES ('544', 'wall540', null, null);
INSERT INTO `user` VALUES ('545', 'wall541', null, null);
INSERT INTO `user` VALUES ('546', 'wall542', null, null);
INSERT INTO `user` VALUES ('547', 'wall543', null, null);
INSERT INTO `user` VALUES ('548', 'wall544', null, null);
INSERT INTO `user` VALUES ('549', 'wall545', null, null);
INSERT INTO `user` VALUES ('550', 'wall546', null, null);
INSERT INTO `user` VALUES ('551', 'wall547', null, null);
INSERT INTO `user` VALUES ('552', 'wall548', null, null);
INSERT INTO `user` VALUES ('553', 'wall549', null, null);
INSERT INTO `user` VALUES ('554', 'wall550', null, null);
INSERT INTO `user` VALUES ('555', 'wall551', null, null);
INSERT INTO `user` VALUES ('556', 'wall552', null, null);
INSERT INTO `user` VALUES ('557', 'wall553', null, null);
INSERT INTO `user` VALUES ('558', 'wall554', null, null);
INSERT INTO `user` VALUES ('559', 'wall555', null, null);
INSERT INTO `user` VALUES ('560', 'wall556', null, null);
INSERT INTO `user` VALUES ('561', 'wall557', null, null);
INSERT INTO `user` VALUES ('562', 'wall558', null, null);
INSERT INTO `user` VALUES ('563', 'wall559', null, null);
INSERT INTO `user` VALUES ('564', 'wall560', null, null);
INSERT INTO `user` VALUES ('565', 'wall561', null, null);
INSERT INTO `user` VALUES ('566', 'wall562', null, null);
INSERT INTO `user` VALUES ('567', 'wall563', null, null);
INSERT INTO `user` VALUES ('568', 'wall564', null, null);
INSERT INTO `user` VALUES ('569', 'wall565', null, null);
INSERT INTO `user` VALUES ('570', 'wall566', null, null);
INSERT INTO `user` VALUES ('571', 'wall567', null, null);
INSERT INTO `user` VALUES ('572', 'wall568', null, null);
INSERT INTO `user` VALUES ('573', 'wall569', null, null);
INSERT INTO `user` VALUES ('574', 'wall570', null, null);
INSERT INTO `user` VALUES ('575', 'wall571', null, null);
INSERT INTO `user` VALUES ('576', 'wall572', null, null);
INSERT INTO `user` VALUES ('577', 'wall573', null, null);
INSERT INTO `user` VALUES ('578', 'wall574', null, null);
INSERT INTO `user` VALUES ('579', 'wall575', null, null);
INSERT INTO `user` VALUES ('580', 'wall576', null, null);
INSERT INTO `user` VALUES ('581', 'wall577', null, null);
INSERT INTO `user` VALUES ('582', 'wall578', null, null);
INSERT INTO `user` VALUES ('583', 'wall579', null, null);
INSERT INTO `user` VALUES ('584', 'wall580', null, null);
INSERT INTO `user` VALUES ('585', 'wall581', null, null);
INSERT INTO `user` VALUES ('586', 'wall582', null, null);
INSERT INTO `user` VALUES ('587', 'wall583', null, null);
INSERT INTO `user` VALUES ('588', 'wall584', null, null);
INSERT INTO `user` VALUES ('589', 'wall585', null, null);
INSERT INTO `user` VALUES ('590', 'wall586', null, null);
INSERT INTO `user` VALUES ('591', 'wall587', null, null);
INSERT INTO `user` VALUES ('592', 'wall588', null, null);
INSERT INTO `user` VALUES ('593', 'wall589', null, null);
INSERT INTO `user` VALUES ('594', 'wall590', null, null);
INSERT INTO `user` VALUES ('595', 'wall591', null, null);
INSERT INTO `user` VALUES ('596', 'wall592', null, null);
INSERT INTO `user` VALUES ('597', 'wall593', null, null);
INSERT INTO `user` VALUES ('598', 'wall594', null, null);
INSERT INTO `user` VALUES ('599', 'wall595', null, null);
INSERT INTO `user` VALUES ('600', 'wall596', null, null);
INSERT INTO `user` VALUES ('601', 'wall597', null, null);
INSERT INTO `user` VALUES ('602', 'wall598', null, null);
INSERT INTO `user` VALUES ('603', 'wall599', null, null);
INSERT INTO `user` VALUES ('604', 'wall600', null, null);
INSERT INTO `user` VALUES ('605', 'wall601', null, null);
INSERT INTO `user` VALUES ('606', 'wall602', null, null);
INSERT INTO `user` VALUES ('607', 'wall603', null, null);
INSERT INTO `user` VALUES ('608', 'wall604', null, null);
INSERT INTO `user` VALUES ('609', 'wall605', null, null);
INSERT INTO `user` VALUES ('610', 'wall606', null, null);
INSERT INTO `user` VALUES ('611', 'wall607', null, null);
INSERT INTO `user` VALUES ('612', 'wall608', null, null);
INSERT INTO `user` VALUES ('613', 'wall609', null, null);
INSERT INTO `user` VALUES ('614', 'wall610', null, null);
INSERT INTO `user` VALUES ('615', 'wall611', null, null);
INSERT INTO `user` VALUES ('616', 'wall612', null, null);
INSERT INTO `user` VALUES ('617', 'wall613', null, null);
INSERT INTO `user` VALUES ('618', 'wall614', null, null);
INSERT INTO `user` VALUES ('619', 'wall615', null, null);
INSERT INTO `user` VALUES ('620', 'wall616', null, null);
INSERT INTO `user` VALUES ('621', 'wall617', null, null);
INSERT INTO `user` VALUES ('622', 'wall618', null, null);
INSERT INTO `user` VALUES ('623', 'wall619', null, null);
INSERT INTO `user` VALUES ('624', 'wall620', null, null);
INSERT INTO `user` VALUES ('625', 'wall621', null, null);
INSERT INTO `user` VALUES ('626', 'wall622', null, null);
INSERT INTO `user` VALUES ('627', 'wall623', null, null);
INSERT INTO `user` VALUES ('628', 'wall624', null, null);
INSERT INTO `user` VALUES ('629', 'wall625', null, null);
INSERT INTO `user` VALUES ('630', 'wall626', null, null);
INSERT INTO `user` VALUES ('631', 'wall627', null, null);
INSERT INTO `user` VALUES ('632', 'wall628', null, null);
INSERT INTO `user` VALUES ('633', 'wall629', null, null);
INSERT INTO `user` VALUES ('634', 'wall630', null, null);
INSERT INTO `user` VALUES ('635', 'wall631', null, null);
INSERT INTO `user` VALUES ('636', 'wall632', null, null);
INSERT INTO `user` VALUES ('637', 'wall633', null, null);
INSERT INTO `user` VALUES ('638', 'wall634', null, null);
INSERT INTO `user` VALUES ('639', 'wall635', null, null);
INSERT INTO `user` VALUES ('640', 'wall636', null, null);
INSERT INTO `user` VALUES ('641', 'wall637', null, null);
INSERT INTO `user` VALUES ('642', 'wall638', null, null);
INSERT INTO `user` VALUES ('643', 'wall639', null, null);
INSERT INTO `user` VALUES ('644', 'wall640', null, null);
INSERT INTO `user` VALUES ('645', 'wall641', null, null);
INSERT INTO `user` VALUES ('646', 'wall642', null, null);
INSERT INTO `user` VALUES ('647', 'wall643', null, null);
INSERT INTO `user` VALUES ('648', 'wall644', null, null);
INSERT INTO `user` VALUES ('649', 'wall645', null, null);
INSERT INTO `user` VALUES ('650', 'wall646', null, null);
INSERT INTO `user` VALUES ('651', 'wall647', null, null);
INSERT INTO `user` VALUES ('652', 'wall648', null, null);
INSERT INTO `user` VALUES ('653', 'wall649', null, null);
INSERT INTO `user` VALUES ('654', 'wall650', null, null);
INSERT INTO `user` VALUES ('655', 'wall651', null, null);
INSERT INTO `user` VALUES ('656', 'wall652', null, null);
INSERT INTO `user` VALUES ('657', 'wall653', null, null);
INSERT INTO `user` VALUES ('658', 'wall654', null, null);
INSERT INTO `user` VALUES ('659', 'wall655', null, null);
INSERT INTO `user` VALUES ('660', 'wall656', null, null);
INSERT INTO `user` VALUES ('661', 'wall657', null, null);
INSERT INTO `user` VALUES ('662', 'wall658', null, null);
INSERT INTO `user` VALUES ('663', 'wall659', null, null);
INSERT INTO `user` VALUES ('664', 'wall660', null, null);
INSERT INTO `user` VALUES ('665', 'wall661', null, null);
INSERT INTO `user` VALUES ('666', 'wall662', null, null);
INSERT INTO `user` VALUES ('667', 'wall663', null, null);
INSERT INTO `user` VALUES ('668', 'wall664', null, null);
INSERT INTO `user` VALUES ('669', 'wall665', null, null);
INSERT INTO `user` VALUES ('670', 'wall666', null, null);
INSERT INTO `user` VALUES ('671', 'wall667', null, null);
INSERT INTO `user` VALUES ('672', 'wall668', null, null);
INSERT INTO `user` VALUES ('673', 'wall669', null, null);
INSERT INTO `user` VALUES ('674', 'wall670', null, null);
INSERT INTO `user` VALUES ('675', 'wall671', null, null);
INSERT INTO `user` VALUES ('676', 'wall672', null, null);
INSERT INTO `user` VALUES ('677', 'wall673', null, null);
INSERT INTO `user` VALUES ('678', 'wall674', null, null);
INSERT INTO `user` VALUES ('679', 'wall675', null, null);
INSERT INTO `user` VALUES ('680', 'wall676', null, null);
INSERT INTO `user` VALUES ('681', 'wall677', null, null);
INSERT INTO `user` VALUES ('682', 'wall678', null, null);
INSERT INTO `user` VALUES ('683', 'wall679', null, null);
INSERT INTO `user` VALUES ('684', 'wall680', null, null);
INSERT INTO `user` VALUES ('685', 'wall681', null, null);
INSERT INTO `user` VALUES ('686', 'wall682', null, null);
INSERT INTO `user` VALUES ('687', 'wall683', null, null);
INSERT INTO `user` VALUES ('688', 'wall684', null, null);
INSERT INTO `user` VALUES ('689', 'wall685', null, null);
INSERT INTO `user` VALUES ('690', 'wall686', null, null);
INSERT INTO `user` VALUES ('691', 'wall687', null, null);
INSERT INTO `user` VALUES ('692', 'wall688', null, null);
INSERT INTO `user` VALUES ('693', 'wall689', null, null);
INSERT INTO `user` VALUES ('694', 'wall690', null, null);
INSERT INTO `user` VALUES ('695', 'wall691', null, null);
INSERT INTO `user` VALUES ('696', 'wall692', null, null);
INSERT INTO `user` VALUES ('697', 'wall693', null, null);
INSERT INTO `user` VALUES ('698', 'wall694', null, null);
INSERT INTO `user` VALUES ('699', 'wall695', null, null);
INSERT INTO `user` VALUES ('700', 'wall696', null, null);
INSERT INTO `user` VALUES ('701', 'wall697', null, null);
INSERT INTO `user` VALUES ('702', 'wall698', null, null);
INSERT INTO `user` VALUES ('703', 'wall699', null, null);
INSERT INTO `user` VALUES ('704', 'wall700', null, null);
INSERT INTO `user` VALUES ('705', 'wall701', null, null);
INSERT INTO `user` VALUES ('706', 'wall702', null, null);
INSERT INTO `user` VALUES ('707', 'wall703', null, null);
INSERT INTO `user` VALUES ('708', 'wall704', null, null);
INSERT INTO `user` VALUES ('709', 'wall705', null, null);
INSERT INTO `user` VALUES ('710', 'wall706', null, null);
INSERT INTO `user` VALUES ('711', 'wall707', null, null);
INSERT INTO `user` VALUES ('712', 'wall708', null, null);
INSERT INTO `user` VALUES ('713', 'wall709', null, null);
INSERT INTO `user` VALUES ('714', 'wall710', null, null);
INSERT INTO `user` VALUES ('715', 'wall711', null, null);
INSERT INTO `user` VALUES ('716', 'wall712', null, null);
INSERT INTO `user` VALUES ('717', 'wall713', null, null);
INSERT INTO `user` VALUES ('718', 'wall714', null, null);
INSERT INTO `user` VALUES ('719', 'wall715', null, null);
INSERT INTO `user` VALUES ('720', 'wall716', null, null);
INSERT INTO `user` VALUES ('721', 'wall717', null, null);
INSERT INTO `user` VALUES ('722', 'wall718', null, null);
INSERT INTO `user` VALUES ('723', 'wall719', null, null);
INSERT INTO `user` VALUES ('724', 'wall720', null, null);
INSERT INTO `user` VALUES ('725', 'wall721', null, null);
INSERT INTO `user` VALUES ('726', 'wall722', null, null);
INSERT INTO `user` VALUES ('727', 'wall723', null, null);
INSERT INTO `user` VALUES ('728', 'wall724', null, null);
INSERT INTO `user` VALUES ('729', 'wall725', null, null);
INSERT INTO `user` VALUES ('730', 'wall726', null, null);
INSERT INTO `user` VALUES ('731', 'wall727', null, null);
INSERT INTO `user` VALUES ('732', 'wall728', null, null);
INSERT INTO `user` VALUES ('733', 'wall729', null, null);
INSERT INTO `user` VALUES ('734', 'wall730', null, null);
INSERT INTO `user` VALUES ('735', 'wall731', null, null);
INSERT INTO `user` VALUES ('736', 'wall732', null, null);
INSERT INTO `user` VALUES ('737', 'wall733', null, null);
INSERT INTO `user` VALUES ('738', 'wall734', null, null);
INSERT INTO `user` VALUES ('739', 'wall735', null, null);
INSERT INTO `user` VALUES ('740', 'wall736', null, null);
INSERT INTO `user` VALUES ('741', 'wall737', null, null);
INSERT INTO `user` VALUES ('742', 'wall738', null, null);
INSERT INTO `user` VALUES ('743', 'wall739', null, null);
INSERT INTO `user` VALUES ('744', 'wall740', null, null);
INSERT INTO `user` VALUES ('745', 'wall741', null, null);
INSERT INTO `user` VALUES ('746', 'wall742', null, null);
INSERT INTO `user` VALUES ('747', 'wall743', null, null);
INSERT INTO `user` VALUES ('748', 'wall744', null, null);
INSERT INTO `user` VALUES ('749', 'wall745', null, null);
INSERT INTO `user` VALUES ('750', 'wall746', null, null);
INSERT INTO `user` VALUES ('751', 'wall747', null, null);
INSERT INTO `user` VALUES ('752', 'wall748', null, null);
INSERT INTO `user` VALUES ('753', 'wall749', null, null);
INSERT INTO `user` VALUES ('754', 'wall750', null, null);
INSERT INTO `user` VALUES ('755', 'wall751', null, null);
INSERT INTO `user` VALUES ('756', 'wall752', null, null);
INSERT INTO `user` VALUES ('757', 'wall753', null, null);
INSERT INTO `user` VALUES ('758', 'wall754', null, null);
INSERT INTO `user` VALUES ('759', 'wall755', null, null);
INSERT INTO `user` VALUES ('760', 'wall756', null, null);
INSERT INTO `user` VALUES ('761', 'wall757', null, null);
INSERT INTO `user` VALUES ('762', 'wall758', null, null);
INSERT INTO `user` VALUES ('763', 'wall759', null, null);
INSERT INTO `user` VALUES ('764', 'wall760', null, null);
INSERT INTO `user` VALUES ('765', 'wall761', null, null);
INSERT INTO `user` VALUES ('766', 'wall762', null, null);
INSERT INTO `user` VALUES ('767', 'wall763', null, null);
INSERT INTO `user` VALUES ('768', 'wall764', null, null);
INSERT INTO `user` VALUES ('769', 'wall765', null, null);
INSERT INTO `user` VALUES ('770', 'wall766', null, null);
INSERT INTO `user` VALUES ('771', 'wall767', null, null);
INSERT INTO `user` VALUES ('772', 'wall768', null, null);
INSERT INTO `user` VALUES ('773', 'wall769', null, null);
INSERT INTO `user` VALUES ('774', 'wall770', null, null);
INSERT INTO `user` VALUES ('775', 'wall771', null, null);
INSERT INTO `user` VALUES ('776', 'wall772', null, null);
INSERT INTO `user` VALUES ('777', 'wall773', null, null);
INSERT INTO `user` VALUES ('778', 'wall774', null, null);
INSERT INTO `user` VALUES ('779', 'wall775', null, null);
INSERT INTO `user` VALUES ('780', 'wall776', null, null);
INSERT INTO `user` VALUES ('781', 'wall777', null, null);
INSERT INTO `user` VALUES ('782', 'wall778', null, null);
INSERT INTO `user` VALUES ('783', 'wall779', null, null);
INSERT INTO `user` VALUES ('784', 'wall780', null, null);
INSERT INTO `user` VALUES ('785', 'wall781', null, null);
INSERT INTO `user` VALUES ('786', 'wall782', null, null);
INSERT INTO `user` VALUES ('787', 'wall783', null, null);
INSERT INTO `user` VALUES ('788', 'wall784', null, null);
INSERT INTO `user` VALUES ('789', 'wall785', null, null);
INSERT INTO `user` VALUES ('790', 'wall786', null, null);
INSERT INTO `user` VALUES ('791', 'wall787', null, null);
INSERT INTO `user` VALUES ('792', 'wall788', null, null);
INSERT INTO `user` VALUES ('793', 'wall789', null, null);
INSERT INTO `user` VALUES ('794', 'wall790', null, null);
INSERT INTO `user` VALUES ('795', 'wall791', null, null);
INSERT INTO `user` VALUES ('796', 'wall792', null, null);
INSERT INTO `user` VALUES ('797', 'wall793', null, null);
INSERT INTO `user` VALUES ('798', 'wall794', null, null);
INSERT INTO `user` VALUES ('799', 'wall795', null, null);
INSERT INTO `user` VALUES ('800', 'wall796', null, null);
INSERT INTO `user` VALUES ('801', 'wall797', null, null);
INSERT INTO `user` VALUES ('802', 'wall798', null, null);
INSERT INTO `user` VALUES ('803', 'wall799', null, null);
INSERT INTO `user` VALUES ('804', 'wall800', null, null);
INSERT INTO `user` VALUES ('805', 'wall801', null, null);
INSERT INTO `user` VALUES ('806', 'wall802', null, null);
INSERT INTO `user` VALUES ('807', 'wall803', null, null);
INSERT INTO `user` VALUES ('808', 'wall804', null, null);
INSERT INTO `user` VALUES ('809', 'wall805', null, null);
INSERT INTO `user` VALUES ('810', 'wall806', null, null);
INSERT INTO `user` VALUES ('811', 'wall807', null, null);
INSERT INTO `user` VALUES ('812', 'wall808', null, null);
INSERT INTO `user` VALUES ('813', 'wall809', null, null);
INSERT INTO `user` VALUES ('814', 'wall810', null, null);
INSERT INTO `user` VALUES ('815', 'wall811', null, null);
INSERT INTO `user` VALUES ('816', 'wall812', null, null);
INSERT INTO `user` VALUES ('817', 'wall813', null, null);
INSERT INTO `user` VALUES ('818', 'wall814', null, null);
INSERT INTO `user` VALUES ('819', 'wall815', null, null);
INSERT INTO `user` VALUES ('820', 'wall816', null, null);
INSERT INTO `user` VALUES ('821', 'wall817', null, null);
INSERT INTO `user` VALUES ('822', 'wall818', null, null);
INSERT INTO `user` VALUES ('823', 'wall819', null, null);
INSERT INTO `user` VALUES ('824', 'wall820', null, null);
INSERT INTO `user` VALUES ('825', 'wall821', null, null);
INSERT INTO `user` VALUES ('826', 'wall822', null, null);
INSERT INTO `user` VALUES ('827', 'wall823', null, null);
INSERT INTO `user` VALUES ('828', 'wall824', null, null);
INSERT INTO `user` VALUES ('829', 'wall825', null, null);
INSERT INTO `user` VALUES ('830', 'wall826', null, null);
INSERT INTO `user` VALUES ('831', 'wall827', null, null);
INSERT INTO `user` VALUES ('832', 'wall828', null, null);
INSERT INTO `user` VALUES ('833', 'wall829', null, null);
INSERT INTO `user` VALUES ('834', 'wall830', null, null);
INSERT INTO `user` VALUES ('835', 'wall831', null, null);
INSERT INTO `user` VALUES ('836', 'wall832', null, null);
INSERT INTO `user` VALUES ('837', 'wall833', null, null);
INSERT INTO `user` VALUES ('838', 'wall834', null, null);
INSERT INTO `user` VALUES ('839', 'wall835', null, null);
INSERT INTO `user` VALUES ('840', 'wall836', null, null);
INSERT INTO `user` VALUES ('841', 'wall837', null, null);
INSERT INTO `user` VALUES ('842', 'wall838', null, null);
INSERT INTO `user` VALUES ('843', 'wall839', null, null);
INSERT INTO `user` VALUES ('844', 'wall840', null, null);
INSERT INTO `user` VALUES ('845', 'wall841', null, null);
INSERT INTO `user` VALUES ('846', 'wall842', null, null);
INSERT INTO `user` VALUES ('847', 'wall843', null, null);
INSERT INTO `user` VALUES ('848', 'wall844', null, null);
INSERT INTO `user` VALUES ('849', 'wall845', null, null);
INSERT INTO `user` VALUES ('850', 'wall846', null, null);
INSERT INTO `user` VALUES ('851', 'wall847', null, null);
INSERT INTO `user` VALUES ('852', 'wall848', null, null);
INSERT INTO `user` VALUES ('853', 'wall849', null, null);
INSERT INTO `user` VALUES ('854', 'wall850', null, null);
INSERT INTO `user` VALUES ('855', 'wall851', null, null);
INSERT INTO `user` VALUES ('856', 'wall852', null, null);
INSERT INTO `user` VALUES ('857', 'wall853', null, null);
INSERT INTO `user` VALUES ('858', 'wall854', null, null);
INSERT INTO `user` VALUES ('859', 'wall855', null, null);
INSERT INTO `user` VALUES ('860', 'wall856', null, null);
INSERT INTO `user` VALUES ('861', 'wall857', null, null);
INSERT INTO `user` VALUES ('862', 'wall858', null, null);
INSERT INTO `user` VALUES ('863', 'wall859', null, null);
INSERT INTO `user` VALUES ('864', 'wall860', null, null);
INSERT INTO `user` VALUES ('865', 'wall861', null, null);
INSERT INTO `user` VALUES ('866', 'wall862', null, null);
INSERT INTO `user` VALUES ('867', 'wall863', null, null);
INSERT INTO `user` VALUES ('868', 'wall864', null, null);
INSERT INTO `user` VALUES ('869', 'wall865', null, null);
INSERT INTO `user` VALUES ('870', 'wall866', null, null);
INSERT INTO `user` VALUES ('871', 'wall867', null, null);
INSERT INTO `user` VALUES ('872', 'wall868', null, null);
INSERT INTO `user` VALUES ('873', 'wall869', null, null);
INSERT INTO `user` VALUES ('874', 'wall870', null, null);
INSERT INTO `user` VALUES ('875', 'wall871', null, null);
INSERT INTO `user` VALUES ('876', 'wall872', null, null);
INSERT INTO `user` VALUES ('877', 'wall873', null, null);
INSERT INTO `user` VALUES ('878', 'wall874', null, null);
INSERT INTO `user` VALUES ('879', 'wall875', null, null);
INSERT INTO `user` VALUES ('880', 'wall876', null, null);
INSERT INTO `user` VALUES ('881', 'wall877', null, null);
INSERT INTO `user` VALUES ('882', 'wall878', null, null);
INSERT INTO `user` VALUES ('883', 'wall879', null, null);
INSERT INTO `user` VALUES ('884', 'wall880', null, null);
INSERT INTO `user` VALUES ('885', 'wall881', null, null);
INSERT INTO `user` VALUES ('886', 'wall882', null, null);
INSERT INTO `user` VALUES ('887', 'wall883', null, null);
INSERT INTO `user` VALUES ('888', 'wall884', null, null);
INSERT INTO `user` VALUES ('889', 'wall885', null, null);
INSERT INTO `user` VALUES ('890', 'wall886', null, null);
INSERT INTO `user` VALUES ('891', 'wall887', null, null);
INSERT INTO `user` VALUES ('892', 'wall888', null, null);
INSERT INTO `user` VALUES ('893', 'wall889', null, null);
INSERT INTO `user` VALUES ('894', 'wall890', null, null);
INSERT INTO `user` VALUES ('895', 'wall891', null, null);
INSERT INTO `user` VALUES ('896', 'wall892', null, null);
INSERT INTO `user` VALUES ('897', 'wall893', null, null);
INSERT INTO `user` VALUES ('898', 'wall894', null, null);
INSERT INTO `user` VALUES ('899', 'wall895', null, null);
INSERT INTO `user` VALUES ('900', 'wall896', null, null);
INSERT INTO `user` VALUES ('901', 'wall897', null, null);
INSERT INTO `user` VALUES ('902', 'wall898', null, null);
INSERT INTO `user` VALUES ('903', 'wall899', null, null);
INSERT INTO `user` VALUES ('904', 'wall900', null, null);
INSERT INTO `user` VALUES ('905', 'wall901', null, null);
INSERT INTO `user` VALUES ('906', 'wall902', null, null);
INSERT INTO `user` VALUES ('907', 'wall903', null, null);
INSERT INTO `user` VALUES ('908', 'wall904', null, null);
INSERT INTO `user` VALUES ('909', 'wall905', null, null);
INSERT INTO `user` VALUES ('910', 'wall906', null, null);
INSERT INTO `user` VALUES ('911', 'wall907', null, null);
INSERT INTO `user` VALUES ('912', 'wall908', null, null);
INSERT INTO `user` VALUES ('913', 'wall909', null, null);
INSERT INTO `user` VALUES ('914', 'wall910', null, null);
INSERT INTO `user` VALUES ('915', 'wall911', null, null);
INSERT INTO `user` VALUES ('916', 'wall912', null, null);
INSERT INTO `user` VALUES ('917', 'wall913', null, null);
INSERT INTO `user` VALUES ('918', 'wall914', null, null);
INSERT INTO `user` VALUES ('919', 'wall915', null, null);
INSERT INTO `user` VALUES ('920', 'wall916', null, null);
INSERT INTO `user` VALUES ('921', 'wall917', null, null);
INSERT INTO `user` VALUES ('922', 'wall918', null, null);
INSERT INTO `user` VALUES ('923', 'wall919', null, null);
INSERT INTO `user` VALUES ('924', 'wall920', null, null);
INSERT INTO `user` VALUES ('925', 'wall921', null, null);
INSERT INTO `user` VALUES ('926', 'wall922', null, null);
INSERT INTO `user` VALUES ('927', 'wall923', null, null);
INSERT INTO `user` VALUES ('928', 'wall924', null, null);
INSERT INTO `user` VALUES ('929', 'wall925', null, null);
INSERT INTO `user` VALUES ('930', 'wall926', null, null);
INSERT INTO `user` VALUES ('931', 'wall927', null, null);
INSERT INTO `user` VALUES ('932', 'wall928', null, null);
INSERT INTO `user` VALUES ('933', 'wall929', null, null);
INSERT INTO `user` VALUES ('934', 'wall930', null, null);
INSERT INTO `user` VALUES ('935', 'wall931', null, null);
INSERT INTO `user` VALUES ('936', 'wall932', null, null);
INSERT INTO `user` VALUES ('937', 'wall933', null, null);
INSERT INTO `user` VALUES ('938', 'wall934', null, null);
INSERT INTO `user` VALUES ('939', 'wall935', null, null);
INSERT INTO `user` VALUES ('940', 'wall936', null, null);
INSERT INTO `user` VALUES ('941', 'wall937', null, null);
INSERT INTO `user` VALUES ('942', 'wall938', null, null);
INSERT INTO `user` VALUES ('943', 'wall939', null, null);
INSERT INTO `user` VALUES ('944', 'wall940', null, null);
INSERT INTO `user` VALUES ('945', 'wall941', null, null);
INSERT INTO `user` VALUES ('946', 'wall942', null, null);
INSERT INTO `user` VALUES ('947', 'wall943', null, null);
INSERT INTO `user` VALUES ('948', 'wall944', null, null);
INSERT INTO `user` VALUES ('949', 'wall945', null, null);
INSERT INTO `user` VALUES ('950', 'wall946', null, null);
INSERT INTO `user` VALUES ('951', 'wall947', null, null);
INSERT INTO `user` VALUES ('952', 'wall948', null, null);
INSERT INTO `user` VALUES ('953', 'wall949', null, null);
INSERT INTO `user` VALUES ('954', 'wall950', null, null);
INSERT INTO `user` VALUES ('955', 'wall951', null, null);
INSERT INTO `user` VALUES ('956', 'wall952', null, null);
INSERT INTO `user` VALUES ('957', 'wall953', null, null);
INSERT INTO `user` VALUES ('958', 'wall954', null, null);
INSERT INTO `user` VALUES ('959', 'wall955', null, null);
INSERT INTO `user` VALUES ('960', 'wall956', null, null);
INSERT INTO `user` VALUES ('961', 'wall957', null, null);
INSERT INTO `user` VALUES ('962', 'wall958', null, null);
INSERT INTO `user` VALUES ('963', 'wall959', null, null);
INSERT INTO `user` VALUES ('964', 'wall960', null, null);
INSERT INTO `user` VALUES ('965', 'wall961', null, null);
INSERT INTO `user` VALUES ('966', 'wall962', null, null);
INSERT INTO `user` VALUES ('967', 'wall963', null, null);
INSERT INTO `user` VALUES ('968', 'wall964', null, null);
INSERT INTO `user` VALUES ('969', 'wall965', null, null);
INSERT INTO `user` VALUES ('970', 'wall966', null, null);
INSERT INTO `user` VALUES ('971', 'wall967', null, null);
INSERT INTO `user` VALUES ('972', 'wall968', null, null);
INSERT INTO `user` VALUES ('973', 'wall969', null, null);
INSERT INTO `user` VALUES ('974', 'wall970', null, null);
INSERT INTO `user` VALUES ('975', 'wall971', null, null);
INSERT INTO `user` VALUES ('976', 'wall972', null, null);
INSERT INTO `user` VALUES ('977', 'wall973', null, null);
INSERT INTO `user` VALUES ('978', 'wall974', null, null);
INSERT INTO `user` VALUES ('979', 'wall975', null, null);
INSERT INTO `user` VALUES ('980', 'wall976', null, null);
INSERT INTO `user` VALUES ('981', 'wall977', null, null);
INSERT INTO `user` VALUES ('982', 'wall978', null, null);
INSERT INTO `user` VALUES ('983', 'wall979', null, null);
INSERT INTO `user` VALUES ('984', 'wall980', null, null);
INSERT INTO `user` VALUES ('985', 'wall981', null, null);
INSERT INTO `user` VALUES ('986', 'wall982', null, null);
INSERT INTO `user` VALUES ('987', 'wall983', null, null);
INSERT INTO `user` VALUES ('988', 'wall984', null, null);
INSERT INTO `user` VALUES ('989', 'wall985', null, null);
INSERT INTO `user` VALUES ('990', 'wall986', null, null);
INSERT INTO `user` VALUES ('991', 'wall987', null, null);
INSERT INTO `user` VALUES ('992', 'wall988', null, null);
INSERT INTO `user` VALUES ('993', 'wall989', null, null);
INSERT INTO `user` VALUES ('994', 'wall990', null, null);
INSERT INTO `user` VALUES ('995', 'wall991', null, null);
INSERT INTO `user` VALUES ('996', 'wall992', null, null);
INSERT INTO `user` VALUES ('997', 'wall993', null, null);
INSERT INTO `user` VALUES ('998', 'wall994', null, null);
INSERT INTO `user` VALUES ('999', 'wall995', null, null);
INSERT INTO `user` VALUES ('1000', 'wall996', null, null);
INSERT INTO `user` VALUES ('1001', 'wall997', null, null);
INSERT INTO `user` VALUES ('1002', 'wall998', null, null);
INSERT INTO `user` VALUES ('1003', 'wall999', null, null);
