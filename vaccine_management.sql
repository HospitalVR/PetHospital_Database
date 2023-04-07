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

 Date: 07/04/2023 10:01:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vaccine_management
-- ----------------------------
DROP TABLE IF EXISTS `vaccine_management`;
CREATE TABLE `vaccine_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `animal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目标动物',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '疫苗类型',
  `method` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接种方法',
  `time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接种时间',
  `protection` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '保护期',
  `side_effects` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '副作用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vaccine_management
-- ----------------------------
INSERT INTO `vaccine_management` VALUES (1, '多价犬瘟热联合疫苗', '犬', '减毒活疫苗', '注射', '6-8周龄、12-16周龄、1岁后每年接种一次', '一年', '一般情况下无明显副作用，极少数狗狗可能会出现发热、厌食、呕吐等症状');
INSERT INTO `vaccine_management` VALUES (2, '狂犬病疫苗', '犬', '减毒活疫苗', '注射', '3-4个月龄开始接种，1岁后每年接种一次', '一年', '一般情况下无明显副作用，少数狗狗可能会出现注射部位肿胀、发热等症状');
INSERT INTO `vaccine_management` VALUES (3, '三联疫苗（猫瘟热、猫传染性腹膜炎、猫呼吸道病毒感染）', '猫', '减毒活疫苗', '注射', '8-12周龄、1岁后每年接种一次', '一年', '一般情况下无明显副作用，极少数猫咪可能会出现注射部位肿胀、发热、呕吐等症状');
INSERT INTO `vaccine_management` VALUES (4, '猫狂犬病疫苗', '猫', '减毒活疫苗', '注射', '3-4个月龄开始接种，1岁后每年接种一次', '一年', '一般情况下无明显副作用，少数猫咪可能会出现注射部位肿胀、发热等症状');
INSERT INTO `vaccine_management` VALUES (5, '弓形虫疫苗', '犬、猫', '杀死细胞疫苗', '注射', '接种时间因动物品种、年龄、疾病状态等而异', '一年', '一般情况下无明显副作用，极少数动物可能会出现注射部位肿胀、发热等症状');
INSERT INTO `vaccine_management` VALUES (6, '细小病毒疫苗', '犬', '减毒活疫苗', '鼻腔滴入', '6-8周龄、10-12周龄、14-16周龄，1岁后每年接种一次', '一年', '一般情况下无明显副作用，少数狗狗可能会出现打喷嚏、咳嗽等症状');
INSERT INTO `vaccine_management` VALUES (7, '犬肺炎疫苗', '犬', '灭活疫苗', '注射', '8-10周龄、12-14周龄、16-18周龄、20-22周龄，1岁后每年接种一次', '一年', '一般情况下无明显副作用，少数狗狗可能会出现注射部位肿胀、发热等症状');
INSERT INTO `vaccine_management` VALUES (9, '猫肺炎疫苗', '猫', '灭活疫苗', '注射', '8-10周龄、12-14周龄、16-18周龄，1岁后每年接种一次', '一年', '一般情况下无明显副作用，少数猫咪可能会出现注射部位肿胀、发热等症状');

SET FOREIGN_KEY_CHECKS = 1;
