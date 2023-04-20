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

 Date: 19/04/2023 16:52:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `A_choice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `B_choice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `C_choice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `D_choice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '雏鸡出现持续性喷嚏、呼吸急促、眼部浮肿、腹泻等症状，可能患上下列哪种疾病？', '禽流感', '鸡传染性鼻气管炎', '禽蓝耳病', '新城疫', 'B', '传染病', 10);
INSERT INTO `question` VALUES (2, '犬只突然出现高烧、食欲不振、咳嗽、呼吸急促等症状，可能患上下列哪种疾病？', '犬细小病毒病', '犬瘟热', '犬传染性肝炎', '犬冠状病毒病', 'B', '传染病', 10);
INSERT INTO `question` VALUES (3, '猫咪因摄食生食或半生食肉类食品，导致感染胃肠道绦虫，应该采取哪种治疗方式？', '使用驱虫药片口服', '使用驱虫注射剂', '使用顺势疗法进行治疗', '使用手术切除虫体', 'A', '寄生虫病', 10);
INSERT INTO `question` VALUES (4, '狗狗在户外活动过程中被蜱虫叮咬，导致感染布氏杆菌，出现高热、呕吐、腹泻等症状，应该采取哪种治疗方式？ 使用抗生素治疗', ' 使用抗生素治疗', '使用驱虫药进行治疗', '使用营养支持疗法进行治疗', '使用手术切除病变组织', 'A', '寄生虫病', 10);
INSERT INTO `question` VALUES (5, '猫咪突然出现精神不振、食欲不振、腹泻等症状，可能患上下列哪种疾病？', '猫传染性腹膜炎', '猫呼吸系统疾病', '猫感冒', '猫细菌性感染', 'A', '内科', 10);
INSERT INTO `question` VALUES (6, '狗狗长期摄食高盐、高脂肪食物，导致出现脱水、多饮、多尿、皮肤瘙痒等症状，可能患上下列哪种疾病？', '犬皮肤病', '犬糖尿病', '犬肾脏疾病', ' 犬心脏病', 'B', '内科', 10);
INSERT INTO `question` VALUES (7, '猫咪出现消瘦、呕吐、腹泻、黄疸等症状，可能患上下列哪种疾病？', '猫肝病', '猫胰腺炎', '猫肾病', '猫心脏病', 'A', '内科', 10);
INSERT INTO `question` VALUES (8, '狗狗长期跑步、跳跃等活动后，出现后肢跛行、疼痛等症状，可能患上下列哪种疾病？犬髋关节不全发育', '犬髋关节不全发育', '犬跟腱断裂', '犬膝关节翻转', '犬膝关节韧带断裂', 'D', '外产科疾病', 10);
INSERT INTO `question` VALUES (9, '猫咪突然出现眼睛流泪、结膜充血、眼结石等症状，可能患上下列哪种疾病？', '猫白内障', '猫眼睑炎', '猫结膜炎', '猫角膜炎', 'C', '外产科疾病', 10);
INSERT INTO `question` VALUES (10, '狗狗突然出现呕吐、腹泻、腹部胀痛等症状，经检查发现患有胃扭转，应该采取哪种手术治疗方式？', '胃部切除术', '腹腔镜手术', '胃复位手术', '腹膜透析手术', 'C', '常用手术', 10);
INSERT INTO `question` VALUES (11, '狗狗刚刚接种了疫苗，主人应该如何照顾狗狗？', '让狗狗多吃鸡肉和牛肉，以促进身体恢复', '将狗狗隔离在一个安静的环境中，不要让它过度活动', '给狗狗服用解热镇痛药，以减轻不适', '给狗狗洗个澡，以保持清洁', 'B', '免疫', 10);
INSERT INTO `question` VALUES (12, '狗狗接种疫苗后，出现了局部肿胀、疼痛等症状，这种现象被称为什么？', '疫苗反应', '疫苗过敏', '疫苗感染', '疫苗失效', 'A', '免疫', 10);
INSERT INTO `question` VALUES (13, '宠物出现频繁排尿、尿液深黄色、甚至出现血尿，可能患有以下哪种疾病？', '膀胱炎', '肾炎', '糖尿病', '有机磷中毒', 'A', '内科', 10);
INSERT INTO `question` VALUES (14, '宠物出现口渴、多尿、食欲减退、体重下降等症状，可能患有以下哪种疾病？', '膀胱炎', '肾炎', '糖尿病', '有机磷中毒', 'C', '内科', 10);
INSERT INTO `question` VALUES (15, '宠物出现腰部疼痛、站立不稳、尿液囊块，可能患有以下哪种疾病？', '尿结石', '膀胱炎', '肾炎', '佝偻病', 'A', '内科', 10);
INSERT INTO `question` VALUES (16, '宠物出现发热、食欲不振、呕吐、腹泻等症状，可能患有以下哪种疾病？', '尿结石', '膀胱炎', '中耳炎', '结膜炎', 'B', '内科', 10);
INSERT INTO `question` VALUES (17, '宠物出现恶心、呕吐、食欲不振、口臭等症状，可能患有以下哪种疾病？', '肾炎', '糖尿病', '膀胱炎', ' 耳血肿', 'A', '内科', 10);
INSERT INTO `question` VALUES (18, '宠物出现头痛、眼睛发红、角膜炎、眼屎等症状，可能患有以下哪种疾病？', '眼睑内翻', '结膜炎', '中耳炎', '耳血肿', 'B', '内科', 10);
INSERT INTO `question` VALUES (19, '宠物出现无力、呼吸困难、出汗过多、瞳孔散大等症状，可能患有以下哪种疾病？', '膀胱炎', '中耳炎', '有机磷中毒', '耳血肿', 'C', '内科', 10);
INSERT INTO `question` VALUES (20, '宠物出现外伤、淤血、出血等症状，可能患有以下哪种疾病？', '趾间囊肿', '骨折', '关节脱位', '外科感染', 'C', '外产科疾病', 10);
INSERT INTO `question` VALUES (21, '宠物出现明显的骨折、疼痛、无法支撑体重等症状，可能患有以下哪种疾病？', '骨折', '关节脱位', '外伤', '脓皮病', 'A', '外产科疾病', 10);
INSERT INTO `question` VALUES (22, '宠物出现肩膀或臀部脱位、关节疼痛等症状，可能患有以下哪种疾病？', '骨折', '关节脱位', '外伤', '皮炎', 'B', '外产科疾病', 10);
INSERT INTO `question` VALUES (23, '宠物出现皮肤瘙痒、红斑、水疱、糜烂等症状，可能患有以下哪种疾病？', '湿疹', '皮炎', '脓皮病', '脱毛症', 'A', '外产科疾病', 10);
INSERT INTO `question` VALUES (24, '宠物出现皮肤发红、瘙痒、毛发脱落、皮肤糜烂等症状，可能患有以下哪种疾病？', '湿疹', '皮炎', '脓皮病', '脱毛症', 'B', '外产科疾病', 10);
INSERT INTO `question` VALUES (25, '宠物出现乳头红肿、硬结、分泌物增多等症状，可能患有以下哪种疾病？', '乳房炎', '阴道炎', '阴道脱出', '子宫蓄脓', 'A', '外产科疾病', 10);
INSERT INTO `question` VALUES (26, '宠物出现肛门周围隆起、疼痛、排便不畅等症状，可能患有以下哪种疾病？', '疝', '难产', '外科', '阴道脱出', 'A', '外产科疾病', 10);
INSERT INTO `question` VALUES (27, '宠物出现阴道流脓、瘙痒、尿频、尿急等症状，可能患有以下哪种疾病？', '乳房炎', '乳房炎', '阴道脱出', '子宫蓄脓', 'B', '外产科疾病', 10);
INSERT INTO `question` VALUES (28, '宠物出现发热、咳嗽、流眼泪、鼻涕等症状，可能患有以下哪种疾病？', '犬瘟热', '犬传染性肝炎', '犬冠状病毒', '犬细小病毒', 'D', '传染病', 10);
INSERT INTO `question` VALUES (29, '宠物出现发热、腹泻、呕吐、食欲不振等症状，可能患有以下哪种疾病？', '犬瘟热', '犬传染性肝炎', '犬冠状病毒', '犬细小病毒', 'B', '传染病', 10);
INSERT INTO `question` VALUES (30, '宠物出现腹泻、呕吐、流口水、发热等症状，可能患有以下哪种疾病？', '犬瘟热', '犬传染性肝炎', '犬冠状病毒', '犬细小病毒', 'C', '传染病', 10);
INSERT INTO `question` VALUES (31, '宠物出现打喷嚏、咳嗽、流鼻涕、呼吸困难等症状，可能患有以下哪种疾病？', '犬瘟热', '犬传染性肝炎', '犬冠状病毒', '犬细小病毒', 'C', '传染病', 10);
INSERT INTO `question` VALUES (32, '宠物出现贫血、发热、食欲不振等症状，可能患有以下哪种疾病？', '猫泛白细胞减少症', '猫病毒性病气管炎', '皮肤真菌感染', '犬瘟热', 'A', '传染病', 10);
INSERT INTO `question` VALUES (33, '宠物出现咳嗽、呼吸急促、发热、打喷嚏等症状，可能患有以下哪种疾病？', '猫泛白细胞减少症', '猫病毒性病气管炎', '皮肤真菌感染', '犬细小病毒', 'B', '传染病', 10);
INSERT INTO `question` VALUES (34, '以下哪种症状是猫白血病的常见表现？', '皮肤瘙痒和红肿', '呕吐和腹泻', '疲乏无力和食欲减退', '呼吸急促和发热', 'C', NULL, NULL);
INSERT INTO `question` VALUES (35, '以下哪种症状是猫白血病的常见表现？', '皮肤瘙痒和红肿', '呕吐和腹泻', '疲乏无力和食欲减退', '呼吸急促和发热', 'C', '传染病', 10);
INSERT INTO `question` VALUES (36, '以下哪种症状是猫传染性腹膜炎的表现？', '食欲减退和体重下降', '呼吸急促和发热', '呕吐和腹泻', '腹部肿胀和疼痛', 'D', '传染病', 10);
INSERT INTO `question` VALUES (37, '以下哪种症状是猫传染性鼻气管炎的表现？', '眼睛发红和流泪', '鼻涕和咳嗽', '皮肤瘙痒和头晕', '食欲减退和呕吐', 'B', '传染病', 10);

SET FOREIGN_KEY_CHECKS = 1;
