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

 Date: 19/04/2023 17:03:27
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of case_management
-- ----------------------------
INSERT INTO `case_management` VALUES (23, '传染病', '犬瘟热', 'case-犬瘟热-1-mark.jpg', NULL, '一只2岁的贵宾犬，主人反映犬只精神不振，食欲不佳，眼睛发红。', 'case-犬瘟热-2-mark.jpg', NULL, '犬只体温升高，呼吸急促，喉部有干咳声，眼结膜充血。血液检查发现白细胞和淋巴细胞明显下降。', 'case-犬瘟热-3-mark.jpg', NULL, '犬瘟热', 'case-犬瘟热-4-mark.jpg', NULL, '给予营养支持和抗病毒治疗。', 'case-犬瘟热-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (27, '传染病', '犬细小病毒', 'case-犬细小病毒-1-mark.jpg', NULL, '一只1岁的比熊犬，主人反映犬只突然出现食欲不振、咳嗽、流涕、发热，犬只有过去接触了其他犬只。', 'case-犬细小病毒-2-mark.jpg', NULL, '犬只体温升高，呼吸急促，喉部有干咳声，眼结膜充血。血液检查发现白细胞和淋巴细胞明显下降。', 'case-犬细小病毒-3-mark.jpg', NULL, '犬细小病毒感染', 'case-犬细小病毒-4-mark.jpg', NULL, '给予营养支持、静脉输液和抗病毒治疗。', 'case-犬细小病毒-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (28, '传染病', '犬冠状病毒', 'case-犬冠状病毒-1-mark.jpg', NULL, '一只6个月大的小麦色拉布拉多犬，主人反映犬只出现呕吐、腹泻、食欲不振，近期与其他犬只有接触。', 'case-犬冠状病毒-2-mark.jpg', NULL, '犬只体温正常，但出现呕吐、腹泻，粪便呈黄色水样，食欲不振。', 'case-犬冠状病毒-3-mark.jpg', NULL, '犬冠状病毒感染', 'case-犬冠状病毒-4-mark.jpg', NULL, '给予营养支持、静脉输液和支持性治疗。', 'case-犬冠状病毒-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (29, '寄生虫病', '钩虫病', 'case-钩虫病-1-mark.jpg', NULL, '一只1岁的哈士奇犬，主人反映犬只食欲不振、精神萎靡，近期曾被带到公园玩耍。', 'case-钩虫病-2-mark.jpg', NULL, '犬只体温正常，粪便呈黑色，常常出现血便，血液检查发现红细胞计数减少。', 'case-钩虫病-3-mark.jpg', NULL, '钩虫病感染', 'case-钩虫病-4-mark.jpg', NULL, '给予抗生素治疗和支持性治疗。', 'case-钩虫病-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (30, '寄生虫病', '球虫病', 'case-球虫病-1-mark.jpg', NULL, '一只3岁的波斯猫，主人反映猫只长期便秘，排便时痛苦，精神不振，拒绝进食。', 'case-球虫病-2-mark.jpg', NULL, '猫只体温正常，腹部触诊感觉到肿块，粪便中有血液和球虫。', 'case-球虫病-3-mark.jpg', NULL, '球虫病感染', 'case-球虫病-4-mark.jpg', NULL, '进行球虫驱除治疗，并给予支持性治疗。', 'case-球虫病-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (31, '传染病', '犬传染性肝炎', 'case-犬传染性肝炎-1-mark.jpg', NULL, '一只6个月大的金毛犬，主人反映犬只食欲不振，呕吐，精神萎靡。', 'case-犬传染性肝炎-2-mark.jpg', NULL, '犬只体温升高，腹部疼痛，肝区有明显触痛，粪便异常。血液检查发现肝功能异常。', 'case-犬传染性肝炎-3-mark.jpg', NULL, '犬传染性肝炎', 'case-犬传染性肝炎-4-mark.jpg', NULL, '给予抗病毒治疗和肝脏保护药物。', 'case-犬传染性肝炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (35, '传染病', '猫泛白细胞减少症', 'case-猫泛白细胞减少症-1-mark.jpg', NULL, '一只4岁的英国短毛猫，主人反映猫只食欲不振，体重减轻。', 'case-猫泛白细胞减少症-2-mark.jpg', NULL, '猫只体温正常，全身无异常体征，血液检查发现白细胞和淋巴细胞明显下降。', 'case-猫泛白细胞减少症-3-mark.jpg', NULL, '猫泛白细胞减少症', 'case-猫泛白细胞减少症-4-mark.jpg', NULL, '进行支持性治疗，加强营养，给予免疫增强剂治疗。', 'case-猫泛白细胞减少症-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (36, '传染病', '猫病毒性病气管炎', 'case-猫病毒性病气管炎-1-mark.jpg', NULL, '一只1岁的布偶猫，主人反映猫只咳嗽、打喷嚏、流鼻涕、食欲下降、精神不振。', 'case-猫病毒性病气管炎-2-mark.jpg', NULL, '猫只体温正常，肺部听诊发现干咳声和喘鸣音，喉部有分泌物，咽喉充血。血液检查显示白细胞和淋巴细胞下降。', 'case-猫病毒性病气管炎-3-mark.jpg', NULL, '猫病毒性病气管炎', 'case-猫病毒性病气管炎-4-mark.jpg', NULL, '给予支持性治疗，如卧床休息、提供足够营养、适当补充维生素。', 'case-猫病毒性病气管炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (38, '传染病', '皮肤真菌感染', 'case-皮肤真菌感染-1-mark.jpg', NULL, '一只1岁的英国短毛猫，主人发现猫只身上有一些圆形、脱毛的皮肤病灶，猫只有轻微瘙痒行为。', 'case-皮肤真菌感染-2-mark.jpg', NULL, '病灶周围有明显的红斑、脱毛，皮肤片检查发现真菌感染。', 'case-皮肤真菌感染-3-mark.jpg', NULL, '皮肤真菌感染', 'case-皮肤真菌感染-4-mark.jpg', NULL, '局部涂抹抗真菌药膏，控制猫只瘙痒行为，加强猫只抵抗力。', 'case-皮肤真菌感染-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (40, '寄生虫病', '蛔虫病', 'case-蛔虫病-1-mark.jpg', NULL, '主人反映猫只食欲不振，体重下降，毛发失去光泽。经过询问得知猫只未定期驱虫。', 'case-蛔虫病-2-mark.jpg', NULL, '粪便检查，发现大量蛔虫卵。', 'case-蛔虫病-3-mark.jpg', NULL, '蛔虫病', 'case-蛔虫病-4-mark.jpg', NULL, '口服驱虫药物，并定期进行驱虫。', 'case-蛔虫病-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (42, '内科', '尿道感染', 'case-尿道感染-1-mark.jpg', NULL, '1. 给予静脉注射头孢菌素。2. 给予口服抗生素（氨苄西林）。3. 住院观察', 'case-尿道感染-2-mark.jpg', NULL, '1. 尿液检查：白细胞增多，细菌感染。2. 腹部X光：无异常', 'case-尿道感染-3-mark.jpg', NULL, '尿道感染', 'case-尿道感染-4-mark.jpg', NULL, '静脉注射头孢菌素，口服氨苄西林，住院观察', 'case-尿道感染-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (44, '外产科疾病', '乳房炎', 'case-乳房炎-1-mark.jpg', NULL, '一只1岁的泰迪犬，主人反映犬只的乳房肿胀疼痛，拒绝进食', 'case-乳房炎-2-mark.jpg', NULL, '乳房肿胀疼痛，局部皮肤发炎红肿', 'case-乳房炎-3-mark.jpg', NULL, '乳房炎', 'case-乳房炎-4-mark.jpg', NULL, '局部冷敷，口服抗生素药物治疗', 'case-乳房炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (46, '外产科疾病', '难产', 'case-难产-1-mark.jpg', 'case-难产-1-mark.mp4', '一只2岁的波斯猫，主人反映已经到预产期但是猫只没有产下小猫，猫只很疲惫，无精神', 'case-难产-2-mark.jpg', NULL, '腹部触诊发现胎儿已经死胎，产道狭窄', 'case-难产-3-mark.jpg', NULL, '难产', 'case-难产-4-mark.jpg', NULL, '手术取出死胎，并给予适当的止痛药物和消炎药物', 'case-难产-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (49, '外产科疾病', '子宫蓄脓', 'case-子宫蓄脓-1-mark.jpg', NULL, '一只2岁的英国短毛猫，主人反映猫只精神不振，食欲减退，尿量减少。', 'case-子宫蓄脓-2-mark.jpg', NULL, '腹部触诊发现腹部有明显肿块，呈硬度，有潮湿分泌物流出。', 'case-子宫蓄脓-3-mark.jpg', NULL, '子宫蓄脓', 'case-子宫蓄脓-4-mark.jpg', NULL, '手术切除病变部位，联合抗生素治疗。', 'case-子宫蓄脓-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (50, '外产科疾病', '骨折', 'case-骨折-1-mark.jpg', NULL, '一只6个月大的金毛犬，主人反映狗狗不慎从楼梯上摔下，右前肢无法站立，表现出明显疼痛，且右前肢肿胀。', 'case-骨折-2-mark.jpg', NULL, '检查右前肢发现明显畸形，局部有压痛。', 'case-骨折-3-mark.jpg', NULL, '右前肢骨折。', 'case-骨折-4-mark.jpg', NULL, '行手术治疗，安装外固定器固定骨折部位，给予止痛和消炎药物，注意固定器的护理和饮食。', 'case-骨折-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (51, '寄生虫病', '绦虫病', 'case-绦虫病-1-mark.jpg', NULL, '一只4岁的金毛犬，主人发现其精神状态不佳，食欲减退，且拉粪便时发现有白色长条虫体存在。', 'case-绦虫病-2-mark.jpg', NULL, '体检发现该犬体重下降，精神状态不佳，毛发变得黯淡，肛门周围有蚤子存在。粪便检查发现有绦虫卵。', 'case-绦虫病-3-mark.jpg', NULL, '绦虫病', 'case-绦虫病-4-mark.jpg', NULL, '口服适用的驱虫药物，定期消毒宠物卫生环境。', 'case-绦虫病-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (53, '寄生虫病', '疥螨虫病', 'case-疥螨虫病-1-mark.jpg', NULL, '一只1岁的柯基犬，主人反映犬只皮肤搔抓和瘙痒，毛发稀疏，皮肤有红斑和皮疹。', 'case-疥螨虫病-2-mark.jpg', NULL, '犬只查体时发现皮肤红肿、有小疱疹、脱毛，皮肤刮片检查发现螨虫。', 'case-疥螨虫病-3-mark.jpg', NULL, '疥螨虫病', 'case-疥螨虫病-4-mark.jpg', NULL, '使用特殊药物进行治疗和消毒。', 'case-疥螨虫病-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (54, '寄生虫病', '蚤病', 'case-蚤病-1-mark.jpg', NULL, '一只4岁的布偶猫，主人反映猫咪经常抓痒，发现有许多黑色小颗粒附着在皮毛上。', 'case-蚤病-2-mark.jpg', NULL, '皮肤检查发现有大量的跳蚤，猫只表现出严重的皮肤瘙痒，有时会出现红疹和皮肤炎症。', 'case-蚤病-3-mark.jpg', NULL, '蚤病', 'case-蚤病-4-mark.jpg', NULL, '用药洗澡清除跳蚤，并给予口服药物治疗。', 'case-蚤病-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (55, '内科', '口炎', 'case-口炎-1-mark.jpg', NULL, '一只5岁的猫咪，主人反映猫咪不爱吃东西，口臭。', 'case-口炎-2-mark.jpg', NULL, '口腔检查发现口腔黏膜出现溃疡和红肿，口腔有异味。', 'case-口炎-3-mark.jpg', NULL, '口炎', 'case-口炎-4-mark.jpg', NULL, '口腔消毒和给予口服抗生素和口服止痛药。', 'case-口炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (56, '内科', '肠炎', 'case-肠炎-1-mark.jpg', NULL, '一只1岁的金毛犬，主人反映犬只排便困难，呕吐，食欲不振。', 'case-肠炎-2-mark.jpg', NULL, '犬只腹部触诊有胀气声，粪便变软，有黏液和血丝，体温正常。', 'case-肠炎-3-mark.jpg', NULL, '肠炎', 'case-肠炎-4-mark.jpg', NULL, '给予抗菌药物和消化道调理药物治疗。', 'case-肠炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (57, '内科', '肠便秘', 'case-肠便秘-1-mark.jpg', NULL, '一只4岁的柯基犬，主人反映犬只已经两天没有排便，食欲正常。', 'case-肠便秘-2-mark.jpg', NULL, '犬只腹部触诊有大量硬便，肛门括约肌张力增强。', 'case-肠便秘-3-mark.jpg', NULL, '肠便秘', 'case-肠便秘-4-mark.jpg', NULL, '给予泻药和润肠剂治疗。', 'case-肠便秘-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (58, '内科', '胰腺炎', 'case-胰腺炎-1-mark.jpg', NULL, '一只4岁的金毛犬，主人反映犬只食欲不振，腹部隐隐作痛。', 'case-胰腺炎-2-mark.jpg', NULL, '犬只腹部触诊时明显疼痛，血液检查发现血糖和脂肪酶升高。', 'case-胰腺炎-3-mark.jpg', NULL, '胰腺炎', 'case-胰腺炎-4-mark.jpg', NULL, '给予禁食和液体支持，必要时给予胰岛素和抗生素。', 'case-胰腺炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (59, '内科', '肝炎', 'case-肝炎-1-mark.jpg', NULL, '一只6岁的泰迪犬，主人反映犬只食欲不振，口腔黏膜发黄。', 'case-肝炎-2-mark.jpg', NULL, '犬只黄疸，肝脏区触诊明显疼痛，血液检查发现肝酶升高。', 'case-肝炎-3-mark.jpg', NULL, '肝炎', 'case-肝炎-4-mark.jpg', NULL, '给予营养支持、肝保护剂和抗病毒治疗。', 'case-肝炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (60, '内科', '腹膜炎', 'case-腹膜炎-1-mark.jpg', NULL, '一只4岁的金毛犬，主人反映犬只食欲不振，大便干燥', 'case-腹膜炎-2-mark.jpg', NULL, '体温升高，腹部明显压痛，触诊有腹水', 'case-腹膜炎-3-mark.jpg', NULL, '腹膜炎', 'case-腹膜炎-4-mark.jpg', NULL, '抗生素和液体支持治疗', 'case-腹膜炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (61, '内科', '肛门腺炎', 'case-肛门腺炎-1-mark.jpg', NULL, '一只3岁的贵宾犬，主人反映犬只经常舔肛门附近，出现排便困难', 'case-肛门腺炎-2-mark.jpg', NULL, '触诊后肛门腺分泌物过多，肛门周围发炎', 'case-肛门腺炎-3-mark.jpg', NULL, '肛门腺炎', 'case-肛门腺炎-4-mark.jpg', NULL, '清理肛门腺分泌物并进行局部抗炎治疗', 'case-肛门腺炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (62, '内科', '感冒', 'case-感冒-1-mark.jpg', NULL, '一只1岁的泰迪犬，主人反映犬只打喷嚏，鼻子流涕', 'case-感冒-2-mark.jpg', NULL, '鼻腔分泌物增多，发热', 'case-感冒-3-mark.jpg', NULL, '感冒', 'case-感冒-4-mark.jpg', NULL, '对症治疗和营养支持', 'case-感冒-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (63, '内科', '鼻炎', 'case-鼻炎-1-mark.jpg', NULL, '一只2岁的雪纳瑞犬，主人反映犬只经常打喷嚏，鼻子干燥', 'case-鼻炎-2-mark.jpg', NULL, '鼻腔黏膜干燥，呼吸急促', 'case-鼻炎-3-mark.jpg', NULL, '鼻炎', 'case-鼻炎-4-mark.jpg', NULL, '对症治疗和营养支持', 'case-鼻炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (64, '内科', '气管支气管炎', 'case-气管支气管炎-1-mark.jpg', NULL, '一只1岁的雪纳瑞犬，主人反映犬只咳嗽声音大，时常呛咳，咳出黏液。', 'case-气管支气管炎-2-mark.jpg', NULL, '犬只体温正常，呼吸频率增加，咳嗽声音明显，听诊有干性啰音。', 'case-气管支气管炎-3-mark.jpg', NULL, '气管支气管炎', 'case-气管支气管炎-4-mark.jpg', NULL, '抗生素、支气管扩张剂、止咳剂', 'case-气管支气管炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (65, '内科', '肺炎', 'case-肺炎-1-mark.jpg', NULL, '一只3岁的柯基犬，主人反映犬只食欲不佳，咳嗽，呼吸急促。', 'case-肺炎-2-mark.jpg', NULL, '犬只体温升高，呼吸急促，听诊有湿性啰音。', 'case-肺炎-3-mark.jpg', NULL, '肺炎', 'case-肺炎-4-mark.jpg', NULL, '抗生素、氧气吸入、液体输注', 'case-肺炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (66, '内科', '心力衰竭', 'case-心力衰竭-1-mark.jpg', NULL, '一只7岁的金毛犬，主人反映犬只食欲不佳，精神萎靡，呼吸困难。', 'case-心力衰竭-2-mark.jpg', NULL, '犬只体温正常，呼吸困难，心率加快，听诊心音低弱。', 'case-心力衰竭-3-mark.jpg', NULL, '心力衰竭', 'case-心力衰竭-4-mark.jpg', NULL, '利尿剂、强心剂、普萘洛尔', 'case-心力衰竭-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (67, '内科', '尿道感染', 'case-尿道感染-1-mark.jpg', NULL, '一只2岁的波斯猫，主人反映猫只尿频，排尿困难。', 'case-尿道感染-2-mark.jpg', NULL, '猫只体温正常，尿频，尿量减少，腹部触痛。', 'case-尿道感染-3-mark.jpg', NULL, '尿道感染', 'case-尿道感染-4-mark.jpg', NULL, '抗生素、消炎止痛剂', 'case-尿道感染-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (68, '内科', '尿结石', 'case-尿结石-1-mark.jpg', NULL, '一只1岁的比熊犬，主人反映犬只小便困难，频繁舔屁股，小便呈淡黄色，呈滴状。', 'case-尿结石-2-mark.jpg', NULL, '犬只腹部扪及到结石，B超检查发现膀胱内有结石。', 'case-尿结石-3-mark.jpg', NULL, '尿结石', 'case-尿结石-4-mark.jpg', NULL, '给予药物溶解结石并通过排尿排出。', 'case-尿结石-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (69, '内科', '膀胱炎', 'case-膀胱炎-1-mark.jpg', NULL, '一只3岁的贵宾犬，主人反映犬只小便频繁，小便时有尿意但尿量很少，有时还会有尿失禁现象。', 'case-膀胱炎-2-mark.jpg', NULL, '尿液分析显示细菌感染，B超检查膀胱内壁有轻度充血。', 'case-膀胱炎-3-mark.jpg', NULL, '膀胱炎', 'case-膀胱炎-4-mark.jpg', NULL, '给予抗生素治疗并对症处理。', 'case-膀胱炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (70, '内科', '肾炎', 'case-肾炎-1-mark.jpg', NULL, '一只4岁的金毛犬，主人反映犬只食欲下降、呕吐、乏力，伴有尿液颜色异常，呈现黄色，偶有血尿。', 'case-肾炎-2-mark.jpg', NULL, '犬只体重下降，尿液检查发现白细胞和蛋白质含量明显升高，红细胞和肾小球滤过率下降。', 'case-肾炎-3-mark.jpg', NULL, '肾炎', 'case-肾炎-4-mark.jpg', NULL, '给予抗生素和药物支持治疗。', 'case-肾炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (71, '内科', '佝偻病', 'case-佝偻病-1-mark.jpg', NULL, '一只6个月大的柯基犬，主人反映犬只步态异常，四肢无力，骨骼发育不良。', 'case-佝偻病-2-mark.jpg', NULL, 'X光检查发现骨骼中长骨和脊椎明显变形和扁平，钙质含量下降。', 'case-佝偻病-3-mark.jpg', NULL, '佝偻病', 'case-佝偻病-4-mark.jpg', NULL, '给予高钙饮食和补钙治疗。', 'case-佝偻病-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (72, '内科', '有机磷中毒', 'case-有机磷中毒-1-mark.jpg', NULL, '一只3岁的松狮犬，主人反映犬只无力、食欲减退、呕吐、拉稀', 'case-有机磷中毒-2-mark.jpg', NULL, '犬只体温正常，心率增快，神经肌肉系统明显异常，反应迟钝', 'case-有机磷中毒-3-mark.jpg', NULL, '有机磷中毒', 'case-有机磷中毒-4-mark.jpg', NULL, '给予解毒剂和营养支持治疗', 'case-有机磷中毒-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (73, '内科', '糖尿病', 'case-糖尿病-1-mark.jpg', NULL, '一只6岁的贵宾犬，主人反映犬只喝水和尿频', 'case-糖尿病-2-mark.jpg', NULL, '犬只口渴，饮水量明显增加，尿量增多，尿糖阳性', 'case-糖尿病-3-mark.jpg', NULL, '糖尿病', 'case-糖尿病-4-mark.jpg', NULL, '给予胰岛素和特殊饮食治疗', 'case-糖尿病-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (74, '内科', '耳血肿', 'case-耳血肿-1-mark.jpg', NULL, '一只1岁的金毛犬，主人反映犬只耳朵红肿疼痛', 'case-耳血肿-2-mark.jpg', NULL, '犬只耳朵内部红肿，局部皮肤破损，有血液积聚', 'case-耳血肿-3-mark.jpg', NULL, '耳血肿', 'case-耳血肿-4-mark.jpg', NULL, '给予消炎药和止痛药治疗', 'case-耳血肿-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (75, '内科', '中耳炎', 'case-中耳炎-1-mark.jpg', 'case-中耳炎-1-mark.mp4', '一只4岁的拉布拉多犬，主人反映犬只左耳疼痛、头晕、流黄色分泌物', 'case-中耳炎-2-mark.jpg', NULL, '犬只左耳内部有分泌物，局部红肿疼痛，听力下降', 'case-中耳炎-3-mark.jpg', NULL, '中耳炎', 'case-中耳炎-4-mark.jpg', NULL, '给予消炎药和营养支持治疗', 'case-中耳炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (76, '外产科疾病', '眼睑内翻', 'case-眼睑内翻-1-mark.jpg', NULL, '一只3岁的柯基犬，主人反映犬只的眼睛很不舒服，一直用爪子挠眼睛', 'case-眼睑内翻-2-mark.jpg', NULL, '检查发现犬只眼睑发炎，并且眼睛经常出现异物，引起犬只不适', 'case-眼睑内翻-3-mark.jpg', NULL, '眼睑内翻', 'case-眼睑内翻-4-mark.jpg', NULL, '给予手术治疗，矫正眼睑', 'case-眼睑内翻-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (77, '内科', '结膜炎', 'case-结膜炎-1-mark.jpg', 'case-结膜炎-1-mark.mp4', '一只2岁的波斯猫，主人反映猫眼睛出现红肿，有分泌物，有时流眼泪', 'case-结膜炎-2-mark.jpg', NULL, '检查发现猫眼睛结膜有明显发炎，黏膜肿胀，有分泌物，引起猫眼睛不适', 'case-结膜炎-3-mark.jpg', NULL, '结膜炎', 'case-结膜炎-4-mark.jpg', NULL, '给予眼药水滴眼，口服抗生素治疗', 'case-结膜炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (78, '内科', '角膜炎', 'case-角膜炎-1-mark.jpg', NULL, '一只5岁的金毛犬，主人反映犬只眼睛出现红肿，有分泌物，流眼泪，经常揉眼睛', 'case-角膜炎-2-mark.jpg', NULL, '检查发现犬只眼睛角膜有明显发炎，引起犬只不适', 'case-角膜炎-3-mark.jpg', NULL, '角膜炎', 'case-角膜炎-4-mark.jpg', NULL, '给予眼药水滴眼，口服抗生素治疗', 'case-角膜炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (79, '外产科疾病', '外伤', 'case-外伤-1-mark.jpg', NULL, '主人称宠物被车撞击后出现昏迷症状，立即送至诊所。', 'case-外伤-2-mark.jpg', NULL, '全身检查：颅骨外伤，左侧肋骨骨折，右前肢挫伤。', 'case-外伤-3-mark.jpg', NULL, '左侧颅骨骨折、右侧第4-7根肋骨骨折、右侧前肢挫伤', 'case-外伤-4-mark.jpg', NULL, '颅骨骨折需手术治疗，肋骨骨折需静脉输液、止痛、口服抗生素，前肢伤口需局部清洗消毒、敷药。', 'case-外伤-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (80, '外产科疾病', '外科感染', 'case-外科感染-1-mark.jpg', NULL, '主人称宠物因伤口发炎发热，食欲下降。', 'case-外科感染-2-mark.jpg', NULL, '局部检查：发现伤口部位红肿热痛，伤口内有脓液。', 'case-外科感染-3-mark.jpg', NULL, '伤口感染', 'case-外科感染-4-mark.jpg', NULL, '局部清洗、消毒，口服抗生素，注射消炎药物。', 'case-外科感染-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (81, '外产科疾病', '关节脱位', 'case-关节脱位-1-mark.jpg', NULL, '一只3岁的比熊犬，主人反映犬只走路时突然出现左后腿疼痛，不敢踩地面，表现为跛行。', 'case-关节脱位-2-mark.jpg', NULL, '检查发现左后腿跟骨头和脚踝关节脱位，周围软组织肿胀，疼痛明显。', 'case-关节脱位-3-mark.jpg', NULL, '关节脱位', 'case-关节脱位-4-mark.jpg', NULL, '进行关节复位并给予镇痛和抗炎药物治疗。', 'case-关节脱位-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (82, '外产科疾病', '湿疹', 'case-湿疹-1-mark.jpg', NULL, '一只1岁的拉布拉多犬，主人反映犬只长期存在皮肤瘙痒和红肿，时不时还会有溃疡流脓。', 'case-湿疹-2-mark.jpg', NULL, '检查发现犬只有皮肤湿疹，皮肤出现明显的红肿，潮湿、瘙痒，部分部位有溃疡。', 'case-湿疹-3-mark.jpg', NULL, '湿疹', 'case-湿疹-4-mark.jpg', NULL, '进行局部皮肤护理和给予抗过敏药物治疗。', 'case-湿疹-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (83, '外产科疾病', '皮炎', 'case-皮炎-1-mark.jpg', NULL, '一只4岁的柴犬，主人反映犬只有皮肤瘙痒和红肿，时不时还会出现掉毛的情况。', 'case-皮炎-2-mark.jpg', NULL, '检查发现犬只有皮肤炎症，皮肤出现明显的红肿、干燥、瘙痒，部分部位有脱毛。', 'case-皮炎-3-mark.jpg', NULL, '皮炎', 'case-皮炎-4-mark.jpg', NULL, '进行局部皮肤护理和给予抗过敏药物治疗。', 'case-皮炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (84, '外产科疾病', '脓皮病', 'case-脓皮病-1-mark.jpg', NULL, '一只3岁的柯基犬，主人反映犬只左前肢出现红肿并有脓液流出。', 'case-脓皮病-2-mark.jpg', NULL, '检查发现左前肢有明显肿胀、红肿、脓液外溢。', 'case-脓皮病-3-mark.jpg', NULL, '脓皮病', 'case-脓皮病-4-mark.jpg', NULL, '给予局部消炎治疗及口服抗生素。', 'case-脓皮病-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (85, '外产科疾病', '脱毛症', 'case-脱毛症-1-mark.jpg', NULL, '一只5岁的泰迪犬，主人反映犬只后背有大面积脱毛。', 'case-脱毛症-2-mark.jpg', NULL, '检查发现犬只后背有大面积脱毛，皮肤有轻微瘙痒。', 'case-脱毛症-3-mark.jpg', NULL, '脱毛症', 'case-脱毛症-4-mark.jpg', NULL, '给予营养支持和皮肤局部治疗。', 'case-脱毛症-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (86, '外产科疾病', '趾间囊肿', 'case-趾间囊肿-1-mark.jpg', NULL, '一只2岁的金毛犬，主人反映犬只左后腿趾间有肿块。', 'case-趾间囊肿-2-mark.jpg', NULL, '检查发现左后腿趾间有肿块，触摸有明显压痛。', 'case-趾间囊肿-3-mark.jpg', NULL, '趾间囊肿', 'case-趾间囊肿-4-mark.jpg', NULL, '行手术切除囊肿。', 'case-趾间囊肿-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (87, '外产科疾病', '疝', 'case-疝-1-mark.jpg', NULL, '一只4岁的布偶猫，主人反映猫只腹部肿胀，活动不便，精神萎靡。', 'case-疝-2-mark.jpg', NULL, '猫只腹部明显肿大，触诊可感到突出的包块，轻轻按压有轻微疼痛反应。', 'case-疝-3-mark.jpg', NULL, '腹股沟区疝气。', 'case-疝-4-mark.jpg', NULL, '手术治疗。', 'case-疝-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (88, '外产科疾病', '阴道炎', 'case-阴道炎-1-mark.jpg', NULL, '一只2岁的波斯猫，主人反映猫只阴道分泌物增多，舔阴部频繁。', 'case-阴道炎-2-mark.jpg', NULL, '猫只阴道内有明显分泌物，外阴部有轻微红肿。', 'case-阴道炎-3-mark.jpg', NULL, '阴道炎。', 'case-阴道炎-4-mark.jpg', NULL, '局部清洁治疗和抗生素药物。', 'case-阴道炎-5-mark.jpg', NULL);
INSERT INTO `case_management` VALUES (89, '外产科疾病', '阴道脱出', 'case-阴道脱出-1-mark.jpg', NULL, '一只5岁的比熊犬，主人反映犬只阴道脱出，活动不便。', 'case-阴道脱出-2-mark.jpg', NULL, '犬只阴道明显外露，外阴部有轻微红肿，触诊可感到阴道外翻的组织。', 'case-阴道脱出-3-mark.jpg', NULL, '阴道脱垂。', 'case-阴道脱出-4-mark.jpg', NULL, '手术治疗。', 'case-阴道脱出-5-mark.jpg', NULL);

-- ----------------------------
-- Table structure for case_type
-- ----------------------------
DROP TABLE IF EXISTS `case_type`;
CREATE TABLE `case_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of case_type
-- ----------------------------
INSERT INTO `case_type` VALUES (5, '传染病');
INSERT INTO `case_type` VALUES (18, '其他');
INSERT INTO `case_type` VALUES (8, '内科');
INSERT INTO `case_type` VALUES (6, '外产科疾病');
INSERT INTO `case_type` VALUES (3, '寄生虫病');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

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
-- Table structure for office_management
-- ----------------------------
DROP TABLE IF EXISTS `office_management`;
CREATE TABLE `office_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室',
  `function` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '功能说明',
  `operation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作流程',
  `animation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '演示动画',
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主要负责人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of office_management
-- ----------------------------

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` int(10) NULL DEFAULT NULL,
  `total_score` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (1, 20, 100);
INSERT INTO `paper` VALUES (5, 30, 0);
INSERT INTO `paper` VALUES (6, 40, 0);
INSERT INTO `paper` VALUES (12, 40, 30);

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
INSERT INTO `paper_question` VALUES (1, 5);
INSERT INTO `paper_question` VALUES (1, 1);
INSERT INTO `paper_question` VALUES (1, 2);
INSERT INTO `paper_question` VALUES (1, 3);
INSERT INTO `paper_question` VALUES (1, 4);
INSERT INTO `paper_question` VALUES (1, 6);
INSERT INTO `paper_question` VALUES (12, 1);
INSERT INTO `paper_question` VALUES (12, 3);
INSERT INTO `paper_question` VALUES (12, 6);

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, '前台');
INSERT INTO `position` VALUES (2, '医助');
INSERT INTO `position` VALUES (3, '兽医');

-- ----------------------------
-- Table structure for position_job
-- ----------------------------
DROP TABLE IF EXISTS `position_job`;
CREATE TABLE `position_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of position_job
-- ----------------------------
INSERT INTO `position_job` VALUES (1, '前台', '招待', NULL, NULL, NULL);
INSERT INTO `position_job` VALUES (2, '医助', '静脉注射', NULL, NULL, NULL);
INSERT INTO `position_job` VALUES (3, '医助', '皮下注射', NULL, NULL, NULL);
INSERT INTO `position_job` VALUES (4, '医助', '肌肉注射', NULL, NULL, NULL);
INSERT INTO `position_job` VALUES (5, '医助', '局部封闭注射', NULL, NULL, NULL);
INSERT INTO `position_job` VALUES (6, '兽医', '手术无菌要求', NULL, NULL, NULL);
INSERT INTO `position_job` VALUES (7, '兽医', '常规手术', NULL, NULL, NULL);
INSERT INTO `position_job` VALUES (8, '兽医', '特殊手术', NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `question` VALUES (34, '以下哪种症状是猫白血病的常见表现？', '皮肤瘙痒和红肿', '呕吐和腹泻', '疲乏无力和食欲减退', '呼吸急促和发热', 'C', '传染病', 10);
INSERT INTO `question` VALUES (35, '以下哪种症状是猫白血病的常见表现？', '皮肤瘙痒和红肿', '呕吐和腹泻', '疲乏无力和食欲减退', '呼吸急促和发热', 'C', '传染病', 10);
INSERT INTO `question` VALUES (36, '以下哪种症状是猫传染性腹膜炎的表现？', '食欲减退和体重下降', '呼吸急促和发热', '呕吐和腹泻', '腹部肿胀和疼痛', 'D', '传染病', 10);
INSERT INTO `question` VALUES (37, '以下哪种症状是猫传染性鼻气管炎的表现？', '眼睛发红和流泪', '鼻涕和咳嗽', '皮肤瘙痒和头晕', '食欲减退和呕吐', 'B', '传染病', 10);

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

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
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
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
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (63, '2023-03-31 08:57:49', '2023-03-31 08:57:49');
INSERT INTO `test` VALUES (64, '2023-03-31 08:57:51', '2023-03-31 08:57:51');
INSERT INTO `test` VALUES (66, '2023-04-14 10:13:30', '2023-04-14 10:13:30');
INSERT INTO `test` VALUES (67, '2023-04-14 10:38:25', '2023-04-14 10:38:25');

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
INSERT INTO `test_paper` VALUES (67, 6);

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
INSERT INTO `test_user` VALUES (66, 3);
INSERT INTO `test_user` VALUES (67, 3);

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login`  (
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`account`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_login
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

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
