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

 Date: 07/04/2023 10:01:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department_management
-- ----------------------------
DROP TABLE IF EXISTS `department_management`;
CREATE TABLE `department_management`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

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

SET FOREIGN_KEY_CHECKS = 1;
