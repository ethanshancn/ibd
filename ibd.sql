-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-04-30 22:49:58
-- 服务器版本： 5.6.26
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibd`
--

-- --------------------------------------------------------

--
-- 表的结构 `education`
--

CREATE TABLE `education` (
  `eid` int(11) UNSIGNED NOT NULL COMMENT '学历ID',
  `ename` varchar(30) NOT NULL COMMENT '学历名称',
  `most_popular` tinyint(3) UNSIGNED ZEROFILL NOT NULL COMMENT '最常见的教育水平，用来设置默认选择项'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学历表';

--
-- 转存表中的数据 `education`
--

INSERT INTO `education` (`eid`, `ename`, `most_popular`) VALUES
(1, '小学', 000),
(2, '初中', 000),
(3, '技工', 000),
(4, '职业高中', 000),
(5, '高中', 001),
(6, '中专', 000),
(7, '大专', 000),
(8, '本科', 000),
(9, '硕士', 000),
(10, '博士', 000);

-- --------------------------------------------------------

--
-- 表的结构 `exam_blood`
--

CREATE TABLE `exam_blood` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `white_num` double DEFAULT NULL COMMENT '白细胞计数',
  `red_num` double DEFAULT NULL COMMENT '血红细胞计数',
  `hgb` double DEFAULT NULL COMMENT '血红蛋白'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血常规';

-- --------------------------------------------------------

--
-- 表的结构 `exam_blood_type`
--

CREATE TABLE `exam_blood_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `abo` double DEFAULT NULL COMMENT 'ABO',
  `rh` double DEFAULT NULL COMMENT 'Rh'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血型';

-- --------------------------------------------------------

--
-- 表的结构 `exam_cg`
--

CREATE TABLE `exam_cg` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `cg` double DEFAULT NULL COMMENT '甘胆酸'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='甘胆酸';

-- --------------------------------------------------------

--
-- 表的结构 `exam_ferritin`
--

CREATE TABLE `exam_ferritin` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `ferritin` double DEFAULT NULL COMMENT '铁蛋白'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='铁蛋白';

-- --------------------------------------------------------

--
-- 表的结构 `exam_kidney`
--

CREATE TABLE `exam_kidney` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `cr` double DEFAULT NULL COMMENT '肌酐',
  `bun` double DEFAULT NULL COMMENT '尿素氮',
  `bg` double DEFAULT NULL COMMENT '血糖'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='肾功能';

-- --------------------------------------------------------

--
-- 表的结构 `exam_liver`
--

CREATE TABLE `exam_liver` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `all_pro` double DEFAULT NULL COMMENT '总蛋白',
  `white_pro` double DEFAULT NULL COMMENT '白蛋白',
  `tbil` double DEFAULT NULL COMMENT '总胆红素',
  `alt` double DEFAULT NULL COMMENT 'ALT',
  `ast` double DEFAULT NULL COMMENT 'AST'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='肝功能';

-- --------------------------------------------------------

--
-- 表的结构 `exam_result`
--

CREATE TABLE `exam_result` (
  `id` int(11) UNSIGNED NOT NULL,
  `down_syndrome` tinyint(4) DEFAULT NULL COMMENT '唐氏筛查是否存在畸形的情况  0：不存在；1：存在',
  `ogtt` tinyint(4) DEFAULT NULL COMMENT '是否有妊娠期糖尿病 0：没有；1；有',
  `blood_pressure` tinyint(4) DEFAULT NULL COMMENT '是否高血压 0：没有；1：有',
  `result` tinyint(4) DEFAULT NULL COMMENT '妊娠结局 0：夭折；2：流产；3：早产；4：足月产'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结局';

-- --------------------------------------------------------

--
-- 表的结构 `exam_torch`
--

CREATE TABLE `exam_torch` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `tox` double DEFAULT NULL COMMENT '弓形虫',
  `rubella` double DEFAULT NULL COMMENT '风疹',
  `vv` double DEFAULT NULL COMMENT '泡状病毒',
  `cmv` double DEFAULT NULL COMMENT '巨细胞',
  `other` double DEFAULT NULL COMMENT '其他'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Torch';

-- --------------------------------------------------------

--
-- 表的结构 `exam_type_b`
--

CREATE TABLE `exam_type_b` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间/首次检查日期',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `first_result` varchar(255) DEFAULT NULL COMMENT '首次检查结果',
  `total_num` int(11) DEFAULT NULL COMMENT '累计次数',
  `coincide` tinyint(4) DEFAULT NULL COMMENT '孕周与停经是否相符 0：不相符；1：相符'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='B超（首次）/（汇总）';

-- --------------------------------------------------------

--
-- 表的结构 `exam_urine`
--

CREATE TABLE `exam_urine` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) NOT NULL COMMENT '孕妇ID',
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查日期',
  `exam_org` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查单位',
  `sg` double DEFAULT NULL COMMENT '尿比重',
  `kbt` double DEFAULT NULL COMMENT '尿胴体',
  `pro` double DEFAULT NULL COMMENT '尿蛋白',
  `glucose` double DEFAULT NULL COMMENT '葡萄糖'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='尿常规';

-- --------------------------------------------------------

--
-- 表的结构 `exam_virus`
--

CREATE TABLE `exam_virus` (
  `id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL,
  `exam_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '检查时间',
  `exam_org` varchar(255) DEFAULT NULL COMMENT '检查单位',
  `hbsag` double DEFAULT NULL COMMENT '乙肝表面抗原',
  `hbsab` double DEFAULT NULL COMMENT '乙肝表面抗体',
  `hbcab` double DEFAULT NULL COMMENT '乙肝核心抗体',
  `hbeag` double DEFAULT NULL COMMENT '乙肝E抗原',
  `hbeab` double DEFAULT NULL COMMENT '乙肝E抗体',
  `hcv` double DEFAULT NULL COMMENT '丙肝抗体',
  `hiv` double DEFAULT NULL COMMENT 'HIV',
  `tppa` double DEFAULT NULL COMMENT '梅毒'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='病毒八项';

-- --------------------------------------------------------

--
-- 表的结构 `gravida`
--

CREATE TABLE `gravida` (
  `gid` int(11) UNSIGNED NOT NULL COMMENT '内部自增ID',
  `hospital_num` varchar(255) NOT NULL DEFAULT '0' COMMENT '住院号',
  `paper_num` varchar(255) DEFAULT NULL COMMENT '右上角的编号',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `nation` varchar(30) NOT NULL DEFAULT '汉' COMMENT '民族',
  `native_place` varchar(30) DEFAULT NULL COMMENT '籍贯',
  `age` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '年龄',
  `eid` tinyint(4) NOT NULL DEFAULT '8' COMMENT '学历',
  `married` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否结婚 0：未婚；1：已婚',
  `work` varchar(255) DEFAULT NULL COMMENT '工作',
  `work_place` varchar(255) DEFAULT NULL COMMENT '工作地点(暂时不用)',
  `birth_place` varchar(255) DEFAULT NULL COMMENT '出生地',
  `now_home_place` varchar(255) DEFAULT NULL COMMENT '现住址',
  `height` double DEFAULT NULL COMMENT '身高',
  `pregnancy_risk` double DEFAULT NULL COMMENT '妊娠高危因素评分',
  `common_weight` double DEFAULT NULL COMMENT '孕前体重',
  `birth_weight` double DEFAULT NULL COMMENT '产时体重'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='孕妇基础信息表';

-- --------------------------------------------------------

--
-- 表的结构 `gravida_data`
--

CREATE TABLE `gravida_data` (
  `gid` int(11) UNSIGNED NOT NULL,
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
  `marry_age` tinyint(4) UNSIGNED DEFAULT NULL COMMENT '结婚年龄',
  `is_remarry` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否再婚 0： 不是；1：是',
  `is_close` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否近亲 0：不是；1：是',
  `first_night_age` tinyint(4) UNSIGNED DEFAULT NULL COMMENT '初次性生活年龄',
  `husband_name` varchar(50) DEFAULT NULL COMMENT '配偶姓名',
  `husband_age` varchar(50) DEFAULT NULL COMMENT '配偶年龄',
  `husband_eid` tinyint(4) DEFAULT NULL COMMENT '配偶学历',
  `husband_work` varchar(255) DEFAULT NULL COMMENT '配偶工作'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='孕妇附属信息表，包含：个人史;月经史;婚姻史';

-- --------------------------------------------------------

--
-- 表的结构 `history_birth`
--

CREATE TABLE `history_birth` (
  `hb_id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL COMMENT '孕妇ID',
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `place` varchar(255) DEFAULT NULL COMMENT '地点',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别 0：女；1男',
  `birth_weight` double UNSIGNED DEFAULT NULL COMMENT '出生体重',
  `is_clean_uterus` tinyint(4) DEFAULT NULL COMMENT '是否清宫 0：没有；1：有',
  `other_inf` varchar(255) NOT NULL COMMENT '关于夭折的信息以及其他备注',
  `type` tinyint(4) UNSIGNED DEFAULT NULL COMMENT '生育类型 1：足月产；2：早产；3：流产；4：夭折'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生育史';

-- --------------------------------------------------------

--
-- 表的结构 `history_family_ill`
--

CREATE TABLE `history_family_ill` (
  `hfi_id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED NOT NULL COMMENT '孕妇ID',
  `ill_type` tinyint(4) DEFAULT NULL COMMENT '家族病类型 1：高血压；2：糖尿病；3：血友病；4：白化病；5：精神病；6：其他',
  `role` varchar(255) DEFAULT NULL COMMENT '角色 0：孕妇本人；1：配偶'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家族病史';

-- --------------------------------------------------------

--
-- 表的结构 `history_now_ill`
--

CREATE TABLE `history_now_ill` (
  `hni_id` int(11) UNSIGNED NOT NULL COMMENT '现病史自增ID',
  `gid` int(11) UNSIGNED NOT NULL COMMENT '孕妇ID',
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
  `other` varchar(255) DEFAULT NULL COMMENT '其他'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='现病史';

-- --------------------------------------------------------

--
-- 表的结构 `history_past_ill`
--

CREATE TABLE `history_past_ill` (
  `hpi_id` int(11) UNSIGNED NOT NULL,
  `gid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '慢性病的名称',
  `ill_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '既往病史的种类 1:慢性病；2：传染病；3：重大外伤史；4：手术史；5：输血史',
  `starttime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '慢性病开始时间',
  `endtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '慢性病结束时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='既往病史';

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '用户名',
  `passwd` varchar(64) NOT NULL COMMENT '密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台用户表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `exam_blood`
--
ALTER TABLE `exam_blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_blood_type`
--
ALTER TABLE `exam_blood_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_cg`
--
ALTER TABLE `exam_cg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_ferritin`
--
ALTER TABLE `exam_ferritin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_kidney`
--
ALTER TABLE `exam_kidney`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_liver`
--
ALTER TABLE `exam_liver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_torch`
--
ALTER TABLE `exam_torch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_type_b`
--
ALTER TABLE `exam_type_b`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_urine`
--
ALTER TABLE `exam_urine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_virus`
--
ALTER TABLE `exam_virus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gravida`
--
ALTER TABLE `gravida`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `gravida_data`
--
ALTER TABLE `gravida_data`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `history_birth`
--
ALTER TABLE `history_birth`
  ADD PRIMARY KEY (`hb_id`);

--
-- Indexes for table `history_family_ill`
--
ALTER TABLE `history_family_ill`
  ADD PRIMARY KEY (`hfi_id`);

--
-- Indexes for table `history_now_ill`
--
ALTER TABLE `history_now_ill`
  ADD PRIMARY KEY (`hni_id`);

--
-- Indexes for table `history_past_ill`
--
ALTER TABLE `history_past_ill`
  ADD PRIMARY KEY (`hpi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `education`
--
ALTER TABLE `education`
  MODIFY `eid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '学历ID', AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `exam_blood`
--
ALTER TABLE `exam_blood`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_blood_type`
--
ALTER TABLE `exam_blood_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_cg`
--
ALTER TABLE `exam_cg`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_ferritin`
--
ALTER TABLE `exam_ferritin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_kidney`
--
ALTER TABLE `exam_kidney`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_liver`
--
ALTER TABLE `exam_liver`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_result`
--
ALTER TABLE `exam_result`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_torch`
--
ALTER TABLE `exam_torch`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_type_b`
--
ALTER TABLE `exam_type_b`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_urine`
--
ALTER TABLE `exam_urine`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `exam_virus`
--
ALTER TABLE `exam_virus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `gravida`
--
ALTER TABLE `gravida`
  MODIFY `gid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '内部自增ID';
--
-- 使用表AUTO_INCREMENT `gravida_data`
--
ALTER TABLE `gravida_data`
  MODIFY `gid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `history_birth`
--
ALTER TABLE `history_birth`
  MODIFY `hb_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `history_family_ill`
--
ALTER TABLE `history_family_ill`
  MODIFY `hfi_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `history_now_ill`
--
ALTER TABLE `history_now_ill`
  MODIFY `hni_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '现病史自增ID';
--
-- 使用表AUTO_INCREMENT `history_past_ill`
--
ALTER TABLE `history_past_ill`
  MODIFY `hpi_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
