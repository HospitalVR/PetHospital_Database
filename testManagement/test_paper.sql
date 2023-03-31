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

 Date: 31/03/2023 09:19:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test_paper
-- ----------------------------
DROP TABLE IF EXISTS `test_paper`;
CREATE TABLE `test_paper`  (
  `test_id` int(11) NOT NULL,
  `paper_id` int(11) NOT NULL,
  INDEX `test_paper_ibfk_1`(`test_id`) USING BTREE,
  INDEX `test_paper_ibfk_2`(`paper_id`) USING BTREE,
  CONSTRAINT `test_paper_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `test_paper_ibfk_2` FOREIGN KEY (`paper_id`) REFERENCES `paper` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES (63, 1);
INSERT INTO `test_paper` VALUES (64, 1);
INSERT INTO `test_paper` VALUES (65, 1);

SET FOREIGN_KEY_CHECKS = 1;
