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

 Date: 07/04/2023 10:01:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for inpatient_management
-- ----------------------------
DROP TABLE IF EXISTS `inpatient_management`;
CREATE TABLE `inpatient_management`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `breed` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admission` date NULL DEFAULT NULL,
  `discharge` date NULL DEFAULT NULL,
  `day` int(11) NULL DEFAULT NULL,
  `cost` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inpatient_management
-- ----------------------------
INSERT INTO `inpatient_management` VALUES (1, '小猫', '苏格兰折耳猫', '张三', '13912345678', '感冒', '2023-03-01', '2023-03-04', 3, 500.00);
INSERT INTO `inpatient_management` VALUES (2, '小狗', '拉布拉多', '李四', '13698765432', '创伤', '2023-03-03', '2023-03-08', 5, 1200.00);
INSERT INTO `inpatient_management` VALUES (3, '小鸟', '金丝雀', '王五', '18011112222', '消化不良', '2023-03-05', '2023-03-07', 2, 300.00);
INSERT INTO `inpatient_management` VALUES (4, '小兔', '荷兰侏儒兔', '赵六', '010-88888888', '发烧', '2023-03-06', '2023-03-11', 5, 800.00);
INSERT INTO `inpatient_management` VALUES (5, '小龟', '红耳龟', '钱七', '0755-12345678', '腹泻', '2023-03-09', '2023-03-15', 6, 900.00);
INSERT INTO `inpatient_management` VALUES (6, '小鱼', '金鱼', '张三', '13912345678', '中毒', '2023-03-11', '2023-03-12', 1, 100.00);
INSERT INTO `inpatient_management` VALUES (7, '小猫', '苏格兰折耳猫', '李四', '13698765432', '感冒', '2023-03-15', '2023-03-18', 3, 500.00);
INSERT INTO `inpatient_management` VALUES (8, '小狗', '拉布拉多', '王五', '18011112222', '骨折', '2023-03-18', '2023-03-27', 9, 2000.00);
INSERT INTO `inpatient_management` VALUES (9, '小鸟', '金丝雀', '赵六', '010-88888888', '感冒', '2023-03-20', '2023-03-24', 4, 600.00);

SET FOREIGN_KEY_CHECKS = 1;
