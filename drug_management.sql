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

 Date: 07/04/2023 10:01:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for drug_management
-- ----------------------------
DROP TABLE IF EXISTS `drug_management`;
CREATE TABLE `drug_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drug_management
-- ----------------------------
INSERT INTO `drug_management` VALUES (1, '猫必妥', 80.00, '猫必妥是一种治疗猫咳嗽和喉咙痛的药品，主要成分为氢溴酸右美沙芬。');
INSERT INTO `drug_management` VALUES (2, '狗胃爽', 60.00, '狗胃爽是一种治疗狗胃肠道问题的药品，主要成分为蒲地蓝、半夏和生姜。');
INSERT INTO `drug_management` VALUES (3, '兔活力', 50.00, '兔活力是一种增强兔子体力和免疫力的药品，主要成分为维生素B12和钙。');
INSERT INTO `drug_management` VALUES (4, '鹦鹉止痛', 90.00, '鹦鹉止痛是一种治疗鹦鹉关节炎和疼痛的药品，主要成分为阿司匹林和对乙酰氨基酚。');
INSERT INTO `drug_management` VALUES (5, '鱼宝宝', 30.00, '鱼宝宝是一种治疗鱼类疾病的药品，主要成分为盐酸多西环素和氯化钾。');
INSERT INTO `drug_management` VALUES (6, '龟元气', 70.00, '龟元气是一种增强龟类体力和免疫力的药品，主要成分为蛋白质和膳食纤维。');
INSERT INTO `drug_management` VALUES (7, '鸟免疫宝', 100.00, '鸟免疫宝是一种增强鸟类免疫力的药品，主要成分为维生素C和铁。');
INSERT INTO `drug_management` VALUES (8, '狗止痒', 45.00, '狗止痒是一种治疗狗皮肤瘙痒的药品，主要成分为石墨烯和硫磺。');
INSERT INTO `drug_management` VALUES (106, '新的', 12.00, '没什么用');

SET FOREIGN_KEY_CHECKS = 1;
