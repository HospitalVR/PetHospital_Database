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

 Date: 07/04/2023 10:00:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for assay_management
-- ----------------------------
DROP TABLE IF EXISTS `assay_management`;
CREATE TABLE `assay_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(8, 2) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assay_management
-- ----------------------------
INSERT INTO `assay_management` VALUES (1, '血常规', 80.00, '检查白细胞、红细胞、血小板数量及形态等指标，可帮助诊断贫血、感染、肿瘤等疾病。');
INSERT INTO `assay_management` VALUES (2, '水、电解质检查', 120.00, '检查血液中的水分和各种离子浓度，可帮助诊断水中毒、电解质紊乱等疾病。');
INSERT INTO `assay_management` VALUES (3, '血糖检查', 50.00, '检查血液中的葡萄糖含量，可帮助诊断糖尿病等疾病。');
INSERT INTO `assay_management` VALUES (4, '肝功能检查', 150.00, '检查肝脏功能指标，可帮助诊断肝炎、肝硬化等疾病。');
INSERT INTO `assay_management` VALUES (5, '肾功能检查', 120.00, '检查肾脏功能指标，可帮助诊断肾炎、肾衰竭等疾病。');
INSERT INTO `assay_management` VALUES (6, '尿液检查', 60.00, '检查尿液中的各种化学成分和微生物，可帮助诊断泌尿系统疾病。');
INSERT INTO `assay_management` VALUES (7, '甲状腺功能检查', 100.00, '检查甲状腺激素水平，可帮助诊断甲状腺功能亢进或减退等疾病。');

SET FOREIGN_KEY_CHECKS = 1;
