/*
 Navicat MySQL Data Transfer

 Source Server         : pethostpital
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : hospital

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 31/03/2023 09:19:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (63, '2023-03-31 08:57:49', '2023-03-31 08:57:49');
INSERT INTO `test` VALUES (64, '2023-03-31 08:57:51', '2023-03-31 08:57:51');
INSERT INTO `test` VALUES (65, '2023-03-31 08:58:41', '2023-03-31 08:58:41');

SET FOREIGN_KEY_CHECKS = 1;
