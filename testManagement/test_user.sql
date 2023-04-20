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

 Date: 19/04/2023 16:53:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test_user
-- ----------------------------
DROP TABLE IF EXISTS `test_user`;
CREATE TABLE `test_user`  (
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  INDEX `test_id`(`test_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_user
-- ----------------------------
INSERT INTO `test_user` VALUES (63, 2);
INSERT INTO `test_user` VALUES (63, 3);
INSERT INTO `test_user` VALUES (64, 2);
INSERT INTO `test_user` VALUES (64, 3);
INSERT INTO `test_user` VALUES (65, 2);
INSERT INTO `test_user` VALUES (65, 3);
INSERT INTO `test_user` VALUES (66, 3);
INSERT INTO `test_user` VALUES (67, 3);

SET FOREIGN_KEY_CHECKS = 1;
