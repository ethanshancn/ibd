/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : ibd

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-04-29 08:34:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `eid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '学历ID',
  `ename` varchar(30) NOT NULL COMMENT '学历名称',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='学历表';

-- ----------------------------
-- Records of education
-- ----------------------------
INSERT INTO `education` VALUES ('1', '小学');
INSERT INTO `education` VALUES ('2', '初中');
INSERT INTO `education` VALUES ('3', '技工');
INSERT INTO `education` VALUES ('4', '职业高中');
INSERT INTO `education` VALUES ('5', '高中');
INSERT INTO `education` VALUES ('6', '中专');
INSERT INTO `education` VALUES ('7', '大专');
INSERT INTO `education` VALUES ('8', '本科');
INSERT INTO `education` VALUES ('9', '硕士');
INSERT INTO `education` VALUES ('10', '博士');

-- ----------------------------
-- Table structure for exam_blood
-- ----------------------------
DROP TABLE IF EXISTS `exam_blood`;
CREATE TABLE `exam_blood` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `white_num` double DEFAULT NULL COMMENT '白细胞计数',
  `red_num` double DEFAULT NULL COMMENT '血红细胞计数',
  `hgb` double DEFAULT NULL COMMENT '血红蛋白',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血常规';

-- ----------------------------
-- Records of exam_blood
-- ----------------------------

-- ----------------------------
-- Table structure for exam_blood_type
-- ----------------------------
DROP TABLE IF EXISTS `exam_blood_type`;
CREATE TABLE `exam_blood_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `abo` double DEFAULT NULL COMMENT 'ABO',
  `rh` double DEFAULT NULL COMMENT 'Rh',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血型';

-- ----------------------------
-- Records of exam_blood_type
-- ----------------------------

-- ----------------------------
-- Table structure for exam_cg
-- ----------------------------
DROP TABLE IF EXISTS `exam_cg`;
CREATE TABLE `exam_cg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `cg` double DEFAULT NULL COMMENT '甘胆酸',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='甘胆酸';

-- ----------------------------
-- Records of exam_cg
-- ----------------------------

-- ----------------------------
-- Table structure for exam_ferritin
-- ----------------------------
DROP TABLE IF EXISTS `exam_ferritin`;
CREATE TABLE `exam_ferritin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `ferritin` double DEFAULT NULL COMMENT '铁蛋白',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='铁蛋白';

-- ----------------------------
-- Records of exam_ferritin
-- ----------------------------

-- ----------------------------
-- Table structure for exam_kidney
-- ----------------------------
DROP TABLE IF EXISTS `exam_kidney`;
CREATE TABLE `exam_kidney` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `cr` double DEFAULT NULL COMMENT '肌酐',
  `bun` double DEFAULT NULL COMMENT '尿素氮',
  `bg` double DEFAULT NULL COMMENT '血糖',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='肾功能';

-- ----------------------------
-- Records of exam_kidney
-- ----------------------------

-- ----------------------------
-- Table structure for exam_liver
-- ----------------------------
DROP TABLE IF EXISTS `exam_liver`;
CREATE TABLE `exam_liver` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `all_pro` double DEFAULT NULL COMMENT '总蛋白',
  `white_pro` double DEFAULT NULL COMMENT '白蛋白',
  `tbil` double DEFAULT NULL COMMENT '总胆红素',
  `alt` double DEFAULT NULL COMMENT 'ALT',
  `ast` double DEFAULT NULL COMMENT 'AST',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='肝功能';

-- ----------------------------
-- Records of exam_liver
-- ----------------------------

-- ----------------------------
-- Table structure for exam_result
-- ----------------------------
DROP TABLE IF EXISTS `exam_result`;
CREATE TABLE `exam_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `down_syndrome` tinyint(4) DEFAULT NULL COMMENT '唐氏筛查是否存在畸形的情况  0：不存在；1：存在',
  `ogtt` tinyint(4) DEFAULT NULL COMMENT '是否有妊娠期糖尿病 0：没有；1；有',
  `blood_pressure` tinyint(4) DEFAULT NULL COMMENT '是否高血压 0：没有；1：有',
  `result` tinyint(4) DEFAULT NULL COMMENT '妊娠结局 0：夭折；2：流产；3：早产；4：足月产',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结局';

-- ----------------------------
-- Records of exam_result
-- ----------------------------

-- ----------------------------
-- Table structure for exam_torch
-- ----------------------------
DROP TABLE IF EXISTS `exam_torch`;
CREATE TABLE `exam_torch` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `tox` double DEFAULT NULL COMMENT '弓形虫',
  `rubella` double DEFAULT NULL COMMENT '风疹',
  `vv` double DEFAULT NULL COMMENT '泡状病毒',
  `cmv` double DEFAULT NULL COMMENT '巨细胞',
  `other` double DEFAULT NULL COMMENT '其他',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Torch';

-- ----------------------------
-- Records of exam_torch
-- ----------------------------

-- ----------------------------
-- Table structure for exam_type_b
-- ----------------------------
DROP TABLE IF EXISTS `exam_type_b`;
CREATE TABLE `exam_type_b` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间/首次检查日期',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `first_result` varchar(255) DEFAULT NULL COMMENT '首次检查结果',
  `total_num` int(11) DEFAULT NULL COMMENT '累计次数',
  `coincide` tinyint(4) DEFAULT NULL COMMENT '孕周与停经是否相符 0：不相符；1：相符',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='B超（首次）/（汇总）';

-- ----------------------------
-- Records of exam_type_b
-- ----------------------------

-- ----------------------------
-- Table structure for exam_urine
-- ----------------------------
DROP TABLE IF EXISTS `exam_urine`;
CREATE TABLE `exam_urine` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL COMMENT '孕妇ID',
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查日期',
  `exam_org` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查单位',
  `sg` double DEFAULT NULL COMMENT '尿比重',
  `kbt` double DEFAULT NULL COMMENT '尿胴体',
  `pro` double DEFAULT NULL COMMENT '尿蛋白',
  `glucose` double DEFAULT NULL COMMENT '葡萄糖',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='尿常规';

-- ----------------------------
-- Records of exam_urine
-- ----------------------------

-- ----------------------------
-- Table structure for exam_virus
-- ----------------------------
DROP TABLE IF EXISTS `exam_virus`;
CREATE TABLE `exam_virus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `hbsag` double DEFAULT NULL COMMENT '乙肝表面抗原',
  `hbsab` double DEFAULT NULL COMMENT '乙肝表面抗体',
  `hbcab` double DEFAULT NULL COMMENT '乙肝核心抗体',
  `hbeag` double DEFAULT NULL COMMENT '乙肝E抗原',
  `hbeab` double DEFAULT NULL COMMENT '乙肝E抗体',
  `hcv` double DEFAULT NULL COMMENT '丙肝抗体',
  `hiv` double DEFAULT NULL COMMENT 'HIV',
  `tppa` double DEFAULT NULL COMMENT '梅毒',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='病毒八项';

-- ----------------------------
-- Records of exam_virus
-- ----------------------------

-- ----------------------------
-- Table structure for gravida
-- ----------------------------
DROP TABLE IF EXISTS `gravida`;
CREATE TABLE `gravida` (
  `gid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '内部自增ID',
  `hospital_num` varchar(255) NOT NULL DEFAULT '0' COMMENT '住院号',
  `paper_num` varchar(255) DEFAULT NULL COMMENT '右上角的编号',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `nation` varchar(30) NOT NULL DEFAULT '汉' COMMENT '民族',
  `native_place` varchar(30) DEFAULT NULL COMMENT '籍贯',
  `age` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '年龄',
  `eid` tinyint(4) NOT NULL DEFAULT '8' COMMENT '学历',
  `married` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否结婚 0：未婚；1：已婚',
  `work` varchar(255) DEFAULT NULL COMMENT '工作',
  `work_place` varchar(255) DEFAULT NULL COMMENT '工作地点',
  `birth_place` varchar(255) DEFAULT NULL COMMENT '出生地',
  `now_home_place` varchar(255) DEFAULT NULL COMMENT '现住址',
  `height` double DEFAULT NULL COMMENT '身高',
  `pregnancy_risk` double DEFAULT NULL COMMENT '妊娠高危因素评分',
  `ommon_weight` double DEFAULT NULL COMMENT '孕前体重',
  `birth_weight` double DEFAULT NULL COMMENT '产时体重',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='孕妇基础信息表';

-- ----------------------------
-- Records of gravida
-- ----------------------------

-- ----------------------------
-- Table structure for gravida_data
-- ----------------------------
DROP TABLE IF EXISTS `gravida_data`;
CREATE TABLE `gravida_data` (
  `gid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_smoking` tinyint(4) NOT NULL DEFAULT '0' COMMENT '吸烟史 0：没有；1：有',
  `is_drinking` tinyint(4) NOT NULL DEFAULT '0' COMMENT '饮酒史 0：没有；1：有',
  `is_infected` tinyint(4) NOT NULL DEFAULT '0' COMMENT '疫水、疫区接触史 0：没有；1：有',
  `is_lustful` tinyint(4) NOT NULL DEFAULT '0' COMMENT '冶游史 0：没有；1：有',
  `menarche_age` tinyint(4) DEFAULT NULL COMMENT '初潮年龄',
  `menstrual` tinyint(4) DEFAULT NULL COMMENT '经期',
  `period` tinyint(4) DEFAULT NULL COMMENT '周期',
  `last_mens` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '末次月经时间',
  `mens_volume` double DEFAULT NULL COMMENT '月经量',
  `is_dys` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否有痛经史 0：没有；1：有',
  `is_whites_abnormal` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否白带有异常 0：没有；1：有',
  `marry_age` tinyint(4) unsigned DEFAULT NULL COMMENT '结婚年龄',
  `is_remarry` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否再婚 0： 不是；1：是',
  `is_close` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否近亲 0：不是；1：是',
  `first_night_age` tinyint(4) unsigned DEFAULT NULL COMMENT '初次性生活年龄',
  `husband_name` varchar(50) DEFAULT NULL COMMENT '配偶姓名',
  `husband_age` varchar(50) DEFAULT NULL COMMENT '配偶年龄',
  `husband_eid` tinyint(4) DEFAULT NULL COMMENT '配偶学历',
  `husband_work` varchar(255) DEFAULT NULL COMMENT '配偶工作',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='孕妇附属信息表，包含：个人史;月经史;婚姻史';

-- ----------------------------
-- Records of gravida_data
-- ----------------------------

-- ----------------------------
-- Table structure for history_birth
-- ----------------------------
DROP TABLE IF EXISTS `history_birth`;
CREATE TABLE `history_birth` (
  `hb_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL COMMENT '孕妇ID',
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `place` varchar(255) DEFAULT NULL COMMENT '地点',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别 0：女；1男',
  `birth_weight` double unsigned DEFAULT NULL COMMENT '出生体重',
  `is_clean_uterus` tinyint(4) DEFAULT NULL COMMENT '是否清宫 0：没有；1：有',
  `type` tinyint(4) unsigned DEFAULT NULL COMMENT '生育类型 1：足月产；2：早产；3：流产；4：夭折',
  PRIMARY KEY (`hb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生育史';

-- ----------------------------
-- Records of history_birth
-- ----------------------------

-- ----------------------------
-- Table structure for history_family_ill
-- ----------------------------
DROP TABLE IF EXISTS `history_family_ill`;
CREATE TABLE `history_family_ill` (
  `hfi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL COMMENT '孕妇ID',
  `ill_type` tinyint(4) DEFAULT NULL COMMENT '家族病类型 1：高血压；2：糖尿病；3：血友病；4：白化病；5：精神病；6：其他',
  `role` varchar(255) DEFAULT NULL COMMENT '角色 0：孕妇本人；1：配偶',
  PRIMARY KEY (`hfi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家族病史';

-- ----------------------------
-- Records of history_family_ill
-- ----------------------------

-- ----------------------------
-- Table structure for history_now_ill
-- ----------------------------
DROP TABLE IF EXISTS `history_now_ill`;
CREATE TABLE `history_now_ill` (
  `hni_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '现病史自增ID',
  `gid` int(11) unsigned NOT NULL COMMENT '孕妇ID',
  `first_move` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '初次胎动时间',
  `morning_sick_beg` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '早孕反应开始时间',
  `morning_sick_end` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '早孕反应结束时间',
  `is_vaginal_blood` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否阴道流血 0：不；1：是',
  `is_prevent_mis` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否保胎治疗 0：没有； 1：进行过',
  `is_folic` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否补充叶酸 0：没有；1：有',
  `is_vitamin` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否补充维生素 0：没有；1：有',
  `is_iron` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否补充铁剂 0：没有；1：有',
  `careful_grug` varchar(255) DEFAULT NULL COMMENT '慎用药物暴露',
  `virus` varchar(255) DEFAULT NULL COMMENT '病毒暴露',
  `ray` varchar(255) DEFAULT NULL COMMENT '射线暴露',
  `other` varchar(255) DEFAULT NULL COMMENT '其他',
  PRIMARY KEY (`hni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='现病史';

-- ----------------------------
-- Records of history_now_ill
-- ----------------------------

-- ----------------------------
-- Table structure for history_past_ill
-- ----------------------------
DROP TABLE IF EXISTS `history_past_ill`;
CREATE TABLE `history_past_ill` (
  `hpi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '慢性病的名称',
  `ill_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '既往病史的种类 1:慢性病；2：传染病；3：重大外伤史；4：手术史；5：输血史',
  `starttime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '慢性病开始时间',
  `endtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '慢性病结束时间',
  PRIMARY KEY (`hpi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='既往病史';

-- ----------------------------
-- Records of history_past_ill
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '用户名',
  `passwd` varchar(64) NOT NULL COMMENT '密码',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
