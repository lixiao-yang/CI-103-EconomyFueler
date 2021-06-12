/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : economic_fueler

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-05-31 16:09:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for balance_data_average
-- ----------------------------
DROP TABLE IF EXISTS `balance_data_average`;
CREATE TABLE `balance_data_average` (
  `ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `DIMEN_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `TIME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `INDUS_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROVINCE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCALE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BS_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `UNIT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`,`DIMEN_ID`,`INDUS_ID`,`BS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of balance_data_average
-- ----------------------------
INSERT INTO `balance_data_average` VALUES ('1', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '104911969.94');
INSERT INTO `balance_data_average` VALUES ('10', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '225297923.52');
INSERT INTO `balance_data_average` VALUES ('100', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'inventory_avg', '1', '28798778.869');
INSERT INTO `balance_data_average` VALUES ('101', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'inventory_avg', '1', '38878349.601');
INSERT INTO `balance_data_average` VALUES ('102', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'inventory_avg', '1', '66670027.305');
INSERT INTO `balance_data_average` VALUES ('103', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'inventory_avg', '1', '27017763.002');
INSERT INTO `balance_data_average` VALUES ('104', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'inventory_avg', '1', '52198896.82');
INSERT INTO `balance_data_average` VALUES ('105', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'inventory_avg', '1', '24180168.332');
INSERT INTO `balance_data_average` VALUES ('106', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'inventory_avg', '1', '16574002.574');
INSERT INTO `balance_data_average` VALUES ('107', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'inventory_avg', '1', '20410234.899');
INSERT INTO `balance_data_average` VALUES ('108', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'inventory_avg', '1', '31695961.995');
INSERT INTO `balance_data_average` VALUES ('109', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '57010601.181');
INSERT INTO `balance_data_average` VALUES ('11', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '246884452.79');
INSERT INTO `balance_data_average` VALUES ('110', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '66192992.061');
INSERT INTO `balance_data_average` VALUES ('111', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '1311481481.5');
INSERT INTO `balance_data_average` VALUES ('112', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '56084071.446');
INSERT INTO `balance_data_average` VALUES ('113', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '41013599.474');
INSERT INTO `balance_data_average` VALUES ('114', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '96552749.719');
INSERT INTO `balance_data_average` VALUES ('115', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '43367152.065');
INSERT INTO `balance_data_average` VALUES ('116', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '39260549.133');
INSERT INTO `balance_data_average` VALUES ('117', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '668730353.63');
INSERT INTO `balance_data_average` VALUES ('118', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '128097197.6');
INSERT INTO `balance_data_average` VALUES ('119', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '108076248.63');
INSERT INTO `balance_data_average` VALUES ('12', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '306323545.11');
INSERT INTO `balance_data_average` VALUES ('120', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '192504004.27');
INSERT INTO `balance_data_average` VALUES ('121', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '51983431.157');
INSERT INTO `balance_data_average` VALUES ('122', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '66639881.872');
INSERT INTO `balance_data_average` VALUES ('123', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '359590716.91');
INSERT INTO `balance_data_average` VALUES ('124', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '254396893.87');
INSERT INTO `balance_data_average` VALUES ('125', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '57233604.57');
INSERT INTO `balance_data_average` VALUES ('126', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '78980573.711');
INSERT INTO `balance_data_average` VALUES ('127', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '97424542.076');
INSERT INTO `balance_data_average` VALUES ('128', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '201816858.92');
INSERT INTO `balance_data_average` VALUES ('129', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '260449275.36');
INSERT INTO `balance_data_average` VALUES ('13', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '98748104.671');
INSERT INTO `balance_data_average` VALUES ('130', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '116552742.82');
INSERT INTO `balance_data_average` VALUES ('131', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '219107803.37');
INSERT INTO `balance_data_average` VALUES ('132', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '74583903.209');
INSERT INTO `balance_data_average` VALUES ('133', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '60788288.288');
INSERT INTO `balance_data_average` VALUES ('134', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '77548657.718');
INSERT INTO `balance_data_average` VALUES ('135', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'ttl_liab_avg', '1', '161220902.61');
INSERT INTO `balance_data_average` VALUES ('136', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '47269636.787');
INSERT INTO `balance_data_average` VALUES ('137', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '55149876.814');
INSERT INTO `balance_data_average` VALUES ('138', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '1276177777.8');
INSERT INTO `balance_data_average` VALUES ('139', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '46858624.908');
INSERT INTO `balance_data_average` VALUES ('14', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '121588681.71');
INSERT INTO `balance_data_average` VALUES ('140', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '35354683.045');
INSERT INTO `balance_data_average` VALUES ('141', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '73186026.936');
INSERT INTO `balance_data_average` VALUES ('142', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '37123895.918');
INSERT INTO `balance_data_average` VALUES ('143', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '33981936.416');
INSERT INTO `balance_data_average` VALUES ('144', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '545236247.54');
INSERT INTO `balance_data_average` VALUES ('145', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '97474677.133');
INSERT INTO `balance_data_average` VALUES ('146', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '87333646.469');
INSERT INTO `balance_data_average` VALUES ('147', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '163231179.93');
INSERT INTO `balance_data_average` VALUES ('148', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '43403215.945');
INSERT INTO `balance_data_average` VALUES ('149', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '52269496.24');
INSERT INTO `balance_data_average` VALUES ('15', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '534774632.35');
INSERT INTO `balance_data_average` VALUES ('150', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '295499540.44');
INSERT INTO `balance_data_average` VALUES ('151', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '197164797.24');
INSERT INTO `balance_data_average` VALUES ('152', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '48880530.258');
INSERT INTO `balance_data_average` VALUES ('153', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '67836147.422');
INSERT INTO `balance_data_average` VALUES ('154', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '81922484.736');
INSERT INTO `balance_data_average` VALUES ('155', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '170919787.05');
INSERT INTO `balance_data_average` VALUES ('156', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '215686200.38');
INSERT INTO `balance_data_average` VALUES ('157', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '101664782.71');
INSERT INTO `balance_data_average` VALUES ('158', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '194420100.58');
INSERT INTO `balance_data_average` VALUES ('159', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '65984218.832');
INSERT INTO `balance_data_average` VALUES ('16', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '404222893.3');
INSERT INTO `balance_data_average` VALUES ('160', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '48901544.402');
INSERT INTO `balance_data_average` VALUES ('161', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '68823825.503');
INSERT INTO `balance_data_average` VALUES ('162', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'ttl_cur_liab_avg', '1', '130282660.33');
INSERT INTO `balance_data_average` VALUES ('163', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '8728171.4081');
INSERT INTO `balance_data_average` VALUES ('164', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '13742540.378');
INSERT INTO `balance_data_average` VALUES ('165', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '549844444.44');
INSERT INTO `balance_data_average` VALUES ('166', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '7664203.5723');
INSERT INTO `balance_data_average` VALUES ('167', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '8866856.7668');
INSERT INTO `balance_data_average` VALUES ('168', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '15711980.92');
INSERT INTO `balance_data_average` VALUES ('169', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '10235617.092');
INSERT INTO `balance_data_average` VALUES ('17', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '104601498.09');
INSERT INTO `balance_data_average` VALUES ('170', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '9432369.9422');
INSERT INTO `balance_data_average` VALUES ('171', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '141075638.51');
INSERT INTO `balance_data_average` VALUES ('172', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '21155229.172');
INSERT INTO `balance_data_average` VALUES ('173', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '18488179.114');
INSERT INTO `balance_data_average` VALUES ('174', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '25949279.231');
INSERT INTO `balance_data_average` VALUES ('175', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '10575262.9');
INSERT INTO `balance_data_average` VALUES ('176', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '12427938.601');
INSERT INTO `balance_data_average` VALUES ('177', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '64384283.088');
INSERT INTO `balance_data_average` VALUES ('178', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '35714840.38');
INSERT INTO `balance_data_average` VALUES ('179', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '11435792.423');
INSERT INTO `balance_data_average` VALUES ('18', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '142944762.16');
INSERT INTO `balance_data_average` VALUES ('180', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '20738834.423');
INSERT INTO `balance_data_average` VALUES ('181', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '25075059.729');
INSERT INTO `balance_data_average` VALUES ('182', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '65328660.16');
INSERT INTO `balance_data_average` VALUES ('183', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '64721067.003');
INSERT INTO `balance_data_average` VALUES ('184', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '32361101.876');
INSERT INTO `balance_data_average` VALUES ('185', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '101610317.98');
INSERT INTO `balance_data_average` VALUES ('186', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '22592582.851');
INSERT INTO `balance_data_average` VALUES ('187', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '13889317.889');
INSERT INTO `balance_data_average` VALUES ('188', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '19365771.812');
INSERT INTO `balance_data_average` VALUES ('189', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'acc_pay_avg', '1', '33197149.644');
INSERT INTO `balance_data_average` VALUES ('19', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '175229094.77');
INSERT INTO `balance_data_average` VALUES ('190', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '47211084.273');
INSERT INTO `balance_data_average` VALUES ('191', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '69995893.786');
INSERT INTO `balance_data_average` VALUES ('192', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '3936007407.4');
INSERT INTO `balance_data_average` VALUES ('193', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '43626278.444');
INSERT INTO `balance_data_average` VALUES ('194', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '36439131.388');
INSERT INTO `balance_data_average` VALUES ('195', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '69314534.231');
INSERT INTO `balance_data_average` VALUES ('196', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '46523275.245');
INSERT INTO `balance_data_average` VALUES ('197', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '33982947.977');
INSERT INTO `balance_data_average` VALUES ('198', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '356759823.18');
INSERT INTO `balance_data_average` VALUES ('199', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '96723769.731');
INSERT INTO `balance_data_average` VALUES ('2', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '137006296.19');
INSERT INTO `balance_data_average` VALUES ('20', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '358470097.6');
INSERT INTO `balance_data_average` VALUES ('200', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '138149365.9');
INSERT INTO `balance_data_average` VALUES ('201', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '113447944.47');
INSERT INTO `balance_data_average` VALUES ('202', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '46347578.87');
INSERT INTO `balance_data_average` VALUES ('203', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '54246660.486');
INSERT INTO `balance_data_average` VALUES ('204', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '174249724.26');
INSERT INTO `balance_data_average` VALUES ('205', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '147698878.34');
INSERT INTO `balance_data_average` VALUES ('206', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '46891685.078');
INSERT INTO `balance_data_average` VALUES ('207', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '63585103.486');
INSERT INTO `balance_data_average` VALUES ('208', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '77347823.201');
INSERT INTO `balance_data_average` VALUES ('209', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '155886601.6');
INSERT INTO `balance_data_average` VALUES ('21', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '392660575.51');
INSERT INTO `balance_data_average` VALUES ('210', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '132096198.28');
INSERT INTO `balance_data_average` VALUES ('211', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '83434101.164');
INSERT INTO `balance_data_average` VALUES ('212', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '156731424.4');
INSERT INTO `balance_data_average` VALUES ('213', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '78786691.215');
INSERT INTO `balance_data_average` VALUES ('214', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '49252252.252');
INSERT INTO `balance_data_average` VALUES ('215', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '40466442.953');
INSERT INTO `balance_data_average` VALUES ('216', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'ttl_sharehold_avg', '1', '117301662.71');
INSERT INTO `balance_data_average` VALUES ('217', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '19754249.419');
INSERT INTO `balance_data_average` VALUES ('218', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '31370106.762');
INSERT INTO `balance_data_average` VALUES ('219', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '707651851.85');
INSERT INTO `balance_data_average` VALUES ('22', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '200985229.16');
INSERT INTO `balance_data_average` VALUES ('220', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '20745926.107');
INSERT INTO `balance_data_average` VALUES ('221', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '19454704.979');
INSERT INTO `balance_data_average` VALUES ('222', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '42447250.281');
INSERT INTO `balance_data_average` VALUES ('223', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '22688231.081');
INSERT INTO `balance_data_average` VALUES ('224', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '15914884.393');
INSERT INTO `balance_data_average` VALUES ('225', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '243551080.55');
INSERT INTO `balance_data_average` VALUES ('226', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '50263104.583');
INSERT INTO `balance_data_average` VALUES ('227', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '49401283.858');
INSERT INTO `balance_data_average` VALUES ('228', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '57829684.997');
INSERT INTO `balance_data_average` VALUES ('229', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '70390193.201');
INSERT INTO `balance_data_average` VALUES ('23', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '376604639.84');
INSERT INTO `balance_data_average` VALUES ('230', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '28370076.577');
INSERT INTO `balance_data_average` VALUES ('231', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '80946875');
INSERT INTO `balance_data_average` VALUES ('232', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '65978861.087');
INSERT INTO `balance_data_average` VALUES ('233', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '22128307.377');
INSERT INTO `balance_data_average` VALUES ('234', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '28054557.008');
INSERT INTO `balance_data_average` VALUES ('235', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '34321608.707');
INSERT INTO `balance_data_average` VALUES ('236', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '60962910.382');
INSERT INTO `balance_data_average` VALUES ('237', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '65838059.231');
INSERT INTO `balance_data_average` VALUES ('238', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '40586179.055');
INSERT INTO `balance_data_average` VALUES ('239', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '93174967.554');
INSERT INTO `balance_data_average` VALUES ('24', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '153734087.32');
INSERT INTO `balance_data_average` VALUES ('240', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '31366123.093');
INSERT INTO `balance_data_average` VALUES ('241', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '23781853.282');
INSERT INTO `balance_data_average` VALUES ('242', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '20270973.154');
INSERT INTO `balance_data_average` VALUES ('243', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'paid_in_cap_avg', '1', '61553444.181');
INSERT INTO `balance_data_average` VALUES ('25', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '110696911.2');
INSERT INTO `balance_data_average` VALUES ('26', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '118458053.69');
INSERT INTO `balance_data_average` VALUES ('27', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '278087885.99');
INSERT INTO `balance_data_average` VALUES ('28', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '57400071.569');
INSERT INTO `balance_data_average` VALUES ('29', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '69841363.263');
INSERT INTO `balance_data_average` VALUES ('3', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '5247659259.3');
INSERT INTO `balance_data_average` VALUES ('30', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '3640651851.9');
INSERT INTO `balance_data_average` VALUES ('31', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '52762417.421');
INSERT INTO `balance_data_average` VALUES ('32', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '43968194.78');
INSERT INTO `balance_data_average` VALUES ('33', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '75592732.884');
INSERT INTO `balance_data_average` VALUES ('34', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '47694676.534');
INSERT INTO `balance_data_average` VALUES ('35', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '47402023.121');
INSERT INTO `balance_data_average` VALUES ('36', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '496981335.95');
INSERT INTO `balance_data_average` VALUES ('37', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '102800244.79');
INSERT INTO `balance_data_average` VALUES ('38', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '136075309.22');
INSERT INTO `balance_data_average` VALUES ('39', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '156121195.94');
INSERT INTO `balance_data_average` VALUES ('4', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '100220112.55');
INSERT INTO `balance_data_average` VALUES ('40', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '53253362.68');
INSERT INTO `balance_data_average` VALUES ('41', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '55529377.425');
INSERT INTO `balance_data_average` VALUES ('42', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '234873529.41');
INSERT INTO `balance_data_average` VALUES ('43', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '208543859.65');
INSERT INTO `balance_data_average` VALUES ('44', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '60291049.2');
INSERT INTO `balance_data_average` VALUES ('45', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '89472131.445');
INSERT INTO `balance_data_average` VALUES ('46', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '111200623.84');
INSERT INTO `balance_data_average` VALUES ('47', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '206823691.22');
INSERT INTO `balance_data_average` VALUES ('48', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '242224322.62');
INSERT INTO `balance_data_average` VALUES ('49', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '130890049.87');
INSERT INTO `balance_data_average` VALUES ('5', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '77777144.111');
INSERT INTO `balance_data_average` VALUES ('50', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '247557511.36');
INSERT INTO `balance_data_average` VALUES ('51', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '101204103.1');
INSERT INTO `balance_data_average` VALUES ('52', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '60472329.472');
INSERT INTO `balance_data_average` VALUES ('53', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '78365771.812');
INSERT INTO `balance_data_average` VALUES ('54', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'ttl_cur_ass_avg', '1', '149059382.42');
INSERT INTO `balance_data_average` VALUES ('55', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '8127393.0936');
INSERT INTO `balance_data_average` VALUES ('56', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '14269915.138');
INSERT INTO `balance_data_average` VALUES ('57', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '278214814.81');
INSERT INTO `balance_data_average` VALUES ('58', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '10371959.873');
INSERT INTO `balance_data_average` VALUES ('59', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '9228339.5481');
INSERT INTO `balance_data_average` VALUES ('6', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '166424382.72');
INSERT INTO `balance_data_average` VALUES ('60', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '17157126.824');
INSERT INTO `balance_data_average` VALUES ('61', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '13802100.74');
INSERT INTO `balance_data_average` VALUES ('62', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '11120520.231');
INSERT INTO `balance_data_average` VALUES ('63', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '55589882.122');
INSERT INTO `balance_data_average` VALUES ('64', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '20177597.704');
INSERT INTO `balance_data_average` VALUES ('65', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '28884139.659');
INSERT INTO `balance_data_average` VALUES ('66', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '18664709.023');
INSERT INTO `balance_data_average` VALUES ('67', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '14936475.911');
INSERT INTO `balance_data_average` VALUES ('68', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '14646749.768');
INSERT INTO `balance_data_average` VALUES ('69', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '23725551.471');
INSERT INTO `balance_data_average` VALUES ('7', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '90253998.568');
INSERT INTO `balance_data_average` VALUES ('70', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '29218004.026');
INSERT INTO `balance_data_average` VALUES ('71', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '16684323.975');
INSERT INTO `balance_data_average` VALUES ('72', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '26892247.64');
INSERT INTO `balance_data_average` VALUES ('73', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '34340655.694');
INSERT INTO `balance_data_average` VALUES ('74', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '47334693.878');
INSERT INTO `balance_data_average` VALUES ('75', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '52917664.356');
INSERT INTO `balance_data_average` VALUES ('76', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '44035241.035');
INSERT INTO `balance_data_average` VALUES ('77', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '96476395.198');
INSERT INTO `balance_data_average` VALUES ('78', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '32786428.196');
INSERT INTO `balance_data_average` VALUES ('79', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '14243886.744');
INSERT INTO `balance_data_average` VALUES ('8', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '73508959.538');
INSERT INTO `balance_data_average` VALUES ('80', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '18012583.893');
INSERT INTO `balance_data_average` VALUES ('81', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'accounts_rev_avg', '1', '46325415.677');
INSERT INTO `balance_data_average` VALUES ('82', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'inventory_avg', '1', '17338119.52');
INSERT INTO `balance_data_average` VALUES ('83', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'inventory_avg', '1', '15687927.731');
INSERT INTO `balance_data_average` VALUES ('84', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'inventory_avg', '1', '2015274074.1');
INSERT INTO `balance_data_average` VALUES ('85', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'inventory_avg', '1', '15460680.206');
INSERT INTO `balance_data_average` VALUES ('86', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'inventory_avg', '1', '12380127.221');
INSERT INTO `balance_data_average` VALUES ('87', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'inventory_avg', '1', '16043209.877');
INSERT INTO `balance_data_average` VALUES ('88', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'inventory_avg', '1', '9758414.8962');
INSERT INTO `balance_data_average` VALUES ('89', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'inventory_avg', '1', '17554046.243');
INSERT INTO `balance_data_average` VALUES ('9', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'ttl_ass_avg', '1', '1028427308.4');
INSERT INTO `balance_data_average` VALUES ('90', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'inventory_avg', '1', '180106090.37');
INSERT INTO `balance_data_average` VALUES ('91', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'inventory_avg', '1', '23447539.461');
INSERT INTO `balance_data_average` VALUES ('92', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'inventory_avg', '1', '30415531.548');
INSERT INTO `balance_data_average` VALUES ('93', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'inventory_avg', '1', '39883075.28');
INSERT INTO `balance_data_average` VALUES ('94', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'inventory_avg', '1', '12661225.238');
INSERT INTO `balance_data_average` VALUES ('95', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'inventory_avg', '1', '11766834.93');
INSERT INTO `balance_data_average` VALUES ('96', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'inventory_avg', '1', '72010386.029');
INSERT INTO `balance_data_average` VALUES ('97', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'inventory_avg', '1', '71789473.684');
INSERT INTO `balance_data_average` VALUES ('98', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'inventory_avg', '1', '15432289.702');
INSERT INTO `balance_data_average` VALUES ('99', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'inventory_avg', '1', '24041530.501');

-- ----------------------------
-- Table structure for balance_index
-- ----------------------------
DROP TABLE IF EXISTS `balance_index`;
CREATE TABLE `balance_index` (
  `BS_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `BS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`BS_ID`),
  KEY `BS_NAME` (`BS_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of balance_index
-- ----------------------------
INSERT INTO `balance_index` VALUES ('non_cur_liab_1year', '一年内到期的非流动性负债');
INSERT INTO `balance_index` VALUES ('non_cur_ass_1year', '一年内到期的非流动性资产');
INSERT INTO `balance_index` VALUES ('speci_acc_pay', '专项应付款');
INSERT INTO `balance_index` VALUES ('trad_fin_liab', '交易性金融负债');
INSERT INTO `balance_index` VALUES ('fin_ass_held_for_trd', '交易性金融资产');
INSERT INTO `balance_index` VALUES ('other_pay', '其他应付款');
INSERT INTO `balance_index` VALUES ('other_rev', '其他应收款');
INSERT INTO `balance_index` VALUES ('other_non_cur_liab', '其他非流动负债');
INSERT INTO `balance_index` VALUES ('other_non_cur_ass', '其他非流动资产');
INSERT INTO `balance_index` VALUES ('trea_stk', '减：库存股');
INSERT INTO `balance_index` VALUES ('AFS_secur', '可供出售金融资产');
INSERT INTO `balance_index` VALUES ('goodwill', '商誉');
INSERT INTO `balance_index` VALUES ('fixed_ass', '固定资产');
INSERT INTO `balance_index` VALUES ('fixed_ass_liq', '固定资产清理');
INSERT INTO `balance_index` VALUES ('constr_in_prog', '在建工程');
INSERT INTO `balance_index` VALUES ('inventory', '存货');
INSERT INTO `balance_index` VALUES ('inventory_avg', '存货平均值');
INSERT INTO `balance_index` VALUES ('paid_in_cap_avg', '实收资本平均值');
INSERT INTO `balance_index` VALUES ('paid_in_cap', '实收资本（或股本）');
INSERT INTO `balance_index` VALUES ('constr_mat', '工程物资');
INSERT INTO `balance_index` VALUES ('balance_beginning', '年初余额');
INSERT INTO `balance_index` VALUES ('tax_pay', '应交税金');
INSERT INTO `balance_index` VALUES ('bond_pay', '应付债券');
INSERT INTO `balance_index` VALUES ('interest_pay', '应付利息');
INSERT INTO `balance_index` VALUES ('notes_pay', '应付票据');
INSERT INTO `balance_index` VALUES ('ee_comp_pay', '应付职工薪酬');
INSERT INTO `balance_index` VALUES ('equi_pay', '应付股权');
INSERT INTO `balance_index` VALUES ('acc_pay', '应付账款');
INSERT INTO `balance_index` VALUES ('acc_pay_avg', '应付账款平均值');
INSERT INTO `balance_index` VALUES ('interest_rev', '应收利息');
INSERT INTO `balance_index` VALUES ('notes_rev', '应收票据');
INSERT INTO `balance_index` VALUES ('dividents_rev', '应收股利');
INSERT INTO `balance_index` VALUES ('accounts_rev', '应收账款');
INSERT INTO `balance_index` VALUES ('accounts_rev_avg', '应收账款平均值');
INSERT INTO `balance_index` VALUES ('dev_exp', '开发支出');
INSERT INTO `balance_index` VALUES ('ttl_sharehold_avg', '所有者权益合计平均值');
INSERT INTO `balance_index` VALUES ('ttl_sharehold', '所有者权益（或股东权益）合计');
INSERT INTO `balance_index` VALUES ('owner_equi', '所有者权益（或股东权益）：');
INSERT INTO `balance_index` VALUES ('inv_ppy', '投资性房地产');
INSERT INTO `balance_index` VALUES ('held_matur_inv', '持有至到期投资');
INSERT INTO `balance_index` VALUES ('intangi_ass', '无形资产');
INSERT INTO `balance_index` VALUES ('close_balance', '期末余额');
INSERT INTO `balance_index` VALUES ('undistrib_earn', '未分配利润');
INSERT INTO `balance_index` VALUES ('og_ass', '油气资产');
INSERT INTO `balance_index` VALUES ('ttl_cur_liab', '流动负债合计');
INSERT INTO `balance_index` VALUES ('ttl_cur_liab_avg', '流动负债合计平均值');
INSERT INTO `balance_index` VALUES ('cur_liab', '流动负债：');
INSERT INTO `balance_index` VALUES ('ttl_cur_ass', '流动资产合计');
INSERT INTO `balance_index` VALUES ('ttl_cur_ass_avg', '流动资产合计平均值');
INSERT INTO `balance_index` VALUES ('cur_ass', '流动资产：');
INSERT INTO `balance_index` VALUES ('prod_bio_ass', '生产性生物资产');
INSERT INTO `balance_index` VALUES ('sur_reserv', '盈余公积');
INSERT INTO `balance_index` VALUES ('ST_borrow', '短期借款');
INSERT INTO `balance_index` VALUES ('ttl_liab', '负债合计');
INSERT INTO `balance_index` VALUES ('ttl_liab_avg', '负债合计平均值');
INSERT INTO `balance_index` VALUES ('ttl_owner_equi', '负债和所有者权益（或股东权益）合计');
INSERT INTO `balance_index` VALUES ('monetary_fnds', '货币资金');
INSERT INTO `balance_index` VALUES ('assets', '资产');
INSERT INTO `balance_index` VALUES ('ttl_ass', '资产总计');
INSERT INTO `balance_index` VALUES ('ttl_ass_avg', '资产总计平均值');
INSERT INTO `balance_index` VALUES ('cap_sur', '资本公积');
INSERT INTO `balance_index` VALUES ('DITL', '递延所得税负债');
INSERT INTO `balance_index` VALUES ('DTA', '递延所得税资产');
INSERT INTO `balance_index` VALUES ('LT_loan', '长期借款');
INSERT INTO `balance_index` VALUES ('LT_rev', '长期应收款');
INSERT INTO `balance_index` VALUES ('LT_amort', '长期待摊费用');
INSERT INTO `balance_index` VALUES ('LT_equity_inv', '长期股权投资');
INSERT INTO `balance_index` VALUES ('non_cur_ass', '非流动性资产：');
INSERT INTO `balance_index` VALUES ('non_cur_cur_liab', '非流动流动负债：');
INSERT INTO `balance_index` VALUES ('ttl_non_cur_liab', '非流动负债合计');
INSERT INTO `balance_index` VALUES ('ttl_non_cur_ass', '非流动资产总计');
INSERT INTO `balance_index` VALUES ('prepayments', '预付款项');
INSERT INTO `balance_index` VALUES ('proj_liab', '预计负债');

-- ----------------------------
-- Table structure for cash_data_average
-- ----------------------------
DROP TABLE IF EXISTS `cash_data_average`;
CREATE TABLE `cash_data_average` (
  `ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DIMEN_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TIME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `INDUS_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PROVINCE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCALE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CF_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UNIT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`,`DIMEN_ID`,`INDUS_ID`,`CF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cash_data_average
-- ----------------------------
INSERT INTO `cash_data_average` VALUES ('1', '12', '2012', 'MA-1', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-574879.22705');
INSERT INTO `cash_data_average` VALUES ('10', '12', '2012', 'MA-10', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '183337.55381');
INSERT INTO `cash_data_average` VALUES ('11', '12', '2012', 'MA-11', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '410364.80351');
INSERT INTO `cash_data_average` VALUES ('12', '12', '2012', 'MA-12', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-117992.52536');
INSERT INTO `cash_data_average` VALUES ('13', '12', '2012', 'MA-13', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-155661.53094');
INSERT INTO `cash_data_average` VALUES ('14', '12', '2012', 'MA-14', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '85264.929089');
INSERT INTO `cash_data_average` VALUES ('15', '12', '2012', 'MA-15', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-2339062.5');
INSERT INTO `cash_data_average` VALUES ('16', '12', '2012', 'MA-16', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-1170261.7199');
INSERT INTO `cash_data_average` VALUES ('17', '12', '2012', 'MA-17', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-390472.59794');
INSERT INTO `cash_data_average` VALUES ('18', '12', '2012', 'MA-18', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '82924.836601');
INSERT INTO `cash_data_average` VALUES ('19', '12', '2012', 'MA-19', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-174077.51526');
INSERT INTO `cash_data_average` VALUES ('2', '12', '2012', 'MA-2', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-130577.60745');
INSERT INTO `cash_data_average` VALUES ('20', '12', '2012', 'MA-20', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '4080745.3416');
INSERT INTO `cash_data_average` VALUES ('21', '12', '2012', 'MA-21', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '1117622.3482');
INSERT INTO `cash_data_average` VALUES ('22', '12', '2012', 'MA-22', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-73664.212776');
INSERT INTO `cash_data_average` VALUES ('23', '12', '2012', 'MA-23', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '511031.79753');
INSERT INTO `cash_data_average` VALUES ('24', '12', '2012', 'MA-24', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '91793.792741');
INSERT INTO `cash_data_average` VALUES ('25', '12', '2012', 'MA-25', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '229086.22909');
INSERT INTO `cash_data_average` VALUES ('26', '12', '2012', 'MA-26', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-824664.42953');
INSERT INTO `cash_data_average` VALUES ('27', '12', '2012', 'MA-27', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-869358.66983');
INSERT INTO `cash_data_average` VALUES ('3', '12', '2012', 'MA-3', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '27955555.556');
INSERT INTO `cash_data_average` VALUES ('4', '12', '2012', 'MA-4', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '20406.165892');
INSERT INTO `cash_data_average` VALUES ('5', '12', '2012', 'MA-5', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '73042.333845');
INSERT INTO `cash_data_average` VALUES ('6', '12', '2012', 'MA-6', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-280.58361392');
INSERT INTO `cash_data_average` VALUES ('7', '12', '2012', 'MA-7', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '176653.13917');
INSERT INTO `cash_data_average` VALUES ('8', '12', '2012', 'MA-8', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-7369.9421965');
INSERT INTO `cash_data_average` VALUES ('9', '12', '2012', 'MA-9', 'unknow', 'ABOVE', 'cash_rev_retu_avg', '1', '-1127210.2161');

-- ----------------------------
-- Table structure for cash_index
-- ----------------------------
DROP TABLE IF EXISTS `cash_index`;
CREATE TABLE `cash_index` (
  `CF_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `CF_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`CF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of cash_index
-- ----------------------------
INSERT INTO `cash_index` VALUES ('casc_rev_sale', '        销售商品、提供劳务收到的现金');
INSERT INTO `cash_index` VALUES ('cash_equ_begin', '     加：期初现金及现金等价物余额');
INSERT INTO `cash_index` VALUES ('cash_equ_end', '六、期末现金及现金等价物余额');
INSERT INTO `cash_index` VALUES ('cash_fl_fin', '三、筹资活动产生的现金流量：');
INSERT INTO `cash_index` VALUES ('cash_fl_inve', '二、投资活动产生的现金流量：');
INSERT INTO `cash_index` VALUES ('cash_fl_oper', '一、经营活动产生的现金流量：');
INSERT INTO `cash_index` VALUES ('cash_infl_fin', '筹资活动现金流入小计');
INSERT INTO `cash_index` VALUES ('cash_infl_inve', '投资活动现金流入小计');
INSERT INTO `cash_index` VALUES ('cash_infl_oper', '经营活动现金流入小计');
INSERT INTO `cash_index` VALUES ('cash_outfl_fin', '筹资活动现金流出小计');
INSERT INTO `cash_index` VALUES ('cash_outfl_inve', '投资活动现金流出小计');
INSERT INTO `cash_index` VALUES ('cash_outfl_oper', '经营活动现金流出小计');
INSERT INTO `cash_index` VALUES ('cash_paid_acq', '        投资支付的现金');
INSERT INTO `cash_index` VALUES ('cash_paid_ass', '购建固定资产、无形资产和其他长期资产支付的现金');
INSERT INTO `cash_index` VALUES ('cash_paid_beh', '        支付给职工以及为职工支付的现金');
INSERT INTO `cash_index` VALUES ('cash_paid_good', '        购买商品、接受劳务支付的现金');
INSERT INTO `cash_index` VALUES ('cash_pay_expense', '        分配股利、利润或偿付利息支付的现金');
INSERT INTO `cash_index` VALUES ('cash_repay', '        偿还债务支付的现金');
INSERT INTO `cash_index` VALUES ('cash_rev_bor', '        取得借款收到的现金');
INSERT INTO `cash_index` VALUES ('cash_rev_cap', '        吸收投资收到的现金');
INSERT INTO `cash_index` VALUES ('cash_rev_disp', '        收回投资收到的现金');
INSERT INTO `cash_index` VALUES ('cash_rev_retu', '        取得投资收益收到的现金');
INSERT INTO `cash_index` VALUES ('cash_rev_retu_avg', '投资收益平均值(损失以“-”号记)');
INSERT INTO `cash_index` VALUES ('effect_fore', '四、汇率变动对现金及现金等价物的影响');
INSERT INTO `cash_index` VALUES ('net_fl_fin', '       筹资活动产生的现金流量净额');
INSERT INTO `cash_index` VALUES ('net_fl_inve', '        投资活动产生的现金流量净额');
INSERT INTO `cash_index` VALUES ('net_fl_oper', '        经营活动产生的现金流量净额');
INSERT INTO `cash_index` VALUES ('net_incr', '五、现金及现金等价物净增加额');
INSERT INTO `cash_index` VALUES ('net_outfl_subs', '取得子公司及其他营业单位支付的现金净额');
INSERT INTO `cash_index` VALUES ('net_rev_disp', ' 处置子公司及其他营业单位收到的现金净额');
INSERT INTO `cash_index` VALUES ('net_rev_fixed', '处置固定资产、无形资产和其他长期资产收回的现金净额');
INSERT INTO `cash_index` VALUES ('other_cash_rev', '        收到其他与经营活动有关的现金');
INSERT INTO `cash_index` VALUES ('other_paid_oper', '        支付其他与经营活动有关的现金');
INSERT INTO `cash_index` VALUES ('other_pay_fin', '        支付其他与筹资活动有关的现金');
INSERT INTO `cash_index` VALUES ('other_pay_inve', '       支付其他与投资活动有关的现金');
INSERT INTO `cash_index` VALUES ('other_rev_fin', '        收到其他与筹资活动有关的现金');
INSERT INTO `cash_index` VALUES ('other_rev_inve', ' 收到其他与投资活动有关的现金');
INSERT INTO `cash_index` VALUES ('payments_type', '        支付的各项税费');
INSERT INTO `cash_index` VALUES ('refund_tax', '        收到的税费返还');

-- ----------------------------
-- Table structure for datetime
-- ----------------------------
DROP TABLE IF EXISTS `datetime`;
CREATE TABLE `datetime` (
  `DIMEN_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `DIMEN_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DIMEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of datetime
-- ----------------------------
INSERT INTO `datetime` VALUES ('1', '月');
INSERT INTO `datetime` VALUES ('12', '一年');
INSERT INTO `datetime` VALUES ('24', '两年');
INSERT INTO `datetime` VALUES ('3', '季度');
INSERT INTO `datetime` VALUES ('36', '三年');
INSERT INTO `datetime` VALUES ('48', '四年');
INSERT INTO `datetime` VALUES ('6', '半年');
INSERT INTO `datetime` VALUES ('60', '五年');

-- ----------------------------
-- Table structure for industry
-- ----------------------------
DROP TABLE IF EXISTS `industry`;
CREATE TABLE `industry` (
  `INDUS_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `INDUS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`INDUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of industry
-- ----------------------------
INSERT INTO `industry` VALUES ('MA-1', '农副食品加工业');
INSERT INTO `industry` VALUES ('MA-10', '化学原料和化学制品制造业');
INSERT INTO `industry` VALUES ('MA-11', '医药制造业');
INSERT INTO `industry` VALUES ('MA-12', '化学纤维制造业');
INSERT INTO `industry` VALUES ('MA-13', '橡胶和塑料制品业');
INSERT INTO `industry` VALUES ('MA-14', '非金属矿物制品业');
INSERT INTO `industry` VALUES ('MA-15', '黑色金属冶炼和压延加工业');
INSERT INTO `industry` VALUES ('MA-16', '有色金属冶炼和压延加工业');
INSERT INTO `industry` VALUES ('MA-17', '金属制品业');
INSERT INTO `industry` VALUES ('MA-18', '通用设备制造业');
INSERT INTO `industry` VALUES ('MA-19', '专用设备制造业');
INSERT INTO `industry` VALUES ('MA-2', '食品制造业');
INSERT INTO `industry` VALUES ('MA-20', '汽车制造业');
INSERT INTO `industry` VALUES ('MA-21', '铁路、船舶、航空航天和其他运输设备制造业');
INSERT INTO `industry` VALUES ('MA-22', '电气机械和器材制造业');
INSERT INTO `industry` VALUES ('MA-23', '计算机、通信和其他电子设备制造业');
INSERT INTO `industry` VALUES ('MA-24', '仪器仪表制造业');
INSERT INTO `industry` VALUES ('MA-25', '其他制造业');
INSERT INTO `industry` VALUES ('MA-26', '废弃资源综合利用业');
INSERT INTO `industry` VALUES ('MA-27', '金属制品、机械和设备修理业');
INSERT INTO `industry` VALUES ('MA-3', '烟草制品业');
INSERT INTO `industry` VALUES ('MA-4', '纺织业');
INSERT INTO `industry` VALUES ('MA-5', '家具制造业');
INSERT INTO `industry` VALUES ('MA-6', '造纸和纸制品业');
INSERT INTO `industry` VALUES ('MA-7', '印刷和记录媒介复制业');
INSERT INTO `industry` VALUES ('MA-8', '文教、工美、体育和娱乐用品制造业');
INSERT INTO `industry` VALUES ('MA-9', '石油加工、炼焦和核燃料加工业');

-- ----------------------------
-- Table structure for profit_data_average
-- ----------------------------
DROP TABLE IF EXISTS `profit_data_average`;
CREATE TABLE `profit_data_average` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `DIMEN_ID` varchar(255) NOT NULL DEFAULT '',
  `TIME` varchar(255) DEFAULT NULL,
  `INDUS_ID` varchar(255) NOT NULL DEFAULT '',
  `PROVINCE` varchar(255) DEFAULT NULL,
  `SCALE` varchar(255) DEFAULT NULL,
  `PS_ID` varchar(255) NOT NULL DEFAULT '',
  `UNIT` varchar(255) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`DIMEN_ID`,`INDUS_ID`,`PS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profit_data_average
-- ----------------------------
INSERT INTO `profit_data_average` VALUES ('1', '12', '2012', 'MA-1', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '233250939.35');
INSERT INTO `profit_data_average` VALUES ('10', '12', '2012', 'MA-10', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '285963661.69');
INSERT INTO `profit_data_average` VALUES ('100', '12', '2012', 'MA-19', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '10208654.101');
INSERT INTO `profit_data_average` VALUES ('101', '12', '2012', 'MA-20', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '20715350.488');
INSERT INTO `profit_data_average` VALUES ('102', '12', '2012', 'MA-21', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '18465238.395');
INSERT INTO `profit_data_average` VALUES ('103', '12', '2012', 'MA-22', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '11182854.429');
INSERT INTO `profit_data_average` VALUES ('104', '12', '2012', 'MA-23', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '24352206.36');
INSERT INTO `profit_data_average` VALUES ('105', '12', '2012', 'MA-24', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '11926091.531');
INSERT INTO `profit_data_average` VALUES ('106', '12', '2012', 'MA-25', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '7363577.8636');
INSERT INTO `profit_data_average` VALUES ('107', '12', '2012', 'MA-26', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '4898489.9329');
INSERT INTO `profit_data_average` VALUES ('108', '12', '2012', 'MA-27', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '16966745.843');
INSERT INTO `profit_data_average` VALUES ('109', '12', '2012', 'MA-1', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1916845.5896');
INSERT INTO `profit_data_average` VALUES ('11', '12', '2012', 'MA-11', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '271452481.6');
INSERT INTO `profit_data_average` VALUES ('110', '12', '2012', 'MA-2', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1592663.5642');
INSERT INTO `profit_data_average` VALUES ('111', '12', '2012', 'MA-3', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '-8340740.7407');
INSERT INTO `profit_data_average` VALUES ('112', '12', '2012', 'MA-4', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '2196378.7619');
INSERT INTO `profit_data_average` VALUES ('113', '12', '2012', 'MA-5', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1166045.1853');
INSERT INTO `profit_data_average` VALUES ('114', '12', '2012', 'MA-6', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '3285353.5354');
INSERT INTO `profit_data_average` VALUES ('115', '12', '2012', 'MA-7', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1073764.6216');
INSERT INTO `profit_data_average` VALUES ('116', '12', '2012', 'MA-8', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1230780.3468');
INSERT INTO `profit_data_average` VALUES ('117', '12', '2012', 'MA-9', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '17583005.894');
INSERT INTO `profit_data_average` VALUES ('118', '12', '2012', 'MA-10', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '3827466.8692');
INSERT INTO `profit_data_average` VALUES ('119', '12', '2012', 'MA-11', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '2612024.4246');
INSERT INTO `profit_data_average` VALUES ('12', '12', '2012', 'MA-12', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '360072076.88');
INSERT INTO `profit_data_average` VALUES ('120', '12', '2012', 'MA-12', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '6699412.7069');
INSERT INTO `profit_data_average` VALUES ('121', '12', '2012', 'MA-13', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1563524.089');
INSERT INTO `profit_data_average` VALUES ('122', '12', '2012', 'MA-14', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '2023110.4701');
INSERT INTO `profit_data_average` VALUES ('123', '12', '2012', 'MA-15', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '9818290.4412');
INSERT INTO `profit_data_average` VALUES ('124', '12', '2012', 'MA-16', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '8043140.6385');
INSERT INTO `profit_data_average` VALUES ('125', '12', '2012', 'MA-17', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1549388.371');
INSERT INTO `profit_data_average` VALUES ('126', '12', '2012', 'MA-18', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1582516.3399');
INSERT INTO `profit_data_average` VALUES ('127', '12', '2012', 'MA-19', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '2020971.5954');
INSERT INTO `profit_data_average` VALUES ('128', '12', '2012', 'MA-20', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '2454835.8474');
INSERT INTO `profit_data_average` VALUES ('129', '12', '2012', 'MA-21', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '2400546.1038');
INSERT INTO `profit_data_average` VALUES ('13', '12', '2012', 'MA-13', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '147694179.51');
INSERT INTO `profit_data_average` VALUES ('130', '12', '2012', 'MA-22', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '2657136.0722');
INSERT INTO `profit_data_average` VALUES ('131', '12', '2012', 'MA-23', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '2015817.6509');
INSERT INTO `profit_data_average` VALUES ('132', '12', '2012', 'MA-24', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1359284.5871');
INSERT INTO `profit_data_average` VALUES ('133', '12', '2012', 'MA-25', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1273487.7735');
INSERT INTO `profit_data_average` VALUES ('134', '12', '2012', 'MA-26', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '1755872.4832');
INSERT INTO `profit_data_average` VALUES ('135', '12', '2012', 'MA-27', 'unknown', 'ABOVE', 'financial_expe_avg', '1', '2415676.9596');
INSERT INTO `profit_data_average` VALUES ('136', '12', '2012', 'MA-1', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '296519.9499');
INSERT INTO `profit_data_average` VALUES ('137', '12', '2012', 'MA-2', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '274295.09992');
INSERT INTO `profit_data_average` VALUES ('138', '12', '2012', 'MA-3', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '17548148.148');
INSERT INTO `profit_data_average` VALUES ('139', '12', '2012', 'MA-4', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '183802.29998');
INSERT INTO `profit_data_average` VALUES ('14', '12', '2012', 'MA-14', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '151056042.03');
INSERT INTO `profit_data_average` VALUES ('140', '12', '2012', 'MA-5', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '101557.35907');
INSERT INTO `profit_data_average` VALUES ('141', '12', '2012', 'MA-6', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '308501.6835');
INSERT INTO `profit_data_average` VALUES ('142', '12', '2012', 'MA-7', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '208880.40105');
INSERT INTO `profit_data_average` VALUES ('143', '12', '2012', 'MA-8', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '134393.06358');
INSERT INTO `profit_data_average` VALUES ('144', '12', '2012', 'MA-9', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '1282416.5029');
INSERT INTO `profit_data_average` VALUES ('145', '12', '2012', 'MA-10', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '394192.6226');
INSERT INTO `profit_data_average` VALUES ('146', '12', '2012', 'MA-11', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '545952.71646');
INSERT INTO `profit_data_average` VALUES ('147', '12', '2012', 'MA-12', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '875600.64068');
INSERT INTO `profit_data_average` VALUES ('148', '12', '2012', 'MA-13', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '151381.75593');
INSERT INTO `profit_data_average` VALUES ('149', '12', '2012', 'MA-14', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '153806.53137');
INSERT INTO `profit_data_average` VALUES ('15', '12', '2012', 'MA-15', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '657713051.47');
INSERT INTO `profit_data_average` VALUES ('150', '12', '2012', 'MA-15', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '1285477.9412');
INSERT INTO `profit_data_average` VALUES ('151', '12', '2012', 'MA-16', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '1017112.4533');
INSERT INTO `profit_data_average` VALUES ('152', '12', '2012', 'MA-17', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '156113.59595');
INSERT INTO `profit_data_average` VALUES ('153', '12', '2012', 'MA-18', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '257579.88381');
INSERT INTO `profit_data_average` VALUES ('154', '12', '2012', 'MA-19', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '288226.7056');
INSERT INTO `profit_data_average` VALUES ('155', '12', '2012', 'MA-20', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '1085359.3611');
INSERT INTO `profit_data_average` VALUES ('156', '12', '2012', 'MA-21', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '1607645.4526');
INSERT INTO `profit_data_average` VALUES ('157', '12', '2012', 'MA-22', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '457041.08288');
INSERT INTO `profit_data_average` VALUES ('158', '12', '2012', 'MA-23', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '1309863.7249');
INSERT INTO `profit_data_average` VALUES ('159', '12', '2012', 'MA-24', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '317727.51184');
INSERT INTO `profit_data_average` VALUES ('16', '12', '2012', 'MA-16', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '593431693.99');
INSERT INTO `profit_data_average` VALUES ('160', '12', '2012', 'MA-25', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '217503.2175');
INSERT INTO `profit_data_average` VALUES ('161', '12', '2012', 'MA-26', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '315436.24161');
INSERT INTO `profit_data_average` VALUES ('162', '12', '2012', 'MA-27', 'unknown', 'ABOVE', 'inte_inco_avg', '1', '446555.81948');
INSERT INTO `profit_data_average` VALUES ('163', '12', '2012', 'MA-1', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '15054929.325');
INSERT INTO `profit_data_average` VALUES ('164', '12', '2012', 'MA-2', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '19503284.971');
INSERT INTO `profit_data_average` VALUES ('165', '12', '2012', 'MA-3', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '798088888.89');
INSERT INTO `profit_data_average` VALUES ('166', '12', '2012', 'MA-4', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '9279373.6237');
INSERT INTO `profit_data_average` VALUES ('167', '12', '2012', 'MA-5', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '8520728.2299');
INSERT INTO `profit_data_average` VALUES ('168', '12', '2012', 'MA-6', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '10691778.9');
INSERT INTO `profit_data_average` VALUES ('169', '12', '2012', 'MA-7', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '9325853.4256');
INSERT INTO `profit_data_average` VALUES ('17', '12', '2012', 'MA-17', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '156651128.95');
INSERT INTO `profit_data_average` VALUES ('170', '12', '2012', 'MA-8', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '8780780.3468');
INSERT INTO `profit_data_average` VALUES ('171', '12', '2012', 'MA-9', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '17398330.059');
INSERT INTO `profit_data_average` VALUES ('172', '12', '2012', 'MA-10', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '17619777.159');
INSERT INTO `profit_data_average` VALUES ('173', '12', '2012', 'MA-11', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '28832159.073');
INSERT INTO `profit_data_average` VALUES ('174', '12', '2012', 'MA-12', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '12736252.002');
INSERT INTO `profit_data_average` VALUES ('175', '12', '2012', 'MA-13', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '9655355.8327');
INSERT INTO `profit_data_average` VALUES ('176', '12', '2012', 'MA-14', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '11743381.065');
INSERT INTO `profit_data_average` VALUES ('177', '12', '2012', 'MA-15', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '16607261.029');
INSERT INTO `profit_data_average` VALUES ('178', '12', '2012', 'MA-16', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '28176445.211');
INSERT INTO `profit_data_average` VALUES ('179', '12', '2012', 'MA-17', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '10702484.238');
INSERT INTO `profit_data_average` VALUES ('18', '12', '2012', 'MA-18', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '172672703.34');
INSERT INTO `profit_data_average` VALUES ('180', '12', '2012', 'MA-18', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '12538307.916');
INSERT INTO `profit_data_average` VALUES ('181', '12', '2012', 'MA-19', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '14017321.476');
INSERT INTO `profit_data_average` VALUES ('182', '12', '2012', 'MA-20', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '37268411.713');
INSERT INTO `profit_data_average` VALUES ('183', '12', '2012', 'MA-21', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '18327872.296');
INSERT INTO `profit_data_average` VALUES ('184', '12', '2012', 'MA-22', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '16362954.168');
INSERT INTO `profit_data_average` VALUES ('185', '12', '2012', 'MA-23', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '25218121.35');
INSERT INTO `profit_data_average` VALUES ('186', '12', '2012', 'MA-24', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '14654392.425');
INSERT INTO `profit_data_average` VALUES ('187', '12', '2012', 'MA-25', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '7989703.9897');
INSERT INTO `profit_data_average` VALUES ('188', '12', '2012', 'MA-26', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '15874161.074');
INSERT INTO `profit_data_average` VALUES ('189', '12', '2012', 'MA-27', 'unknown', 'ABOVE', 'oper_inco_avg', '1', '-26993422.404');
INSERT INTO `profit_data_average` VALUES ('19', '12', '2012', 'MA-19', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '190545460.58');
INSERT INTO `profit_data_average` VALUES ('190', '12', '2012', 'MA-1', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '14325818.572');
INSERT INTO `profit_data_average` VALUES ('191', '12', '2012', 'MA-2', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '19478510.813');
INSERT INTO `profit_data_average` VALUES ('192', '12', '2012', 'MA-3', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '793696296.3');
INSERT INTO `profit_data_average` VALUES ('193', '12', '2012', 'MA-4', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '9269635.4294');
INSERT INTO `profit_data_average` VALUES ('194', '12', '2012', 'MA-5', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '8489800.3948');
INSERT INTO `profit_data_average` VALUES ('195', '12', '2012', 'MA-6', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '10861531.987');
INSERT INTO `profit_data_average` VALUES ('196', '12', '2012', 'MA-7', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '9497493.4352');
INSERT INTO `profit_data_average` VALUES ('197', '12', '2012', 'MA-8', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '8564306.3584');
INSERT INTO `profit_data_average` VALUES ('198', '12', '2012', 'MA-9', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '14741650.295');
INSERT INTO `profit_data_average` VALUES ('199', '12', '2012', 'MA-10', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '17395163.332');
INSERT INTO `profit_data_average` VALUES ('2', '12', '2012', 'MA-2', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '216730495.48');
INSERT INTO `profit_data_average` VALUES ('20', '12', '2012', 'MA-20', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '454619165.93');
INSERT INTO `profit_data_average` VALUES ('200', '12', '2012', 'MA-11', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '29213871.927');
INSERT INTO `profit_data_average` VALUES ('201', '12', '2012', 'MA-12', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '14476775.227');
INSERT INTO `profit_data_average` VALUES ('202', '12', '2012', 'MA-13', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '9591220.3473');
INSERT INTO `profit_data_average` VALUES ('203', '12', '2012', 'MA-14', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '11806737.406');
INSERT INTO `profit_data_average` VALUES ('204', '12', '2012', 'MA-15', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '15610661.765');
INSERT INTO `profit_data_average` VALUES ('205', '12', '2012', 'MA-16', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '25307592.752');
INSERT INTO `profit_data_average` VALUES ('206', '12', '2012', 'MA-17', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '9935819.3674');
INSERT INTO `profit_data_average` VALUES ('207', '12', '2012', 'MA-18', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '12415985.839');
INSERT INTO `profit_data_average` VALUES ('208', '12', '2012', 'MA-19', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '14231749.403');
INSERT INTO `profit_data_average` VALUES ('209', '12', '2012', 'MA-20', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '38342502.218');
INSERT INTO `profit_data_average` VALUES ('21', '12', '2012', 'MA-21', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '330778827.98');
INSERT INTO `profit_data_average` VALUES ('210', '12', '2012', 'MA-21', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '19407687.461');
INSERT INTO `profit_data_average` VALUES ('211', '12', '2012', 'MA-22', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '16241842.793');
INSERT INTO `profit_data_average` VALUES ('212', '12', '2012', 'MA-23', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '25909961.064');
INSERT INTO `profit_data_average` VALUES ('213', '12', '2012', 'MA-24', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '15137822.199');
INSERT INTO `profit_data_average` VALUES ('214', '12', '2012', 'MA-25', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '8273487.7735');
INSERT INTO `profit_data_average` VALUES ('215', '12', '2012', 'MA-26', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '13645973.154');
INSERT INTO `profit_data_average` VALUES ('216', '12', '2012', 'MA-27', 'unknown', 'ABOVE', 'inco_before_tax_avg', '1', '10745843.23');
INSERT INTO `profit_data_average` VALUES ('22', '12', '2012', 'MA-22', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '258953265.26');
INSERT INTO `profit_data_average` VALUES ('23', '12', '2012', 'MA-23', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '571301670.99');
INSERT INTO `profit_data_average` VALUES ('24', '12', '2012', 'MA-24', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '175078379.8');
INSERT INTO `profit_data_average` VALUES ('25', '12', '2012', 'MA-25', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '133436936.94');
INSERT INTO `profit_data_average` VALUES ('26', '12', '2012', 'MA-26', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '245012583.89');
INSERT INTO `profit_data_average` VALUES ('27', '12', '2012', 'MA-27', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '210418052.26');
INSERT INTO `profit_data_average` VALUES ('28', '12', '2012', 'MA-1', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '204602433.35');
INSERT INTO `profit_data_average` VALUES ('29', '12', '2012', 'MA-2', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '168691075.83');
INSERT INTO `profit_data_average` VALUES ('3', '12', '2012', 'MA-3', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '5608533333.3');
INSERT INTO `profit_data_average` VALUES ('30', '12', '2012', 'MA-3', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '1456118518.5');
INSERT INTO `profit_data_average` VALUES ('31', '12', '2012', 'MA-4', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '138090237.34');
INSERT INTO `profit_data_average` VALUES ('32', '12', '2012', 'MA-5', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '103731081.38');
INSERT INTO `profit_data_average` VALUES ('33', '12', '2012', 'MA-6', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '150452721.66');
INSERT INTO `profit_data_average` VALUES ('34', '12', '2012', 'MA-7', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '88416805.92');
INSERT INTO `profit_data_average` VALUES ('35', '12', '2012', 'MA-8', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '129042774.57');
INSERT INTO `profit_data_average` VALUES ('36', '12', '2012', 'MA-9', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '1704017681.7');
INSERT INTO `profit_data_average` VALUES ('37', '12', '2012', 'MA-10', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '244443741.03');
INSERT INTO `profit_data_average` VALUES ('38', '12', '2012', 'MA-11', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '190411460.78');
INSERT INTO `profit_data_average` VALUES ('39', '12', '2012', 'MA-12', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '328266951.41');
INSERT INTO `profit_data_average` VALUES ('4', '12', '2012', 'MA-4', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '157774113.04');
INSERT INTO `profit_data_average` VALUES ('40', '12', '2012', 'MA-13', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '126052946.93');
INSERT INTO `profit_data_average` VALUES ('41', '12', '2012', 'MA-14', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '125815150.58');
INSERT INTO `profit_data_average` VALUES ('42', '12', '2012', 'MA-15', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '606482261.03');
INSERT INTO `profit_data_average` VALUES ('43', '12', '2012', 'MA-16', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '540799108.43');
INSERT INTO `profit_data_average` VALUES ('44', '12', '2012', 'MA-17', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '134696987.66');
INSERT INTO `profit_data_average` VALUES ('45', '12', '2012', 'MA-18', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '143551742.92');
INSERT INTO `profit_data_average` VALUES ('46', '12', '2012', 'MA-19', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '157532917.44');
INSERT INTO `profit_data_average` VALUES ('47', '12', '2012', 'MA-20', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '378151730.26');
INSERT INTO `profit_data_average` VALUES ('48', '12', '2012', 'MA-21', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '284014702.79');
INSERT INTO `profit_data_average` VALUES ('49', '12', '2012', 'MA-22', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '218583756.83');
INSERT INTO `profit_data_average` VALUES ('5', '12', '2012', 'MA-5', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '124366966.44');
INSERT INTO `profit_data_average` VALUES ('50', '12', '2012', 'MA-23', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '507235966.9');
INSERT INTO `profit_data_average` VALUES ('51', '12', '2012', 'MA-24', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '140261441.35');
INSERT INTO `profit_data_average` VALUES ('52', '12', '2012', 'MA-25', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '112951093.95');
INSERT INTO `profit_data_average` VALUES ('53', '12', '2012', 'MA-26', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '219987416.11');
INSERT INTO `profit_data_average` VALUES ('54', '12', '2012', 'MA-27', 'unknown', 'ABOVE', 'oper_cost_avg', '1', '174192399.05');
INSERT INTO `profit_data_average` VALUES ('55', '12', '2012', 'MA-1', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '4843710.8606');
INSERT INTO `profit_data_average` VALUES ('56', '12', '2012', 'MA-2', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '16557213.249');
INSERT INTO `profit_data_average` VALUES ('57', '12', '2012', 'MA-3', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '113488888.89');
INSERT INTO `profit_data_average` VALUES ('58', '12', '2012', 'MA-4', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '2243993.149');
INSERT INTO `profit_data_average` VALUES ('59', '12', '2012', 'MA-5', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '4196095.635');
INSERT INTO `profit_data_average` VALUES ('6', '12', '2012', 'MA-6', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '175385662.18');
INSERT INTO `profit_data_average` VALUES ('60', '12', '2012', 'MA-6', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '4670033.67');
INSERT INTO `profit_data_average` VALUES ('61', '12', '2012', 'MA-7', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '2846264.0248');
INSERT INTO `profit_data_average` VALUES ('62', '12', '2012', 'MA-8', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '3131358.3815');
INSERT INTO `profit_data_average` VALUES ('63', '12', '2012', 'MA-9', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '15221021.611');
INSERT INTO `profit_data_average` VALUES ('64', '12', '2012', 'MA-10', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '7990714.9489');
INSERT INTO `profit_data_average` VALUES ('65', '12', '2012', 'MA-11', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '30959605.449');
INSERT INTO `profit_data_average` VALUES ('66', '12', '2012', 'MA-12', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '3320875.6006');
INSERT INTO `profit_data_average` VALUES ('67', '12', '2012', 'MA-13', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '3535033.0154');
INSERT INTO `profit_data_average` VALUES ('68', '12', '2012', 'MA-14', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '4157995.9479');
INSERT INTO `profit_data_average` VALUES ('69', '12', '2012', 'MA-15', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '6386488.9706');
INSERT INTO `profit_data_average` VALUES ('7', '12', '2012', 'MA-7', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '108269992.84');
INSERT INTO `profit_data_average` VALUES ('70', '12', '2012', 'MA-16', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '4773655.4501');
INSERT INTO `profit_data_average` VALUES ('71', '12', '2012', 'MA-17', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '3098291.7497');
INSERT INTO `profit_data_average` VALUES ('72', '12', '2012', 'MA-18', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '4979711.329');
INSERT INTO `profit_data_average` VALUES ('73', '12', '2012', 'MA-19', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '5852867.0029');
INSERT INTO `profit_data_average` VALUES ('74', '12', '2012', 'MA-20', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '14000798.58');
INSERT INTO `profit_data_average` VALUES ('75', '12', '2012', 'MA-21', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '5479521.109');
INSERT INTO `profit_data_average` VALUES ('76', '12', '2012', 'MA-22', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '8855141.2966');
INSERT INTO `profit_data_average` VALUES ('77', '12', '2012', 'MA-23', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '12840768.981');
INSERT INTO `profit_data_average` VALUES ('78', '12', '2012', 'MA-24', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '6270647.0279');
INSERT INTO `profit_data_average` VALUES ('79', '12', '2012', 'MA-25', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '3272200.7722');
INSERT INTO `profit_data_average` VALUES ('8', '12', '2012', 'MA-8', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '148517052.02');
INSERT INTO `profit_data_average` VALUES ('80', '12', '2012', 'MA-26', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '2439597.3154');
INSERT INTO `profit_data_average` VALUES ('81', '12', '2012', 'MA-27', 'unknown', 'ABOVE', 'selling_expe_avg', '1', '4422802.8504');
INSERT INTO `profit_data_average` VALUES ('82', '12', '2012', 'MA-1', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '5685587.7617');
INSERT INTO `profit_data_average` VALUES ('83', '12', '2012', 'MA-2', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '8317136.6001');
INSERT INTO `profit_data_average` VALUES ('84', '12', '2012', 'MA-3', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '319718518.52');
INSERT INTO `profit_data_average` VALUES ('85', '12', '2012', 'MA-4', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '4291558.6004');
INSERT INTO `profit_data_average` VALUES ('86', '12', '2012', 'MA-5', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '5508444.8344');
INSERT INTO `profit_data_average` VALUES ('87', '12', '2012', 'MA-6', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '6050785.6341');
INSERT INTO `profit_data_average` VALUES ('88', '12', '2012', 'MA-7', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '6243733.588');
INSERT INTO `profit_data_average` VALUES ('89', '12', '2012', 'MA-8', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '5102745.6647');
INSERT INTO `profit_data_average` VALUES ('9', '12', '2012', 'MA-9', 'unknown', 'ABOVE', 'sale_oper_avg', '1', '1935118369.4');
INSERT INTO `profit_data_average` VALUES ('90', '12', '2012', 'MA-9', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '40065324.165');
INSERT INTO `profit_data_average` VALUES ('91', '12', '2012', 'MA-10', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '10442896.936');
INSERT INTO `profit_data_average` VALUES ('92', '12', '2012', 'MA-11', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '17276968.843');
INSERT INTO `profit_data_average` VALUES ('93', '12', '2012', 'MA-12', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '8785371.0625');
INSERT INTO `profit_data_average` VALUES ('94', '12', '2012', 'MA-13', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '5777879.6772');
INSERT INTO `profit_data_average` VALUES ('95', '12', '2012', 'MA-14', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '5652450.1219');
INSERT INTO `profit_data_average` VALUES ('96', '12', '2012', 'MA-15', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '16454411.765');
INSERT INTO `profit_data_average` VALUES ('97', '12', '2012', 'MA-16', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '13316652.286');
INSERT INTO `profit_data_average` VALUES ('98', '12', '2012', 'MA-17', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '5960176.7527');
INSERT INTO `profit_data_average` VALUES ('99', '12', '2012', 'MA-18', 'unknown', 'ABOVE', 'general_admin_expe_avg', '1', '9087191.358');

-- ----------------------------
-- Table structure for profit_index
-- ----------------------------
DROP TABLE IF EXISTS `profit_index`;
CREATE TABLE `profit_index` (
  `PS_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of profit_index
-- ----------------------------
INSERT INTO `profit_index` VALUES ('comprehensive_inco', '五、综合收益总额');
INSERT INTO `profit_index` VALUES ('credit_loss', '      信用减值损失（损失以“-”号填列）');
INSERT INTO `profit_index` VALUES ('financial_expe', '      财务费用');
INSERT INTO `profit_index` VALUES ('financial_expe_avg', '财务费用平均值');
INSERT INTO `profit_index` VALUES ('general_admin_expe', '      管理费用');
INSERT INTO `profit_index` VALUES ('general_admin_expe_avg', '管理费用平均值');
INSERT INTO `profit_index` VALUES ('inco_before_tax', '三、利润总额（亏损总额以“-”号填列）');
INSERT INTO `profit_index` VALUES ('inco_share', '六、每股收益');
INSERT INTO `profit_index` VALUES ('income_tax', '  减：所得税费用');
INSERT INTO `profit_index` VALUES ('inte_expe', '        其中：利息费用');
INSERT INTO `profit_index` VALUES ('inte_inco', '                利息收入');
INSERT INTO `profit_index` VALUES ('inte_inco_avg', '利息收入平均值');
INSERT INTO `profit_index` VALUES ('inve_gain_loss', '      投资损益（损失以“-”号填列）');
INSERT INTO `profit_index` VALUES ('loss_ass', '      资产减值损失（损失以“-”号填列）');
INSERT INTO `profit_index` VALUES ('net_expo_inco', '      净敞口套期收益（损失以“-”号填列）');
INSERT INTO `profit_index` VALUES ('net_inco', '四、净利润（净亏损以“-”号填列）');
INSERT INTO `profit_index` VALUES ('net_profit_oper', '  持续经营净利润（损失以“-”号填列）');
INSERT INTO `profit_index` VALUES ('net_profit_term', '  终止经营净利润（损失以“-”号填列）');
INSERT INTO `profit_index` VALUES ('non_ass_loss', '      其中：非流动资产处理损失');
INSERT INTO `profit_index` VALUES ('non_oper_expe', '  减：营业外支出');
INSERT INTO `profit_index` VALUES ('non_oper_inco', '  加：营业外收入');
INSERT INTO `profit_index` VALUES ('oper_cost', '  减：营业成本');
INSERT INTO `profit_index` VALUES ('oper_cost_avg', '主营业务成本平均值');
INSERT INTO `profit_index` VALUES ('oper_inco', '二、营业利润（亏损以“-”号填列）');
INSERT INTO `profit_index` VALUES ('operating_tax ', '      营业税金及附加');
INSERT INTO `profit_index` VALUES ('pro_ass', '      资产处置收益（损失以“-”号填列）');
INSERT INTO `profit_index` VALUES ('pro_changes_1', '      公允价值变动收益（损失以“-”号填列）');
INSERT INTO `profit_index` VALUES ('pro_changes_2', '  加：公允价值变动权益（损失以“-”号填列）');
INSERT INTO `profit_index` VALUES ('research_deve', '      研发费用');
INSERT INTO `profit_index` VALUES ('sale_oper', '一、营业总收入');
INSERT INTO `profit_index` VALUES ('sale_oper_avg', '主营业务收入平均值');
INSERT INTO `profit_index` VALUES ('selling_expe', '      销售费用');
INSERT INTO `profit_index` VALUES ('selling_expe_avg', '销售费用平均值');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `DIS_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DIS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DIS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('AH', '安徽省');
INSERT INTO `province` VALUES ('AM', '澳门特别行政区');
INSERT INTO `province` VALUES ('BJ', '北京市');
INSERT INTO `province` VALUES ('CQ', '重庆市');
INSERT INTO `province` VALUES ('FJ', '福建省');
INSERT INTO `province` VALUES ('GD', '广东省');
INSERT INTO `province` VALUES ('GS', '甘肃省');
INSERT INTO `province` VALUES ('GX', '广西壮族自治区');
INSERT INTO `province` VALUES ('GZ', '贵州省');
INSERT INTO `province` VALUES ('HB1', '河北省');
INSERT INTO `province` VALUES ('HB2', '湖北省');
INSERT INTO `province` VALUES ('HEN', '河南省');
INSERT INTO `province` VALUES ('HUN', '湖南省');
INSERT INTO `province` VALUES ('JS', '江苏省');
INSERT INTO `province` VALUES ('JX', '江西省');
INSERT INTO `province` VALUES ('LN', '辽宁省');
INSERT INTO `province` VALUES ('SC', '四川省');
INSERT INTO `province` VALUES ('SD', '山东省');
INSERT INTO `province` VALUES ('SH', '上海市');
INSERT INTO `province` VALUES ('SX1', '山西省');
INSERT INTO `province` VALUES ('SX2', '陕西省');
INSERT INTO `province` VALUES ('XG', '香港特别行政区');
INSERT INTO `province` VALUES ('YJ', '天津市');
INSERT INTO `province` VALUES ('ZJ', '浙江省');

-- ----------------------------
-- Table structure for scale
-- ----------------------------
DROP TABLE IF EXISTS `scale`;
CREATE TABLE `scale` (
  `SCALE_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `SCALE_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`SCALE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of scale
-- ----------------------------
INSERT INTO `scale` VALUES ('ABOVE', '规模以上企业');
INSERT INTO `scale` VALUES ('BELOW', '规模以下企业');
INSERT INTO `scale` VALUES ('L', '大型企业');
INSERT INTO `scale` VALUES ('M', '中型企业');
INSERT INTO `scale` VALUES ('N/A', '未知规模');
INSERT INTO `scale` VALUES ('S', '小型企业');

-- ----------------------------
-- Table structure for uploading_of_balance
-- ----------------------------
DROP TABLE IF EXISTS `uploading_of_balance`;
CREATE TABLE `uploading_of_balance` (
  `USER_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `USER_TIME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BS_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `BS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUES` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`BS_ID`),
  KEY `BS_ID` (`BS_ID`),
  KEY `VALUES` (`VALUES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of uploading_of_balance
-- ----------------------------
INSERT INTO `uploading_of_balance` VALUES ('1', '', 'ttl_ass_avg', '资产总计平均值', null);
INSERT INTO `uploading_of_balance` VALUES ('10', '', 'close_balance', '期末余额', null);
INSERT INTO `uploading_of_balance` VALUES ('11', '', 'balance_beginning', '年初余额', null);
INSERT INTO `uploading_of_balance` VALUES ('12', '', 'assets', '资产', null);
INSERT INTO `uploading_of_balance` VALUES ('13', '', 'cur_ass', '流动资产：', null);
INSERT INTO `uploading_of_balance` VALUES ('14', '', 'monetary_fnds', '货币资金', null);
INSERT INTO `uploading_of_balance` VALUES ('15', '', 'fin_ass_held_for_trd', '交易性金融资产', null);
INSERT INTO `uploading_of_balance` VALUES ('16', '', 'notes_rev', '应收票据', null);
INSERT INTO `uploading_of_balance` VALUES ('17', '', 'accounts_rev', '应收账款', null);
INSERT INTO `uploading_of_balance` VALUES ('18', '', 'prepayments', '预付款项', null);
INSERT INTO `uploading_of_balance` VALUES ('19', '', 'interest_rev', '应收利息', null);
INSERT INTO `uploading_of_balance` VALUES ('2', '', 'ttl_cur_ass_avg', '流动资产合计平均值', null);
INSERT INTO `uploading_of_balance` VALUES ('20', '', 'dividents_rev', '应收股利', null);
INSERT INTO `uploading_of_balance` VALUES ('21', '', 'other_rev', '其他应收款', null);
INSERT INTO `uploading_of_balance` VALUES ('22', '', 'inventory', '存货', null);
INSERT INTO `uploading_of_balance` VALUES ('23', '', 'non_cur_ass_1year', '一年内到期的非流动性资产', null);
INSERT INTO `uploading_of_balance` VALUES ('24', '', 'ttl_cur_ass', '流动资产合计', null);
INSERT INTO `uploading_of_balance` VALUES ('25', '', 'non_cur_ass', '非流动性资产：', null);
INSERT INTO `uploading_of_balance` VALUES ('26', '', 'AFS_secur', '可供出售金融资产', null);
INSERT INTO `uploading_of_balance` VALUES ('27', '', 'held_matur_inv', '持有至到期投资', null);
INSERT INTO `uploading_of_balance` VALUES ('28', '', 'LT_rev', '长期应收款', null);
INSERT INTO `uploading_of_balance` VALUES ('29', '', 'LT_equity_inv', '长期股权投资', null);
INSERT INTO `uploading_of_balance` VALUES ('3', '', 'accounts_rev_avg', '应收账款平均值', null);
INSERT INTO `uploading_of_balance` VALUES ('30', '', 'inv_ppy', '投资性房地产', null);
INSERT INTO `uploading_of_balance` VALUES ('31', '', 'fixed_ass', '固定资产', null);
INSERT INTO `uploading_of_balance` VALUES ('32', '', 'constr_in_prog', '在建工程', null);
INSERT INTO `uploading_of_balance` VALUES ('33', '', 'constr_mat', '工程物资', null);
INSERT INTO `uploading_of_balance` VALUES ('34', '', 'fixed_ass_liq', '固定资产清理', null);
INSERT INTO `uploading_of_balance` VALUES ('35', '', 'prod_bio_ass', '生产性生物资产', null);
INSERT INTO `uploading_of_balance` VALUES ('36', '', 'og_ass', '油气资产', null);
INSERT INTO `uploading_of_balance` VALUES ('37', '', 'intangi_ass', '无形资产', null);
INSERT INTO `uploading_of_balance` VALUES ('38', '', 'dev_exp', '开发支出', null);
INSERT INTO `uploading_of_balance` VALUES ('39', '', 'goodwill', '商誉', null);
INSERT INTO `uploading_of_balance` VALUES ('4', '', 'inventory_avg', '存货平均值', null);
INSERT INTO `uploading_of_balance` VALUES ('40', '', 'LT_amort', '长期待摊费用', null);
INSERT INTO `uploading_of_balance` VALUES ('41', '', 'DTA', '递延所得税资产', null);
INSERT INTO `uploading_of_balance` VALUES ('42', '', 'other_non_cur_ass', '其他非流动资产', null);
INSERT INTO `uploading_of_balance` VALUES ('43', '', 'ttl_non_cur_ass', '非流动资产总计', null);
INSERT INTO `uploading_of_balance` VALUES ('44', '', 'ttl_ass', '资产总计', null);
INSERT INTO `uploading_of_balance` VALUES ('45', '', 'ttl_ass', '资产总计', null);
INSERT INTO `uploading_of_balance` VALUES ('46', '', 'cur_liab', '流动负债：', null);
INSERT INTO `uploading_of_balance` VALUES ('47', '', 'ST_borrow', '短期借款', null);
INSERT INTO `uploading_of_balance` VALUES ('48', '', 'trad_fin_liab', '交易性金融负债', null);
INSERT INTO `uploading_of_balance` VALUES ('49', '', 'notes_pay', '应付票据', null);
INSERT INTO `uploading_of_balance` VALUES ('5', '', 'ttl_liab_avg', '负债合计平均值', null);
INSERT INTO `uploading_of_balance` VALUES ('50', '', 'acc_pay', '应付账款', null);
INSERT INTO `uploading_of_balance` VALUES ('51', '', 'prepayments', '预付账款', null);
INSERT INTO `uploading_of_balance` VALUES ('52', '', 'ee_comp_pay', '应付职工薪酬', null);
INSERT INTO `uploading_of_balance` VALUES ('53', '', 'tax_pay', '应交税金', null);
INSERT INTO `uploading_of_balance` VALUES ('54', '', 'interest_pay', '应付利息', null);
INSERT INTO `uploading_of_balance` VALUES ('55', '', 'equi_pay', '应付股权', null);
INSERT INTO `uploading_of_balance` VALUES ('56', '', 'other_pay', '其他应付款', null);
INSERT INTO `uploading_of_balance` VALUES ('57', '', 'non_cur_liab_1year', '一年内到期的非流动性负债', null);
INSERT INTO `uploading_of_balance` VALUES ('58', '', 'ttl_cur_liab', '流动负债合计', null);
INSERT INTO `uploading_of_balance` VALUES ('59', '', 'non_cur_cur_liab', '非流动流动负债：', null);
INSERT INTO `uploading_of_balance` VALUES ('6', '', 'ttl_cur_liab_avg', '流动负债合计平均值', null);
INSERT INTO `uploading_of_balance` VALUES ('60', '', 'LT_loan', '长期借款', null);
INSERT INTO `uploading_of_balance` VALUES ('61', '', 'bond_pay', '应付债券', null);
INSERT INTO `uploading_of_balance` VALUES ('62', '', 'LT_rev', '长期应收款', null);
INSERT INTO `uploading_of_balance` VALUES ('63', '', 'speci_acc_pay', '专项应付款', null);
INSERT INTO `uploading_of_balance` VALUES ('64', '', 'proj_liab', '预计负债', null);
INSERT INTO `uploading_of_balance` VALUES ('65', '', 'DITL', '递延所得税负债', null);
INSERT INTO `uploading_of_balance` VALUES ('66', '', 'other_non_cur_liab', '其他非流动负债', null);
INSERT INTO `uploading_of_balance` VALUES ('67', '', 'ttl_non_cur_liab', '非流动负债合计', null);
INSERT INTO `uploading_of_balance` VALUES ('68', '', 'ttl_liab', '负债合计', null);
INSERT INTO `uploading_of_balance` VALUES ('69', '', 'owner_equi', '所有者权益（或股东权益）：', null);
INSERT INTO `uploading_of_balance` VALUES ('7', '', 'acc_pay_avg', '应付账款平均值', null);
INSERT INTO `uploading_of_balance` VALUES ('70', '', 'paid_in_cap', '实收资本（或股本）', null);
INSERT INTO `uploading_of_balance` VALUES ('71', '', 'cap_sur', '资本公积', null);
INSERT INTO `uploading_of_balance` VALUES ('72', '', 'trea_stk', '减：库存股', null);
INSERT INTO `uploading_of_balance` VALUES ('73', '', 'sur_reserv', '盈余公积', null);
INSERT INTO `uploading_of_balance` VALUES ('74', '', 'undistrib_earn', '未分配利润', null);
INSERT INTO `uploading_of_balance` VALUES ('75', '', 'ttl_sharehold', '所有者权益（或股东权益）合计', null);
INSERT INTO `uploading_of_balance` VALUES ('76', '', 'ttl_owner_equi', '负债和所有者权益（或股东权益）合计', null);
INSERT INTO `uploading_of_balance` VALUES ('8', '', 'ttl_sharehold_avg', '所有者权益合计平均值', null);
INSERT INTO `uploading_of_balance` VALUES ('9', '', 'paid_in_cap_avg', '实收资本平均值', null);

-- ----------------------------
-- Table structure for uploading_of_cash
-- ----------------------------
DROP TABLE IF EXISTS `uploading_of_cash`;
CREATE TABLE `uploading_of_cash` (
  `USER_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `USER_TIME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CF_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `CF_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUES` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CF_ID`),
  KEY `CF_ID` (`CF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of uploading_of_cash
-- ----------------------------
INSERT INTO `uploading_of_cash` VALUES ('1', '', 'cash_rev_retu_avg', '投资收益平均值(损失以“-”号记)', null);
INSERT INTO `uploading_of_cash` VALUES ('10', '', 'other_paid_oper', '        支付其他与经营活动有关的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('11', '', 'cash_outfl_oper', '经营活动现金流出小计', null);
INSERT INTO `uploading_of_cash` VALUES ('12', '', 'net_fl_oper', '        经营活动产生的现金流量净额', null);
INSERT INTO `uploading_of_cash` VALUES ('13', '', 'cash_fl_inve', '二、投资活动产生的现金流量：', null);
INSERT INTO `uploading_of_cash` VALUES ('14', '', 'cash_rev_disp', '        收回投资收到的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('15', '', 'cash_rev_retu', '        取得投资收益收到的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('16', '', 'net_rev_fixed', '处置固定资产、无形资产和其他长期资产收回的现金净额', null);
INSERT INTO `uploading_of_cash` VALUES ('17', '', 'net_rev_disp', ' 处置子公司及其他营业单位收到的现金净额', null);
INSERT INTO `uploading_of_cash` VALUES ('18', '', 'other_rev_inve', ' 收到其他与投资活动有关的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('19', '', 'cash_infl_inve', '投资活动现金流入小计', null);
INSERT INTO `uploading_of_cash` VALUES ('2', '', 'cash_fl_oper', '一、经营活动产生的现金流量：', null);
INSERT INTO `uploading_of_cash` VALUES ('20', '', 'cash_paid_ass', '购建固定资产、无形资产和其他长期资产支付的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('21', '', 'cash_paid_acq', '        投资支付的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('22', '', 'net_outfl_subs', '取得子公司及其他营业单位支付的现金净额', null);
INSERT INTO `uploading_of_cash` VALUES ('23', '', 'other_pay_inve', '       支付其他与投资活动有关的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('24', '', 'cash_outfl_inve', '投资活动现金流出小计', null);
INSERT INTO `uploading_of_cash` VALUES ('25', '', 'net_fl_inve', '        投资活动产生的现金流量净额', null);
INSERT INTO `uploading_of_cash` VALUES ('26', '', 'cash_fl_fin', '三、筹资活动产生的现金流量：', null);
INSERT INTO `uploading_of_cash` VALUES ('27', '', 'cash_rev_cap', '        吸收投资收到的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('28', '', 'cash_rev_bor', '        取得借款收到的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('29', '', 'other_rev_fin', '        收到其他与筹资活动有关的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('3', '', 'casc_rev_sale', '        销售商品、提供劳务收到的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('30', '', 'cash_infl_fin', '筹资活动现金流入小计', null);
INSERT INTO `uploading_of_cash` VALUES ('31', '', 'cash_repay', '        偿还债务支付的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('32', '', 'cash_pay_expense', '        分配股利、利润或偿付利息支付的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('33', '', 'other_pay_fin', '        支付其他与筹资活动有关的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('34', '', 'cash_outfl_fin', '筹资活动现金流出小计', null);
INSERT INTO `uploading_of_cash` VALUES ('35', '', 'net_fl_fin', '       筹资活动产生的现金流量净额', null);
INSERT INTO `uploading_of_cash` VALUES ('36', '', 'effect_fore', '四、汇率变动对现金及现金等价物的影响', null);
INSERT INTO `uploading_of_cash` VALUES ('37', '', 'net_incr', '五、现金及现金等价物净增加额', null);
INSERT INTO `uploading_of_cash` VALUES ('38', '', 'cash_equ_begin', '     加：期初现金及现金等价物余额', null);
INSERT INTO `uploading_of_cash` VALUES ('39', '', 'cash_equ_end', '六、期末现金及现金等价物余额', null);
INSERT INTO `uploading_of_cash` VALUES ('4', '', 'refund_tax', '        收到的税费返还', null);
INSERT INTO `uploading_of_cash` VALUES ('40', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('41', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('42', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('43', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('44', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('45', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('46', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('47', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('48', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('49', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('5', '', 'other_cash_rev', '        收到其他与经营活动有关的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('50', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('51', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('52', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('53', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('54', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('55', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('56', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('57', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('58', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('59', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('6', '', 'cash_infl_oper', '经营活动现金流入小计', null);
INSERT INTO `uploading_of_cash` VALUES ('60', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('61', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('62', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('63', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('64', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('65', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('66', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('67', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('68', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('69', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('7', '', 'cash_paid_good', '        购买商品、接受劳务支付的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('70', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('71', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('72', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('73', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('74', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('75', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('76', '', '', '', null);
INSERT INTO `uploading_of_cash` VALUES ('8', '', 'cash_paid_beh', '        支付给职工以及为职工支付的现金', null);
INSERT INTO `uploading_of_cash` VALUES ('9', '', 'payments_type', '        支付的各项税费', null);

-- ----------------------------
-- Table structure for uploading_of_profit
-- ----------------------------
DROP TABLE IF EXISTS `uploading_of_profit`;
CREATE TABLE `uploading_of_profit` (
  `USER_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `USER_TIME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PS_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `UNIT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PS_NAME` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUES` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`PS_ID`),
  KEY `PS_ID` (`PS_ID`),
  KEY `PS_NAME` (`PS_NAME`),
  KEY `VALUES` (`VALUES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of uploading_of_profit
-- ----------------------------
INSERT INTO `uploading_of_profit` VALUES ('1', '', 'sale_oper_avg', '100000000', '主营业务收入平均值', null);
INSERT INTO `uploading_of_profit` VALUES ('10', '', 'oper_cost', '100000000', '  减：营业成本', null);
INSERT INTO `uploading_of_profit` VALUES ('11', '', 'operating_tax ', '100000000', '      营业税金及附加', null);
INSERT INTO `uploading_of_profit` VALUES ('12', '', 'selling_expe', '100000000', '      销售费用', null);
INSERT INTO `uploading_of_profit` VALUES ('13', '', 'general_admin_expe', '100000000', '      管理费用', null);
INSERT INTO `uploading_of_profit` VALUES ('14', '', 'research_deve', '100000000', '      研发费用', null);
INSERT INTO `uploading_of_profit` VALUES ('15', '', 'financial_expe', '100000000', '      财务费用', null);
INSERT INTO `uploading_of_profit` VALUES ('16', '', 'inte_expe', '100000000', '        其中：利息费用', null);
INSERT INTO `uploading_of_profit` VALUES ('17', '', 'inte_inco', '100000000', '                利息收入', null);
INSERT INTO `uploading_of_profit` VALUES ('18', '', 'pro_changes_-', '100000000', '  加：公允价值变动权益（损失以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('19', '', 'inve_gain_loss', '100000000', '      投资损益（损失以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('2', '', 'oper_cost_avg', '100000000', '主营业务成本平均值', null);
INSERT INTO `uploading_of_profit` VALUES ('20', '', 'net_expo_inco', '100000000', '      净敞口套期收益（损失以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('21', '', 'pro_changes_+', '100000000', '      公允价值变动收益（损失以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('22', '', 'credit_loss', '100000000', '      信用减值损失（损失以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('23', '', 'loss_ass', '100000000', '      资产减值损失（损失以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('24', '', 'pro_ass', '100000000', '      资产处置收益（损失以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('25', '', 'oper_inco', '100000000', '二、营业利润（亏损以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('26', '', 'non_oper_inco', '100000000', '  加：营业外收入', null);
INSERT INTO `uploading_of_profit` VALUES ('27', '', 'non_oper_expe', '100000000', '  减：营业外支出', null);
INSERT INTO `uploading_of_profit` VALUES ('28', '', 'non_ass_loss', '100000000', '      其中：非流动资产处理损失', null);
INSERT INTO `uploading_of_profit` VALUES ('29', '', 'inco_before_tax', '100000000', '三、利润总额（亏损总额以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('3', '', 'selling_expe_avg', '100000000', '销售费用平均值', null);
INSERT INTO `uploading_of_profit` VALUES ('30', '', 'income_tax', '100000000', '  减：所得税费用', null);
INSERT INTO `uploading_of_profit` VALUES ('31', '', 'net_inco', '100000000', '四、净利润（净亏损以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('32', '', 'net_profit_oper', '100000000', '  持续经营净利润（损失以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('33', '', 'net_profit_term', '100000000', '  终止经营净利润（损失以“-”号填列）', null);
INSERT INTO `uploading_of_profit` VALUES ('34', '', 'comprehensive_inco', '100000000', '五、综合收益总额', null);
INSERT INTO `uploading_of_profit` VALUES ('35', '', 'inco_share', '100000000', '六、每股收益', null);
INSERT INTO `uploading_of_profit` VALUES ('36', '', 'basic_earning_share', '100000000', '  基本每股收益', null);
INSERT INTO `uploading_of_profit` VALUES ('37', '', 'diluted_per_share', '100000000', '  稀释每股收益', null);
INSERT INTO `uploading_of_profit` VALUES ('38', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('39', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('4', '', 'general_admin_expe_avg', '100000000', '管理费用平均值', null);
INSERT INTO `uploading_of_profit` VALUES ('40', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('41', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('42', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('43', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('44', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('45', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('46', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('47', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('48', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('49', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('5', '', 'financial_expe_avg', '100000000', '财务费用平均值', null);
INSERT INTO `uploading_of_profit` VALUES ('50', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('51', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('52', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('53', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('54', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('55', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('56', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('57', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('58', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('59', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('6', '', 'inte_inco_avg', '100000000', '利息收入平均值', null);
INSERT INTO `uploading_of_profit` VALUES ('60', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('61', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('62', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('63', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('64', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('65', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('66', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('67', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('68', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('69', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('7', '', 'oper_inco_avg', '100000000', '营业利润平均值', null);
INSERT INTO `uploading_of_profit` VALUES ('70', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('71', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('72', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('73', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('74', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('75', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('76', '', '', '', '', null);
INSERT INTO `uploading_of_profit` VALUES ('8', '', 'inco_before_tax_avg', '100000000', '利润总额平均值', null);
INSERT INTO `uploading_of_profit` VALUES ('9', '', 'sale_oper', '100000000', '一、营业总收入', null);

-- ----------------------------
-- Table structure for user_information
-- ----------------------------
DROP TABLE IF EXISTS `user_information`;
CREATE TABLE `user_information` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `KEY` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_information
-- ----------------------------
