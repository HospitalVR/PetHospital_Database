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

 Date: 31/03/2023 09:19:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for paper_question
-- ----------------------------
DROP TABLE IF EXISTS `paper_question`;
CREATE TABLE `paper_question`  (
  `paper_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  INDEX `paper_id`(`paper_id`) USING BTREE,
  INDEX `question_id`(`question_id`) USING BTREE,
  CONSTRAINT `paper_question_ibfk_1` FOREIGN KEY (`paper_id`) REFERENCES `paper` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `paper_question_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper_question
-- ----------------------------
INSERT INTO `paper_question` VALUES (6, 1);
INSERT INTO `paper_question` VALUES (6, 2);
INSERT INTO `paper_question` VALUES (6, 3);
INSERT INTO `paper_question` VALUES (1, 1);
INSERT INTO `paper_question` VALUES (1, 2);
INSERT INTO `paper_question` VALUES (1, 3);

SET FOREIGN_KEY_CHECKS = 1;
