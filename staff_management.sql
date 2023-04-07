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

 Date: 07/04/2023 10:01:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for staff_management
-- ----------------------------
DROP TABLE IF EXISTS `staff_management`;
CREATE TABLE `staff_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `experience` int(11) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff_management
-- ----------------------------
INSERT INTO `staff_management` VALUES (1, '张三', 32, '男', '兽医师', 5, '13912345678', '110101199001010001', '2020-01-01', '北京市', '本科');
INSERT INTO `staff_management` VALUES (2, '李四', 28, '女', '兽医师', 3, '13812345678', '310101199302020002', '2021-03-01', '上海市', '本科');
INSERT INTO `staff_management` VALUES (3, '王五', 25, '男', '实习兽医师', 1, '13712345678', '440101199610030003', '2020-03-01', '广东省', '大专');
INSERT INTO `staff_management` VALUES (4, '赵六', 35, '女', '助理兽医师', 8, '13612345678', '330101198612020004', '2021-09-01', '浙江省', '本科');
INSERT INTO `staff_management` VALUES (5, '钱七', 30, '男', '兽医护士', 5, '13512345678', '610101199107070005', '2021-09-01', '陕西省', '大专');
INSERT INTO `staff_management` VALUES (6, '孙八', 27, '女', '实习兽医护士', 2, '13412345678', '510101199412120006', '2021-09-01', '四川省', '本科');
INSERT INTO `staff_management` VALUES (7, '吴九', 29, '男', '兽医师', 4, '13312345678', '320101199207020007', '2021-09-01', '江苏省', '本科');
INSERT INTO `staff_management` VALUES (8, '郑十', 31, '女', '兽医护士', 6, '13212345678', '430101198902040008', '2021-09-01', '湖南省', '本科');
INSERT INTO `staff_management` VALUES (9, '刘十一', 24, '男', '实习兽医师', 1, '13112345678', '230101199912060009', '2021-09-01', '黑龙江省', '大专');
INSERT INTO `staff_management` VALUES (10, '张十二', 26, '女', '兽医护士', 4, '13012345678', '610101199710040010', '2021-09-01', '陕西省', '本科');

SET FOREIGN_KEY_CHECKS = 1;
