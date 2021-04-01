/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : efund

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-04-01 09:45:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(32) DEFAULT NULL,
  `apass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123');

-- ----------------------------
-- Table structure for fund
-- ----------------------------
DROP TABLE IF EXISTS `fund`;
CREATE TABLE `fund` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fnum` varchar(6) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `fstart` date DEFAULT NULL,
  `ftype` varchar(64) DEFAULT NULL,
  `fmanager` varchar(64) DEFAULT NULL,
  `frate` decimal(10,2) DEFAULT '0.00',
  `fmonth1` decimal(10,2) DEFAULT '0.00',
  `fmonth3` decimal(10,2) DEFAULT '0.00',
  `fmonth6` decimal(10,2) DEFAULT '0.00',
  `fmonth12` decimal(10,2) DEFAULT '0.00',
  `fbuyrate` decimal(10,2) DEFAULT NULL,
  `fbuy` int(11) unsigned zerofill DEFAULT NULL,
  `fday` decimal(10,2) DEFAULT '0.00',
  `fval` decimal(10,4) DEFAULT '0.0000',
  `ftext` varchar(255) DEFAULT NULL,
  `fflag` int(10) DEFAULT '1',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fund
-- ----------------------------
INSERT INTO `fund` VALUES ('1', '470018', '汇添富双利债', '2011-01-26', '3', '汇添富基金', '95.97', '1.27', '2.36', '7.28', '13.62', '0.13', '00000000100', '-2.28', '2.4451', '汇添富双利增强债券基金可部分投资股票市场,也使得其相较纯债基金在收益方面更具灵活性。在股市无确定性机会时,专注债市,力求获取较为稳健的投资收益。', '1');
INSERT INTO `fund` VALUES ('2', '519730', '交银定期支付', '2013-08-13', '3', '交银施罗德基金', '58.21', '-1.87', '-1.29', '2.01', '5.49', '0.13', '00000000070', '-1.62', '2.0215', '截至2020-09-30，交银定期支付的净资产规模72.65亿元，比上一期增加51.09%。现阶段势头良好，引发投资者的热议。', '1');
INSERT INTO `fund` VALUES ('3', '519729', '交银增强收益', '2013-12-25', '3', '交银施罗德基金', '60.87', '-1.93', '-1.25', '0.91', '4.17', '0.13', '00000000100', '1.78', '1.9866', '截至2020-09-30,交银增强收益债券 净资产规模0.17亿元,比上一期(2020-06-30)减少了12.03%,股票配置占比上期减少11.88%。', '1');
INSERT INTO `fund` VALUES ('4', '001140', '工银总回报灵', '2015-04-17', '2', '工银瑞信基金', '95.46', '9.36', '24.11', '58.62', '81.52', '0.12', '00000000010', '1.08', '1.3552', '大象基金提供工银总回报灵活配置混合(001140)的净值,实时估值,让您及时掌握工银总回报灵活配置混合的行情走势。', '1');
INSERT INTO `fund` VALUES ('5', '210008', '金鹰策略配置', '2011-09-01', '2', '金鹰基金', '190.94', '6.52', '20.81', '27.27', '72.48', '0.15', '00000000010', '-2.71', '2.1287', '金鹰策略配置混合型证券投资基金是金鹰基金发行的一个混合型的基金理财产品，具有良好流动性的金融工具。', '1');
INSERT INTO `fund` VALUES ('6', '001156', '申万菱信新能', '2015-05-07', '2', '申万菱信基金', '111.87', '6.71', '25.96', '64.19', '100.25', '0.08', '00000000050', '-2.86', '2.0191', '申万菱信新能源汽车主题灵活配置混合型证券投资基金(代码001156)04月17日净值上涨3.92%,引起投资者关注。', '1');
INSERT INTO `fund` VALUES ('7', '540008', '汇丰晋信低碳', '2010-06-08', '1', '汇丰晋信基金', '199.12', '13.02', '32.02', '67.02', '131.23', '0.15', '00000000100', '-2.11', '1.9948', '截止到12月25日交易结束，汇丰晋信低碳先锋股票的单位净值为3.1443元，净值上涨0.1551元，涨幅为5.19%。', '1');
INSERT INTO `fund` VALUES ('8', '001245', '工银生态环境', '2015-06-02', '1', '工银瑞信基金', '100.31', '5.63', '27.93', '68.92', '102.95', '0.08', '00000000050', '-0.95', '2.9271', '工银基金在股票型基金和混合型基金方面的表现是比较普通的，但在债券基金方面却是不错，工银添利今年收益超过5%。', '0');
INSERT INTO `fund` VALUES ('9', '000828', '泰达转型机遇', '2014-11-18', '1', '泰达宏利基金', '86.94', '5.16', '31.21', '57.36', '91.67', '0.09', '00000000050', '-1.92', '1.8702', '泰达宏利转型机遇股票型证券投资基金是泰达宏利发行的一个股票型的基金理财产品，具有良好流动性。', '1');
INSERT INTO `fund` VALUES ('10', '160632', '鹏华酒分级', '2015-04-29', '1', '鹏华基金', '289.12', '11.33', '25.63', '73.87', '103.72', '0.13', '00000000080', '2.22', '2.9833', '鹏华中证酒指数分级证券投资基金是鹏华基金发行的一个结构型的基金理财产品，具有良好的流动性。', '0');
INSERT INTO `fund` VALUES ('11', '001048', '富国新兴产业', '2015-03-12', '1', '富国基金', '81.75', '7.48', '11.02', '36.88', '43.37', '0.15', '00000000100', '-0.82', '1.8705', '富国新兴产业001048基金主要投资于新兴产业相关股票,力求为基金份额持有人获取超过业绩比较基准的收益。', '1');
INSERT INTO `fund` VALUES ('12', '004040', '金鹰医疗健康', '2017-08-01', '1', '金鹰基金', '98.26', '8.61', '8.83', '11.72', '59.79', '0.13', '00000000010', '3.12', '1.6171', '大象基金提供金鹰医疗健康产业C(004041)的净值,实时估值,让您及时掌握金鹰医疗健康产业C(004041)的行情走势。', '1');
INSERT INTO `fund` VALUES ('13', '163209', '诺安创业扳指', '2012-03-29', '1', '诺安基金', '34.08', '6.43', '15.28', '33.39', '62.84', '0.13', '00000000010', '0.12', '1.5437', '金融界基金12月22日讯 诺安创业板指数增强(LOF)A基金12月21日上涨,现价,成交万元。', '1');
INSERT INTO `fund` VALUES ('14', '000209', '信诚新兴产业', '2013-07-17', '2', '中信保诚基金', '154.56', '11.62', '21.64', '59.76', '84.69', '0.15', '00000000010', '-1.92', '2.5586', '信诚新兴产业混合型证券投资基金是信诚基金发行的一个混合型的基金理财产，力求超额收益与长期资本增值。', '1');
INSERT INTO `fund` VALUES ('15', '000496', '长安产业精选', '2014-05-07', '2', '长安基金', '73.12', '4.77', '16.03', '13.61', '6.07', '0.12', '00000000010', '1.07', '2.5503', '长安产业精选灵活配置混合型发起式证券投资基金是长安基金发行的一个混合型的基金理财产品，力求长期稳健回报。', '1');
INSERT INTO `fund` VALUES ('16', '002345', '华夏高端制造', '2016-05-11', '2', '华夏基金', '37.36', '9.56', '22.39', '56.93', '79.19', '0.13', '00000000010', '-0.87', '3.3402', '华夏高端制造灵活配置混合型证券投资基金是华夏基金发行的一个混合型的基金理财产品，追求基金长期稳定增值。', '1');
INSERT INTO `fund` VALUES ('17', '001753', '红土创新新兴', '2015-09-23', '2', '红土创新基金', '34.91', '7.61', '32.77', '45.52', '59.07', '0.08', '00000000010', '-2.04', '1.3734', '红土创新新兴产业混合是红土创新基金旗下基金，基金全称为红土创新新兴产业混合001753，基金成立于2015-09-23，基金最新净值为1.4140，最近季报披露基金资产为0.80亿元。', '1');
INSERT INTO `fund` VALUES ('18', '529979', '长信内需成长', '2011-10-20', '2', '长信基金', '466.99', '7.14', '14.48', '50.04', '87.74', '0.15', '00000000010', '0.15', '1.5084', '长信内需成长混合型证券投资基金是长信基金发行的一个混合型的基金理财产品，致力于实现资产的长期增值。', '1');
INSERT INTO `fund` VALUES ('19', '000755', '富安达新兴成', '2014-09-11', '2', '富安达基金', '73.43', '4.21', '8.82', '28.95', '33.15', '0.15', '00000000100', '1.59', '3.2007', '金融界基金02月24日讯 富安达新兴成长灵活配置混合型证券投资基金(简称:富安达新兴成长混合,代码000755)02月21日净值上涨2.09%,引起投资者关注。', '1');
INSERT INTO `fund` VALUES ('20', '004987', '诺德新享灵活', '2017-08-09', '2', '诺德基金', '109.73', '7.06', '17.97', '58.24', '71.95', '0.13', '00000000100', '-1.82', '1.5084', '金融界基金09月08日讯 诺德新享灵活配置混合型证券投资基金(简称:诺德新享灵活配置混合,代码004987)09月07日净值下跌2.18%,引起投资者关注', '1');
INSERT INTO `fund` VALUES ('21', '911111', 'test', '2020-01-04', '1', '陈杉新基金', '10.00', '0.00', '0.00', '0.00', '0.00', '0.13', '00000000100', '0.00', '0.0000', '这只是个测试', '1');
INSERT INTO `fund` VALUES ('22', '999991', 'test2', '2021-01-04', '1', '陈杉新基金', '10.00', '0.00', '0.00', '0.00', '0.00', '0.13', '00000000100', '0.00', '0.0000', '测试2', '1');
INSERT INTO `fund` VALUES ('23', '090017', '大成可转债增强债券', '2021-01-04', '3', '大成基金', '32.11', '1.72', '3.01', '-0.23', '0.93', '0.08', '00000000050', '1.31', '1.3185', '大成基金承诺以诚实信用、勤勉尽责的原则管理和运用基金资产，但不保证基金一定盈\r\n\r\n利，也不保证最低收益。 敬请投资人注意投资风险。', '1');
INSERT INTO `fund` VALUES ('24', '000003', '中海可转债债券', '2021-01-04', '3', '中海基金', '9.85', '1.24', '2.99', '6.30', '5.43', '0.08', '00000000100', '1.43', '1.9290', '中海可转换债券债券型证券投资基金是中海基金发行的一个债券型的基金理财产品.', '1');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `ofnum` varchar(6) DEFAULT NULL,
  `oprice` decimal(10,2) DEFAULT NULL,
  `orate` decimal(10,2) DEFAULT NULL,
  `otime` datetime DEFAULT NULL,
  `otype` varchar(4) DEFAULT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `ofname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '470018', '100.00', '0.13', '2020-12-04 00:00:12', '买入', 'psyduck', '汇添富双利债');
INSERT INTO `order` VALUES ('2', '001400', '200.00', '0.15', '2020-12-04 15:04:12', '买入', 'abin', '工银总回报灵');
INSERT INTO `order` VALUES ('3', '210008', '200.00', '0.15', '2020-12-30 10:45:16', '买入', 'psyduck', '金鹰策略配置');
INSERT INTO `order` VALUES ('4', '518730', '120.00', '0.13', '2002-12-12 11:12:23', '买入', 'test', '交银增强收益');
INSERT INTO `order` VALUES ('5', '518730', '134.00', '0.13', '2002-12-12 11:33:23', '买入', 'test3', '交银增强收益');
INSERT INTO `order` VALUES ('6', '518730', '120.00', '0.13', '2002-10-12 13:12:23', '买入', 'test2', '交银增强收益');
INSERT INTO `order` VALUES ('7', '518730', '200.00', '0.13', '2002-10-15 14:54:23', '买入', 'zfhdd', '交银增强收益');
INSERT INTO `order` VALUES ('8', '518730', '20.00', '0.13', '2002-09-12 11:12:23', '买入', 'abin', '交银增强收益');
INSERT INTO `order` VALUES ('9', '518730', '20.00', '0.13', '2002-09-12 12:12:23', '买入', 'ngxbb', '交银增强收益');
INSERT INTO `order` VALUES ('10', '001245', '10.00', '0.08', '2020-12-31 16:40:42', '买入', 'test', '工银生态环境');
INSERT INTO `order` VALUES ('11', '540008', '10.00', '0.15', '2020-12-31 16:41:19', '买入', 'test', '汇丰晋信低碳');
INSERT INTO `order` VALUES ('12', '000828', '200.00', '0.08', '2020-12-31 16:41:36', '买入', 'psyduck', '泰达转型机遇');
INSERT INTO `order` VALUES ('13', '001048', '1000.00', '0.15', '2020-12-31 16:43:30', '买入', 'abin', '富国新兴产业');
INSERT INTO `order` VALUES ('14', '004040', '10.00', '0.13', '2020-12-31 16:46:50', '买入', 'psyduck', '金鹰医疗健康');
INSERT INTO `order` VALUES ('15', '001156', '100.00', '0.08', '2020-12-31 16:53:50', '定投', 'psyduck', '申万菱信新能');
INSERT INTO `order` VALUES ('16', '160632', '120.00', '0.13', '2020-12-31 16:54:52', '定投', 'psyduck', '鹏华酒分级');
INSERT INTO `order` VALUES ('17', '540008', '1000.00', '0.15', '2021-01-02 19:16:30', '买入', 'psyduck', '汇丰晋信低碳');
INSERT INTO `order` VALUES ('18', '001048', '1000.00', '0.15', '2021-01-02 19:18:28', '买入', 'abin', '富国新兴产业');
INSERT INTO `order` VALUES ('19', '000496', '1000.00', '0.12', '2021-01-02 19:19:40', '买入', 'zfhdd', '长安产业精选');
INSERT INTO `order` VALUES ('20', '000209', '105.00', '0.15', '2021-01-02 19:23:38', '买入', 'unkown', '信诚新兴产业');
INSERT INTO `order` VALUES ('21', '210008', '2020.00', '0.15', '2021-01-02 19:24:57', '买入', 'zfhdd', '金鹰策略配置');
INSERT INTO `order` VALUES ('22', '001140', '2020.00', '0.08', '2021-01-02 19:26:45', '买入', 'unkown', '工银总回报灵');
INSERT INTO `order` VALUES ('23', '160632', '100.00', '0.13', '2021-01-03 18:27:35', '免费尝试', 'psyduck', '鹏华酒分级');
INSERT INTO `order` VALUES ('24', '160632', '100.00', '0.13', '2021-01-03 18:28:39', '免费尝试', 'test2', '鹏华酒分级');
INSERT INTO `order` VALUES ('25', '160632', '20.00', '0.13', '2021-01-03 20:25:57', '买入', 'abin', '鹏华酒分级');
INSERT INTO `order` VALUES ('26', '160632', '30.00', '0.13', '2021-01-03 20:32:51', '买入', 'unkown', '鹏华酒分级');
INSERT INTO `order` VALUES ('27', '160632', '40.00', '0.13', '2021-01-03 20:35:05', '买入', 'zfhdd', '鹏华酒分级');
INSERT INTO `order` VALUES ('28', '470018', '50.00', '0.13', '2021-01-03 20:44:56', '买入', 'zfhdd', '汇添富双利债');
INSERT INTO `order` VALUES ('29', '470018', '60.00', '0.13', '2021-01-03 20:50:11', '买入', 'test2', '汇添富双利债');
INSERT INTO `order` VALUES ('30', '470018', '100.00', '0.13', '2021-01-03 20:58:34', '卖出', 'psyduck', '汇添富双利债');
INSERT INTO `order` VALUES ('31', '001048', '100.00', '0.15', '2021-01-03 21:04:08', '买入', 'test', '富国新兴产业');
INSERT INTO `order` VALUES ('32', '001048', '100.00', '0.15', '2021-01-03 21:04:15', '卖出', 'test', '富国新兴产业');
INSERT INTO `order` VALUES ('33', '210008', '10.00', '0.15', '2021-01-04 08:57:20', '买入', 'psyduck', '金鹰策略配置');
INSERT INTO `order` VALUES ('34', '519729', '100.00', '0.13', '2021-01-04 09:41:43', '买入', 'cs', '交银增强收益');
INSERT INTO `order` VALUES ('35', '001245', '100.00', '0.08', '2021-01-04 09:46:41', '买入', 'cs', '工银生态环境');
INSERT INTO `order` VALUES ('36', '519729', '100.00', '0.13', '2021-01-04 09:53:25', '买入', 'test3', '交银增强收益');
INSERT INTO `order` VALUES ('37', '519729', '100.00', '0.13', '2021-01-04 09:55:02', '买入', 'cs', '交银增强收益');
INSERT INTO `order` VALUES ('38', '001245', '100.00', '0.08', '2021-01-04 14:11:40', '免费尝试', 'test2', '工银生态环境');
INSERT INTO `order` VALUES ('39', '001245', '100.00', '0.08', '2021-01-04 14:18:09', '买入', 'test2', '工银生态环境');
INSERT INTO `order` VALUES ('40', '001245', '100.00', '0.08', '2021-01-04 14:23:44', '买入', 'test2', '工银生态环境');
INSERT INTO `order` VALUES ('41', '001245', '100.00', '0.08', '2021-01-04 14:26:39', '买入', 'test2', '工银生态环境');
INSERT INTO `order` VALUES ('42', '001245', '100.00', '0.08', '2021-01-04 14:28:49', '买入', 'test2', '工银生态环境');
INSERT INTO `order` VALUES ('43', '001245', '200.00', '0.08', '2021-01-04 14:29:05', '买入', 'test2', '工银生态环境');
INSERT INTO `order` VALUES ('44', '001245', '400.00', '0.08', '2021-01-04 14:29:32', '卖出', 'cs', '工银生态环境');
INSERT INTO `order` VALUES ('45', '001245', '800.00', '0.08', '2021-01-04 14:33:04', '卖出', 'test', '工银生态环境');
INSERT INTO `order` VALUES ('46', '001245', '1600.00', '0.08', '2021-01-04 14:34:25', '卖出', 'test3', '工银生态环境');
INSERT INTO `order` VALUES ('47', '470018', '52.00', '0.13', '2021-01-04 14:35:16', '卖出', 'test2', '汇添富双利债');
INSERT INTO `order` VALUES ('48', '001245', '3200.00', '0.08', '2021-01-04 14:35:29', '卖出', 'test2', '工银生态环境');
INSERT INTO `order` VALUES ('49', '160632', '87.00', '0.13', '2021-01-04 14:47:24', '卖出', 'psyduck', '鹏华酒分级');
INSERT INTO `order` VALUES ('50', '210008', '170.00', '0.15', '2021-01-04 14:48:19', '卖出', 'psyduck', '金鹰策略配置');
INSERT INTO `order` VALUES ('51', '470018', '100.21', '0.13', '2021-01-04 14:48:30', '卖出', 'psyduck', '汇添富双利债');
INSERT INTO `order` VALUES ('52', '004040', '200.00', '0.13', '2021-01-04 15:23:38', '买入', 'psyduck', '金鹰医疗健康');
INSERT INTO `order` VALUES ('53', '004040', '200.00', '0.13', '2021-01-04 15:23:50', '买入', 'psyduck', '金鹰医疗健康');
INSERT INTO `order` VALUES ('54', '001140', '10.00', '0.12', '2021-01-04 15:32:21', '买入', 'psyduck', '工银总回报灵');
INSERT INTO `order` VALUES ('55', '001140', '10.00', '0.12', '2021-01-04 15:32:26', '买入', 'psyduck', '工银总回报灵');
INSERT INTO `order` VALUES ('56', '001140', '10.00', '0.12', '2021-01-04 15:32:30', '买入', 'psyduck', '工银总回报灵');
INSERT INTO `order` VALUES ('57', '470018', '1000.00', '0.13', '2021-01-05 17:17:33', '买入', 'psyduck', '汇添富双利债');
INSERT INTO `order` VALUES ('58', '000828', '184.00', '0.09', '2021-01-05 17:18:32', '卖出', 'psyduck', '泰达转型机遇');
INSERT INTO `order` VALUES ('59', '001245', '500.00', '0.08', '2021-01-06 08:39:29', '买入', 'psyduck', '工银生态环境');
INSERT INTO `order` VALUES ('60', '001156', '92.00', '0.08', '2021-01-06 08:39:45', '卖出', 'psyduck', '申万菱信新能');
INSERT INTO `order` VALUES ('61', '001048', '100.00', '0.15', '2021-01-07 09:18:43', '买入', 'psyduck', '富国新兴产业');
INSERT INTO `order` VALUES ('62', '004040', '409.00', '0.13', '2021-01-07 09:19:19', '卖出', 'psyduck', '金鹰医疗健康');
INSERT INTO `order` VALUES ('63', '519729', '100.00', '0.13', '2021-01-12 16:54:22', '买入', 'psyduck', '交银增强收益');
INSERT INTO `order` VALUES ('64', '519729', '100.00', '0.13', '2021-01-12 16:54:38', '卖出', 'psyduck', '交银增强收益');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) NOT NULL,
  `upass` varchar(32) DEFAULT NULL,
  `usex` varchar(4) DEFAULT NULL,
  `utype` varchar(64) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `money` decimal(11,2) DEFAULT '10000.00',
  `uflag` int(10) DEFAULT '1',
  PRIMARY KEY (`uid`,`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'psyduck', '123', '男', '高风险', '2000-01-01', '10086', '18802.21', '1');
INSERT INTO `user` VALUES ('2', 'cs', '123456', '女', '中低风险', '2000-12-12', '10010', '9600.00', '1');
INSERT INTO `user` VALUES ('3', 'abin', '123', '女', '高风险', '2001-11-11', '10094', '10000.00', '1');
INSERT INTO `user` VALUES ('4', 'unkown', '123', '男', '低风险', '2000-09-08', '10075', '7875.00', '1');
INSERT INTO `user` VALUES ('5', 'zfhdd', '123456', '男', '中高风险', '2000-02-22', '10063', '6980.00', '1');
INSERT INTO `user` VALUES ('6', 'test', '123', '男', '中高风险', '2002-12-12', '20098', '9800.00', '0');
INSERT INTO `user` VALUES ('7', 'test2', '123', '男', '中低风险', '2000-01-01', '10011', '9852.00', '1');
INSERT INTO `user` VALUES ('8', 'ngxbb', '123', '女', '高风险', '2000-01-04', '10012', '10000.00', '1');
INSERT INTO `user` VALUES ('9', 'test3', '123', '男', '低风险', '2002-06-23', '10023', '10000.00', '1');
INSERT INTO `user` VALUES ('10', 'finaltest', '123', '女', null, '2000-03-30', '16666', '10000.00', '1');
INSERT INTO `user` VALUES ('11', 'testfinal', '123', '男', null, '2000-01-01', '16667', '10000.00', '1');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(11) DEFAULT NULL,
  `fnum` varchar(11) DEFAULT NULL,
  `wprice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('2', 'abin', '090017', '200.00');
INSERT INTO `warehouse` VALUES ('4', 'test', '519730', '104.00');
INSERT INTO `warehouse` VALUES ('5', 'test3', '519730', '117.00');
INSERT INTO `warehouse` VALUES ('6', 'test2', '519730', '104.00');
INSERT INTO `warehouse` VALUES ('7', 'zfhdd', '519730', '174.00');
INSERT INTO `warehouse` VALUES ('8', 'abin', '519730', '17.00');
INSERT INTO `warehouse` VALUES ('9', 'ngxbb', '519730', '17.00');
INSERT INTO `warehouse` VALUES ('10', 'test', '001245', '9.00');
INSERT INTO `warehouse` VALUES ('11', 'test', '540008', '9.00');
INSERT INTO `warehouse` VALUES ('13', 'abin', '001048', '850.00');
INSERT INTO `warehouse` VALUES ('17', 'psyduck', '540008', '850.00');
INSERT INTO `warehouse` VALUES ('18', 'abin', '001048', '850.00');
INSERT INTO `warehouse` VALUES ('19', 'zfhdd', '000496', '880.00');
INSERT INTO `warehouse` VALUES ('20', 'unkown', '000209', '89.00');
INSERT INTO `warehouse` VALUES ('21', 'zfhdd', '210008', '1717.00');
INSERT INTO `warehouse` VALUES ('22', 'unkown', '001140', '1858.00');
INSERT INTO `warehouse` VALUES ('24', 'test2', '160632', '87.00');
INSERT INTO `warehouse` VALUES ('25', 'abin', '160632', '17.00');
INSERT INTO `warehouse` VALUES ('26', 'unkown', '160632', '26.00');
INSERT INTO `warehouse` VALUES ('27', 'zfhdd', '160632', '35.00');
INSERT INTO `warehouse` VALUES ('28', 'zfhdd', '470018', '44.00');
INSERT INTO `warehouse` VALUES ('31', 'test', '001048', '85.00');
INSERT INTO `warehouse` VALUES ('32', 'test', '001048', '85.00');
INSERT INTO `warehouse` VALUES ('35', 'cs', '001245', '92.00');
INSERT INTO `warehouse` VALUES ('65', 'psyduck', '001140', '30.00');
INSERT INTO `warehouse` VALUES ('66', 'psyduck', '470018', '1000.00');
INSERT INTO `warehouse` VALUES ('67', 'psyduck', '001245', '500.00');
INSERT INTO `warehouse` VALUES ('68', 'psyduck', '001048', '100.00');
