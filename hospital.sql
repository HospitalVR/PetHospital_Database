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

 Date: 14/04/2023 09:12:39
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

-- ----------------------------
-- Table structure for case_management
-- ----------------------------
DROP TABLE IF EXISTS `case_management`;
CREATE TABLE `case_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '疾病名称',
  `name2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `treat1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接诊文本',
  `treat2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `treat3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `check1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '病例检查',
  `check2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `check3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '诊断结果',
  `result2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plan1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '治疗方案',
  `plan2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plan3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of case_management
-- ----------------------------
INSERT INTO `case_management` VALUES (5, '免疫系统疾病', '猫白血病', NULL, NULL, '一只4岁的英国短毛猫，主人反映最近食欲不振、体重下降，体温升高。', NULL, NULL, '血液检查发现白细胞计数异常，猫白血病病毒检测呈阳性。', NULL, NULL, '猫白血病。', NULL, NULL, '给予免疫抑制剂、抗病毒药物等治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (6, '神经系统疾病', '犬癫痫', NULL, NULL, '一只3岁的贵宾犬，主人反映最近出现意识丧失、抽搐等症状。', NULL, NULL, '宠物CT检查发现大脑部分区域异常，脑电图检查发现脑电波异常。', NULL, NULL, '犬癫痫。', NULL, NULL, '给予抗癫痫药物等治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (7, '消化系统疾病', '猫饮食障碍', NULL, NULL, '一只6岁的美国短毛猫，主人反映最近食欲减退、腹胀等症状。', NULL, NULL, '腹部X光检查发现肠道积气、消化不良。', NULL, NULL, '猫饮食障碍。', NULL, NULL, '给予肠道促动剂、饮食调节等治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (8, '肝脏疾病', '犬肝病', NULL, NULL, '一只5岁的德国牧羊犬，主人反映最近食欲不振、体重下降，口腔出血。', NULL, NULL, '血液检查发现肝功能异常，肝脏超声检查发现肝脏受损。', NULL, NULL, '犬肝病。', NULL, NULL, '给予肝脏保护剂、营养支持等治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (9, '传染病', '犬瘟', NULL, NULL, '一只2岁的贵宾犬，主人反映犬只精神不振，食欲不佳，眼睛发红。', NULL, NULL, '犬只体温升高，呼吸急促，喉部有干咳声，眼结膜充血。血液检查发现白细胞和淋巴细胞明显下降。', NULL, NULL, '犬瘟', NULL, NULL, '给予营养支持和抗病毒治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (10, '口腔疾病', '犬口炎', NULL, NULL, '一只3岁的比熊犬，主人反映犬只最近不愿意进食，口臭严重。', NULL, NULL, '口腔检查发现口腔黏膜充血、溃疡，并有牙龈出血。', NULL, NULL, '犬口炎', NULL, NULL, '给予口腔抗生素、止痛药等治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (11, '传染病', '猫传染性腹膜炎', NULL, NULL, '一只4岁的短毛猫，主人反映猫只最近食欲下降，呕吐。', NULL, NULL, '猫只腹部触诊明显有液体积聚，腹部X光检查发现腹膜间隙明显增宽。', NULL, NULL, '猫传染性腹膜炎', NULL, NULL, '给予抗生素、营养支持等治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (12, '其他', '猫脱水症', NULL, NULL, '一只1岁的美国短毛猫，主人反映猫只最近排尿减少，食欲下降，精神萎靡。', NULL, NULL, '猫只脱水，口腔粘膜干燥，皮肤弹性差。', NULL, NULL, '猫脱水症', NULL, NULL, '给予补液治疗，并寻找病因。', NULL, NULL);
INSERT INTO `case_management` VALUES (13, '犬外伤', '犬骨折', NULL, NULL, '一只2岁的金毛犬，左后腿跛行，主人反映曾有重物压到其身上', NULL, NULL, 'X光检查显示左腿骨折', NULL, NULL, '犬骨折', NULL, NULL, '给予固定支架固定，定期更换', NULL, NULL);
INSERT INTO `case_management` VALUES (14, '犬消化系统疾病', '犬急性胰腺炎', NULL, NULL, '一只5岁的贵宾犬，主人反映犬只最近食欲不振、呕吐、腹泻', NULL, NULL, '血液检查显示胰腺酶升高', NULL, NULL, '犬急性胰腺炎', NULL, NULL, '禁食，给予营养支持、抗生素、胰酶抑制剂等治疗', NULL, NULL);
INSERT INTO `case_management` VALUES (15, '猫内分泌疾病', '猫糖尿病', NULL, NULL, '一只7岁的橘猫，主人反映猫只最近饮水量增加、食欲不振', NULL, NULL, '血液检查显示血糖升高', NULL, NULL, '猫糖尿病', NULL, NULL, '控制饮食，给予胰岛素注射治疗', NULL, NULL);
INSERT INTO `case_management` VALUES (16, '犬口腔疾病', '犬口腔溃疡', NULL, NULL, '一只3岁的比熊犬，主人反映犬只口腔内有明显溃疡', NULL, NULL, '口腔检查显示口腔黏膜溃疡', NULL, NULL, '犬口腔溃疡', NULL, NULL, '给予口腔抗炎药、口腔清洁液等治疗', NULL, NULL);
INSERT INTO `case_management` VALUES (17, '猫呼吸道疾病', '猫感冒', NULL, NULL, '一只1岁的蓝猫，主人反映猫只最近打喷嚏、流涕、食欲不振', NULL, NULL, '呼吸道检查发现鼻腔充血', NULL, NULL, '猫感冒', NULL, NULL, '给予抗生素、退热药等治疗，避免着凉', NULL, NULL);
INSERT INTO `case_management` VALUES (18, '犬传染病', '犬瘟热', NULL, NULL, '一只3个月大的哈士奇犬，主人反映犬只出现发热、咳嗽、流涕等症状。', NULL, NULL, '血液检查发现白细胞和血小板减少，病毒核酸检测呈阳性。', NULL, NULL, '犬瘟热。', NULL, NULL, '给予抗生素、输液、营养支持等治疗，隔离并严密观察。', NULL, NULL);
INSERT INTO `case_management` VALUES (19, '犬内分泌疾病', '犬糖尿病', NULL, NULL, '一只7岁的贵宾犬，主人反映犬只最近出现口渴、多尿、食欲减退等症状。', NULL, NULL, '血液检查发现血糖和尿糖升高。', NULL, NULL, '犬糖尿病。', NULL, NULL, '限制饮食、口服降糖药、定期测量血糖并调整治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (20, '猫传染病', '猫病毒性鼻气管炎', NULL, NULL, '一只4岁的波斯猫，主人反映猫只出现喷嚏、流涕、食欲减退等症状。', NULL, NULL, '病理检查发现鼻腔有炎症和浆液性分泌物。', NULL, NULL, '猫病毒性鼻气管炎。', NULL, NULL, '给予抗生素、营养支持、保持环境清洁卫生等治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (21, '犬心血管疾病', '犬心包积液', NULL, NULL, '一只6岁的金毛犬，主人反映犬只最近出现咳嗽、气促等症状。', NULL, NULL, '心脏超声检查发现心包积液。', NULL, NULL, '犬心包积液。', NULL, NULL, '给予穿刺抽液、口服利尿剂、心脏营养药等治疗。', NULL, NULL);
INSERT INTO `case_management` VALUES (22, '其他', '糖尿病', NULL, NULL, 'A1', NULL, NULL, 'B1', NULL, NULL, 'C1', NULL, NULL, 'D1', NULL, NULL);

-- ----------------------------
-- Table structure for case_type
-- ----------------------------
DROP TABLE IF EXISTS `case_type`;
CREATE TABLE `case_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of case_type
-- ----------------------------
INSERT INTO `case_type` VALUES (5, '传染病');
INSERT INTO `case_type` VALUES (3, '免疫系统疾病');
INSERT INTO `case_type` VALUES (8, '其他');
INSERT INTO `case_type` VALUES (6, '口腔疾病');
INSERT INTO `case_type` VALUES (2, '消化系统疾病');
INSERT INTO `case_type` VALUES (14, '犬传染病');
INSERT INTO `case_type` VALUES (15, '犬内分泌疾病');
INSERT INTO `case_type` VALUES (12, '犬口腔疾病');
INSERT INTO `case_type` VALUES (9, '犬外伤');
INSERT INTO `case_type` VALUES (17, '犬心血管疾病');
INSERT INTO `case_type` VALUES (10, '犬消化系统疾病');
INSERT INTO `case_type` VALUES (16, '猫传染病');
INSERT INTO `case_type` VALUES (11, '猫内分泌疾病');
INSERT INTO `case_type` VALUES (13, '猫呼吸道疾病');
INSERT INTO `case_type` VALUES (1, '神经系统疾病');
INSERT INTO `case_type` VALUES (4, '肝脏疾病');

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

-- ----------------------------
-- Table structure for department_management
-- ----------------------------
DROP TABLE IF EXISTS `department_management`;
CREATE TABLE `department_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department_management
-- ----------------------------
INSERT INTO `department_management` VALUES (1, '前台', '包括接待挂号、导医咨询、病历档案发出与回收、收费等。', '前台');
INSERT INTO `department_management` VALUES (2, '档案室', '包括病例档案的合理保存与数据统计等。', '前台');
INSERT INTO `department_management` VALUES (3, '诊室', '包括诊室的布局介绍；对宠物进行临床基本检查（视、听、触、嗅等）、疾病诊断；与宠物主人交流并根据情况开具处方。', '执业兽医师');
INSERT INTO `department_management` VALUES (4, '免疫室', '包括为健康宠物接种疫苗的流程，对常见并发症的处理流程，对常见免疫相关问题的解答等。', '助理执业兽医师');
INSERT INTO `department_management` VALUES (5, '化验室', '包括对送检样本的预处理，对相应样本进行血常规、血液生化、电解质、血气、血凝指标、激素指标、尿常规、微生物学检查、药敏、皮肤刮片、粪便检查、传染病检查等检查操作流程。', '助理执业兽医师');
INSERT INTO `department_management` VALUES (6, '影像室', '包括X线检查、B超检查以及CT、MRI检查。如X线检查：X光机的结构功能介绍、全身各部位的摆位、拍摄条件的选择、拍摄流程、洗片的操作流程。B超检查：扫查探头的选择、全身各个部位扫查的摆位、腹部扫查流程。', '助理执业兽医师');
INSERT INTO `department_management` VALUES (7, '专科检查室', '包括对眼科、骨科、神经科、心脏科等专科疾病的检查，如眼科（检眼镜检查、眼压检查、裂隙灯检查、眼底检查、泪液分泌量检查等）、心脏科检查（心脏听诊、心电图检查等）、神经学检查（步态检查、各种反射检查等）等。', '执业兽医师');
INSERT INTO `department_management` VALUES (8, '处置室', '包括口服投药、换药、清洗耳道、挤肛门腺、修剪指甲、鼻饲管放置、灌肠、安乐死等基本处置操作流程。', '助理执业兽医师');
INSERT INTO `department_management` VALUES (9, '药房', '包括对各种药物的存放要求、处方的审核流程、药物的发放流程、常见药物的使用说明等。', '助理执业兽医师');
INSERT INTO `department_management` VALUES (10, '注射室', '包括静脉注射、皮下注射、肌肉注射、局部封闭注射的操作流程，常见问题的处理方法，输液泵、加热垫的使用方法，注射室的消毒流程。', '助理执业兽医师');
INSERT INTO `department_management` VALUES (11, '手术准备室', '包括术前对宠物进行麻前给药、注射麻醉、吸入麻醉的流程，保定、剃毛、消毒的流程，常见手术器械的介绍，手术器械包的准备、灭菌流程，手术人员的消毒、穿戴手术衣流程等。', '助理执业兽医师');
INSERT INTO `department_management` VALUES (12, '手术室', '包括手术室的布局介绍，手术室消毒流程，手术无菌要求，常规手术、特殊手等的操作规范。', '执业兽医师');
INSERT INTO `department_management` VALUES (13, '住院部', '包括对需要住院的病例进行护理分级，不同护理级别的要求，住院部的工作流程，住院部的消毒流程等。', '住院执业兽医师或助理执业兽医师');
INSERT INTO `department_management` VALUES (14, '病理剖检室', '包括对病死动物剖解的流程，病理剖检室的消毒流程，病历剖检过程的人员要求，病理剖检过程中的人道关怀。', '执业兽医师');

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

-- ----------------------------
-- Table structure for inpatient_management
-- ----------------------------
DROP TABLE IF EXISTS `inpatient_management`;
CREATE TABLE `inpatient_management`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inpatient_management
-- ----------------------------
INSERT INTO `inpatient_management` VALUES (00000000001, '小猫', '苏格兰折耳猫', '张三', '13912345678', '感冒', '2023-03-01', '2023-03-04', 3, 500.00);
INSERT INTO `inpatient_management` VALUES (00000000002, '小狗', '拉布拉多', '李四', '13698765432', '创伤', '2023-03-03', '2023-03-08', 5, 1200.00);
INSERT INTO `inpatient_management` VALUES (00000000003, '小鸟', '金丝雀', '王五', '18011112222', '消化不良', '2023-03-05', '2023-03-07', 2, 300.00);
INSERT INTO `inpatient_management` VALUES (00000000004, '小兔', '荷兰侏儒兔', '赵六', '010-88888888', '发烧', '2023-03-06', '2023-03-11', 5, 800.00);
INSERT INTO `inpatient_management` VALUES (00000000005, '小龟', '红耳龟', '钱七', '0755-12345678', '腹泻', '2023-03-09', '2023-03-15', 6, 900.00);
INSERT INTO `inpatient_management` VALUES (00000000006, '小鱼', '金鱼', '张三', '13912345678', '中毒', '2023-03-11', '2023-03-12', 1, 100.00);
INSERT INTO `inpatient_management` VALUES (00000000007, '小猫', '苏格兰折耳猫', '李四', '13698765432', '感冒', '2023-03-15', '2023-03-18', 3, 500.00);
INSERT INTO `inpatient_management` VALUES (00000000008, '小狗', '拉布拉多', '王五', '18011112222', '骨折', '2023-03-18', '2023-03-27', 9, 2000.00);
INSERT INTO `inpatient_management` VALUES (00000000009, '小鸟', '金丝雀', '赵六', '010-88888888', '感冒', '2023-03-20', '2023-03-24', 4, 600.00);

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(10) NULL DEFAULT NULL,
  `total_score` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (1, 20, 100);
INSERT INTO `paper` VALUES (5, 100, 0);
INSERT INTO `paper` VALUES (6, 100, 30);

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of paper_question
-- ----------------------------
INSERT INTO `paper_question` VALUES (6, 1);
INSERT INTO `paper_question` VALUES (6, 2);
INSERT INTO `paper_question` VALUES (6, 3);
INSERT INTO `paper_question` VALUES (1, 1);
INSERT INTO `paper_question` VALUES (1, 2);
INSERT INTO `paper_question` VALUES (1, 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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

-- ----------------------------
-- Table structure for record_management
-- ----------------------------
DROP TABLE IF EXISTS `record_management`;
CREATE TABLE `record_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `breed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disease` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主治医师',
  `charge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收费项目',
  `drug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vaccine` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inpatient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否住院',
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '责任科室',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_management
-- ----------------------------
INSERT INTO `record_management` VALUES (1, '小明', '猫', 1, '母', '灰色', '张三', '13912345678', '猫白血病', '张三', '住院', NULL, NULL, '血常规', '是', '住院部');
INSERT INTO `record_management` VALUES (2, '小白', '狗', 2, '公', '黑色', '李四', '13698765432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `record_management` VALUES (3, '小红', '兔子', 3, '母', '棕色', '王五', '18011112222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `record_management` VALUES (4, '小黑', '狗', 2, '公', '白色', '赵六', '010-88888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `record_management` VALUES (5, '小花', '猫', 1, '母', '黑色', '钱七', '0755-12345678', '猫白血病', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `record_management` VALUES (6, '小光', '狗', 2, '公', '棕色', '张三', '13912345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `record_management` VALUES (7, '小龙', '爬行类', 3, '未知', '绿色', '李四', '13698765432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `record_management` VALUES (8, '小虎', '狗', 2, '公', '灰色', '王五', '18011112222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `record_management` VALUES (9, '小鸟', '鸟类', 4, '母', '彩色', '赵六', '010-88888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `record_management` VALUES (10, '小熊', '狗', 5, '公', '棕色', '钱七', '0755-12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `staff_management` VALUES (11, '哼哼', 123, '男', 'lk', 3, '123', '123456', '2020-03-10', '哈哈', 'asdj');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'NULL' COMMENT '用户名',
  `nick_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'NULL' COMMENT '昵称',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'NULL' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户性别（0男，1女，2未知）',
  `avatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `user_type` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '用户类型',
  `create_by` bigint(20) NULL DEFAULT NULL COMMENT '创建人的用户id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) NULL DEFAULT 0 COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (2, 'admin', 'NULL', '123456', '0', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_user` VALUES (3, 'user1', 'NULL', '123456', '0', NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (63, '2023-03-31 08:57:49', '2023-03-31 08:57:49');
INSERT INTO `test` VALUES (64, '2023-03-31 08:57:51', '2023-03-31 08:57:51');
INSERT INTO `test` VALUES (65, '2023-03-31 08:58:41', '2023-03-31 08:58:41');

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test_paper
-- ----------------------------
INSERT INTO `test_paper` VALUES (63, 1);
INSERT INTO `test_paper` VALUES (64, 1);
INSERT INTO `test_paper` VALUES (65, 1);

-- ----------------------------
-- Table structure for test_user
-- ----------------------------
DROP TABLE IF EXISTS `test_user`;
CREATE TABLE `test_user`  (
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  INDEX `test_id`(`test_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test_user
-- ----------------------------
INSERT INTO `test_user` VALUES (63, 2);
INSERT INTO `test_user` VALUES (63, 3);
INSERT INTO `test_user` VALUES (64, 2);
INSERT INTO `test_user` VALUES (64, 3);
INSERT INTO `test_user` VALUES (65, 2);
INSERT INTO `test_user` VALUES (65, 3);

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
