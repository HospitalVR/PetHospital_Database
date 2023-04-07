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

 Date: 07/04/2023 10:00:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charge_management
-- ----------------------------
DROP TABLE IF EXISTS `charge_management`;
CREATE TABLE `charge_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charge_management
-- ----------------------------
INSERT INTO `charge_management` VALUES (1, '普通诊察', 50.00, '包括体检、病史询问、初步诊断等');
INSERT INTO `charge_management` VALUES (2, '急诊诊察', 100.00, '包括紧急情况下的体检、病史询问、初步诊断等');
INSERT INTO `charge_management` VALUES (3, '疫苗接种', 80.00, '包括疫苗费用及接种费用');
INSERT INTO `charge_management` VALUES (4, '细菌学检查', 200.00, '包括细菌学检查费用、样本采集费用等');
INSERT INTO `charge_management` VALUES (5, '血液学检查', 300.00, '包括血液学检查费用、样本采集费用等');
INSERT INTO `charge_management` VALUES (6, '彩超检查', 500.00, '包括彩超检查费用、样本采集费用等');
INSERT INTO `charge_management` VALUES (8, '手术（肠胃疾病）', 1500.00, '包括手术费用、麻醉费用、住院费用等');
INSERT INTO `charge_management` VALUES (9, '住院（每天）', 500.00, '包括住院费用、护理费用等');
INSERT INTO `charge_management` VALUES (10, '特殊治疗', 1000.00, '包括特殊治疗费用、药品费用等');

SET FOREIGN_KEY_CHECKS = 1;
