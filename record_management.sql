/*
 Navicat Premium Data Transfer

 Source Server         : pet
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : hospital

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 07/04/2023 10:32:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for record_management
-- ----------------------------
DROP TABLE IF EXISTS `record_management`;
CREATE TABLE `record_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `breed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_management
-- ----------------------------
INSERT INTO `record_management` VALUES (1, '小明', '猫', 1, '母', '灰色', '张三', '13912345678');
INSERT INTO `record_management` VALUES (2, '小白', '狗', 2, '公', '黑色', '李四', '13698765432');
INSERT INTO `record_management` VALUES (3, '小红', '兔子', 3, '母', '棕色', '王五', '18011112222');
INSERT INTO `record_management` VALUES (4, '小黑', '狗', 2, '公', '白色', '赵六', '010-88888888');
INSERT INTO `record_management` VALUES (5, '小花', '猫', 1, '母', '黑色', '钱七', '0755-12345678');
INSERT INTO `record_management` VALUES (6, '小光', '狗', 2, '公', '棕色', '张三', '13912345678');
INSERT INTO `record_management` VALUES (7, '小龙', '爬行类', 3, '未知', '绿色', '李四', '13698765432');
INSERT INTO `record_management` VALUES (8, '小虎', '狗', 2, '公', '灰色', '王五', '18011112222');
INSERT INTO `record_management` VALUES (9, '小鸟', '鸟类', 4, '母', '彩色', '赵六', '010-88888888');
INSERT INTO `record_management` VALUES (10, '小熊', '狗', 5, '公', '棕色', '钱七', '0755-12345678');

SET FOREIGN_KEY_CHECKS = 1;
