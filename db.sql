/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm44741
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm44741` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm44741`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm44741/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm44741/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm44741/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`fabushijian`,`tupian`) values (71,'2021-04-26 10:15:52','标题1','内容1','发布人1','2021-04-26','http://localhost:8080/ssm44741/upload/gonggaoxinxi_tupian1.jpg');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`fabushijian`,`tupian`) values (72,'2021-04-26 10:15:52','标题2','内容2','发布人2','2021-04-26','http://localhost:8080/ssm44741/upload/gonggaoxinxi_tupian2.jpg');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`fabushijian`,`tupian`) values (73,'2021-04-26 10:15:52','标题3','内容3','发布人3','2021-04-26','http://localhost:8080/ssm44741/upload/gonggaoxinxi_tupian3.jpg');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`fabushijian`,`tupian`) values (74,'2021-04-26 10:15:52','标题4','内容4','发布人4','2021-04-26','http://localhost:8080/ssm44741/upload/gonggaoxinxi_tupian4.jpg');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`fabushijian`,`tupian`) values (75,'2021-04-26 10:15:52','标题5','内容5','发布人5','2021-04-26','http://localhost:8080/ssm44741/upload/gonggaoxinxi_tupian5.jpg');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`neirong`,`faburen`,`fabushijian`,`tupian`) values (76,'2021-04-26 10:15:52','标题6','内容6','发布人6','2021-04-26','http://localhost:8080/ssm44741/upload/gonggaoxinxi_tupian6.jpg');

/*Table structure for table `shiwuguihai` */

DROP TABLE IF EXISTS `shiwuguihai`;

CREATE TABLE `shiwuguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shizhuxingming` varchar(200) DEFAULT NULL COMMENT '失主姓名',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinleibie` varchar(200) DEFAULT NULL COMMENT '物品类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiqudidian` varchar(200) DEFAULT NULL COMMENT '拾取地点',
  `shiqushijian` datetime DEFAULT NULL COMMENT '拾取时间',
  `wupinzhuangtai` varchar(200) DEFAULT NULL COMMENT '物品状态',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='拾物归还';

/*Data for the table `shiwuguihai` */

insert  into `shiwuguihai`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`wupinmingcheng`,`wupinleibie`,`tupian`,`shiqudidian`,`shiqushijian`,`wupinzhuangtai`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (41,'2021-04-26 10:15:52','用户名1','失主姓名1','物品名称1','物品类别1','http://localhost:8080/ssm44741/upload/shiwuguihai_tupian1.jpg','拾取地点1','2021-04-26 10:15:52','已归还','账号1','姓名1','13823888881','是','',1);
insert  into `shiwuguihai`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`wupinmingcheng`,`wupinleibie`,`tupian`,`shiqudidian`,`shiqushijian`,`wupinzhuangtai`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (42,'2021-04-26 10:15:52','用户名2','失主姓名2','物品名称2','物品类别2','http://localhost:8080/ssm44741/upload/shiwuguihai_tupian2.jpg','拾取地点2','2021-04-26 10:15:52','已归还','账号2','姓名2','13823888882','是','',2);
insert  into `shiwuguihai`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`wupinmingcheng`,`wupinleibie`,`tupian`,`shiqudidian`,`shiqushijian`,`wupinzhuangtai`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (43,'2021-04-26 10:15:52','用户名3','失主姓名3','物品名称3','物品类别3','http://localhost:8080/ssm44741/upload/shiwuguihai_tupian3.jpg','拾取地点3','2021-04-26 10:15:52','已归还','账号3','姓名3','13823888883','是','',3);
insert  into `shiwuguihai`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`wupinmingcheng`,`wupinleibie`,`tupian`,`shiqudidian`,`shiqushijian`,`wupinzhuangtai`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (44,'2021-04-26 10:15:52','用户名4','失主姓名4','物品名称4','物品类别4','http://localhost:8080/ssm44741/upload/shiwuguihai_tupian4.jpg','拾取地点4','2021-04-26 10:15:52','已归还','账号4','姓名4','13823888884','是','',4);
insert  into `shiwuguihai`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`wupinmingcheng`,`wupinleibie`,`tupian`,`shiqudidian`,`shiqushijian`,`wupinzhuangtai`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (45,'2021-04-26 10:15:52','用户名5','失主姓名5','物品名称5','物品类别5','http://localhost:8080/ssm44741/upload/shiwuguihai_tupian5.jpg','拾取地点5','2021-04-26 10:15:52','已归还','账号5','姓名5','13823888885','是','',5);
insert  into `shiwuguihai`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`wupinmingcheng`,`wupinleibie`,`tupian`,`shiqudidian`,`shiqushijian`,`wupinzhuangtai`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (46,'2021-04-26 10:15:52','用户名6','失主姓名6','物品名称6','物品类别6','http://localhost:8080/ssm44741/upload/shiwuguihai_tupian6.jpg','拾取地点6','2021-04-26 10:15:52','已归还','账号6','姓名6','13823888886','是','',6);

/*Table structure for table `shiwurenling` */

DROP TABLE IF EXISTS `shiwurenling`;

CREATE TABLE `shiwurenling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `renlingshijian` datetime DEFAULT NULL COMMENT '认领时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shizhuxingming` varchar(200) DEFAULT NULL COMMENT '失主姓名',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='失物认领';

/*Data for the table `shiwurenling` */

insert  into `shiwurenling`(`id`,`addtime`,`zhanghao`,`xingming`,`lianxifangshi`,`wupinmingcheng`,`renlingshijian`,`yonghuming`,`shizhuxingming`,`beizhu`,`sfsh`,`shhf`,`userid`) values (61,'2021-04-26 10:15:52','账号1','姓名1','联系方式1','物品名称1','2021-04-26 10:15:52','用户名1','失主姓名1','备注1','是','',1);
insert  into `shiwurenling`(`id`,`addtime`,`zhanghao`,`xingming`,`lianxifangshi`,`wupinmingcheng`,`renlingshijian`,`yonghuming`,`shizhuxingming`,`beizhu`,`sfsh`,`shhf`,`userid`) values (62,'2021-04-26 10:15:52','账号2','姓名2','联系方式2','物品名称2','2021-04-26 10:15:52','用户名2','失主姓名2','备注2','是','',2);
insert  into `shiwurenling`(`id`,`addtime`,`zhanghao`,`xingming`,`lianxifangshi`,`wupinmingcheng`,`renlingshijian`,`yonghuming`,`shizhuxingming`,`beizhu`,`sfsh`,`shhf`,`userid`) values (63,'2021-04-26 10:15:52','账号3','姓名3','联系方式3','物品名称3','2021-04-26 10:15:52','用户名3','失主姓名3','备注3','是','',3);
insert  into `shiwurenling`(`id`,`addtime`,`zhanghao`,`xingming`,`lianxifangshi`,`wupinmingcheng`,`renlingshijian`,`yonghuming`,`shizhuxingming`,`beizhu`,`sfsh`,`shhf`,`userid`) values (64,'2021-04-26 10:15:52','账号4','姓名4','联系方式4','物品名称4','2021-04-26 10:15:52','用户名4','失主姓名4','备注4','是','',4);
insert  into `shiwurenling`(`id`,`addtime`,`zhanghao`,`xingming`,`lianxifangshi`,`wupinmingcheng`,`renlingshijian`,`yonghuming`,`shizhuxingming`,`beizhu`,`sfsh`,`shhf`,`userid`) values (65,'2021-04-26 10:15:52','账号5','姓名5','联系方式5','物品名称5','2021-04-26 10:15:52','用户名5','失主姓名5','备注5','是','',5);
insert  into `shiwurenling`(`id`,`addtime`,`zhanghao`,`xingming`,`lianxifangshi`,`wupinmingcheng`,`renlingshijian`,`yonghuming`,`shizhuxingming`,`beizhu`,`sfsh`,`shhf`,`userid`) values (66,'2021-04-26 10:15:52','账号6','姓名6','联系方式6','物品名称6','2021-04-26 10:15:52','用户名6','失主姓名6','备注6','是','',6);

/*Table structure for table `shiwuzhaoling` */

DROP TABLE IF EXISTS `shiwuzhaoling`;

CREATE TABLE `shiwuzhaoling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wupinmiaoshu` longtext COMMENT '物品描述',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shiyishijian` datetime DEFAULT NULL COMMENT '拾遗时间',
  `shiyididian` varchar(200) DEFAULT NULL COMMENT '拾遗地点',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='失物招领';

/*Data for the table `shiwuzhaoling` */

insert  into `shiwuzhaoling`(`id`,`addtime`,`wupinmingcheng`,`wupinleixing`,`tupian`,`wupinmiaoshu`,`zhanghao`,`xingming`,`shouji`,`shiyishijian`,`shiyididian`,`userid`) values (51,'2021-04-26 10:15:52','物品名称1','物品类型1','http://localhost:8080/ssm44741/upload/shiwuzhaoling_tupian1.jpg','物品描述1','账号1','姓名1','13823888881','2021-04-26 10:15:52','拾遗地点1',1);
insert  into `shiwuzhaoling`(`id`,`addtime`,`wupinmingcheng`,`wupinleixing`,`tupian`,`wupinmiaoshu`,`zhanghao`,`xingming`,`shouji`,`shiyishijian`,`shiyididian`,`userid`) values (52,'2021-04-26 10:15:52','物品名称2','物品类型2','http://localhost:8080/ssm44741/upload/shiwuzhaoling_tupian2.jpg','物品描述2','账号2','姓名2','13823888882','2021-04-26 10:15:52','拾遗地点2',2);
insert  into `shiwuzhaoling`(`id`,`addtime`,`wupinmingcheng`,`wupinleixing`,`tupian`,`wupinmiaoshu`,`zhanghao`,`xingming`,`shouji`,`shiyishijian`,`shiyididian`,`userid`) values (53,'2021-04-26 10:15:52','物品名称3','物品类型3','http://localhost:8080/ssm44741/upload/shiwuzhaoling_tupian3.jpg','物品描述3','账号3','姓名3','13823888883','2021-04-26 10:15:52','拾遗地点3',3);
insert  into `shiwuzhaoling`(`id`,`addtime`,`wupinmingcheng`,`wupinleixing`,`tupian`,`wupinmiaoshu`,`zhanghao`,`xingming`,`shouji`,`shiyishijian`,`shiyididian`,`userid`) values (54,'2021-04-26 10:15:52','物品名称4','物品类型4','http://localhost:8080/ssm44741/upload/shiwuzhaoling_tupian4.jpg','物品描述4','账号4','姓名4','13823888884','2021-04-26 10:15:52','拾遗地点4',4);
insert  into `shiwuzhaoling`(`id`,`addtime`,`wupinmingcheng`,`wupinleixing`,`tupian`,`wupinmiaoshu`,`zhanghao`,`xingming`,`shouji`,`shiyishijian`,`shiyididian`,`userid`) values (55,'2021-04-26 10:15:52','物品名称5','物品类型5','http://localhost:8080/ssm44741/upload/shiwuzhaoling_tupian5.jpg','物品描述5','账号5','姓名5','13823888885','2021-04-26 10:15:52','拾遗地点5',5);
insert  into `shiwuzhaoling`(`id`,`addtime`,`wupinmingcheng`,`wupinleixing`,`tupian`,`wupinmiaoshu`,`zhanghao`,`xingming`,`shouji`,`shiyishijian`,`shiyididian`,`userid`) values (56,'2021-04-26 10:15:52','物品名称6','物品类型6','http://localhost:8080/ssm44741/upload/shiwuzhaoling_tupian6.jpg','物品描述6','账号6','姓名6','13823888886','2021-04-26 10:15:52','拾遗地点6',6);

/*Table structure for table `shizhu` */

DROP TABLE IF EXISTS `shizhu`;

CREATE TABLE `shizhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shizhuxingming` varchar(200) NOT NULL COMMENT '失主姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='失主';

/*Data for the table `shizhu` */

insert  into `shizhu`(`id`,`addtime`,`yonghuming`,`mima`,`shizhuxingming`,`xingbie`,`nianling`,`lianxifangshi`,`youxiang`,`zhaopian`) values (21,'2021-04-26 10:15:52','失主1','123456','失主姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm44741/upload/shizhu_zhaopian1.jpg');
insert  into `shizhu`(`id`,`addtime`,`yonghuming`,`mima`,`shizhuxingming`,`xingbie`,`nianling`,`lianxifangshi`,`youxiang`,`zhaopian`) values (22,'2021-04-26 10:15:52','失主2','123456','失主姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm44741/upload/shizhu_zhaopian2.jpg');
insert  into `shizhu`(`id`,`addtime`,`yonghuming`,`mima`,`shizhuxingming`,`xingbie`,`nianling`,`lianxifangshi`,`youxiang`,`zhaopian`) values (23,'2021-04-26 10:15:52','失主3','123456','失主姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm44741/upload/shizhu_zhaopian3.jpg');
insert  into `shizhu`(`id`,`addtime`,`yonghuming`,`mima`,`shizhuxingming`,`xingbie`,`nianling`,`lianxifangshi`,`youxiang`,`zhaopian`) values (24,'2021-04-26 10:15:52','失主4','123456','失主姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm44741/upload/shizhu_zhaopian4.jpg');
insert  into `shizhu`(`id`,`addtime`,`yonghuming`,`mima`,`shizhuxingming`,`xingbie`,`nianling`,`lianxifangshi`,`youxiang`,`zhaopian`) values (25,'2021-04-26 10:15:52','失主5','123456','失主姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm44741/upload/shizhu_zhaopian5.jpg');
insert  into `shizhu`(`id`,`addtime`,`yonghuming`,`mima`,`shizhuxingming`,`xingbie`,`nianling`,`lianxifangshi`,`youxiang`,`zhaopian`) values (26,'2021-04-26 10:15:52','失主6','123456','失主姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm44741/upload/shizhu_zhaopian6.jpg');

/*Table structure for table `shizhutousu` */

DROP TABLE IF EXISTS `shizhutousu`;

CREATE TABLE `shizhutousu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tousubiaoti` varchar(200) DEFAULT NULL COMMENT '投诉标题',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shizhuxingming` varchar(200) DEFAULT NULL COMMENT '失主姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tousuriqi` date DEFAULT NULL COMMENT '投诉日期',
  `tousuneirong` longtext COMMENT '投诉内容',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='失主投诉';

/*Data for the table `shizhutousu` */

insert  into `shizhutousu`(`id`,`addtime`,`tousubiaoti`,`yonghuming`,`shizhuxingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (91,'2021-04-26 10:15:52','投诉标题1','用户名1','失主姓名1','http://localhost:8080/ssm44741/upload/shizhutousu_tupian1.jpg','2021-04-26','投诉内容1','是','',1);
insert  into `shizhutousu`(`id`,`addtime`,`tousubiaoti`,`yonghuming`,`shizhuxingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (92,'2021-04-26 10:15:52','投诉标题2','用户名2','失主姓名2','http://localhost:8080/ssm44741/upload/shizhutousu_tupian2.jpg','2021-04-26','投诉内容2','是','',2);
insert  into `shizhutousu`(`id`,`addtime`,`tousubiaoti`,`yonghuming`,`shizhuxingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (93,'2021-04-26 10:15:52','投诉标题3','用户名3','失主姓名3','http://localhost:8080/ssm44741/upload/shizhutousu_tupian3.jpg','2021-04-26','投诉内容3','是','',3);
insert  into `shizhutousu`(`id`,`addtime`,`tousubiaoti`,`yonghuming`,`shizhuxingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (94,'2021-04-26 10:15:52','投诉标题4','用户名4','失主姓名4','http://localhost:8080/ssm44741/upload/shizhutousu_tupian4.jpg','2021-04-26','投诉内容4','是','',4);
insert  into `shizhutousu`(`id`,`addtime`,`tousubiaoti`,`yonghuming`,`shizhuxingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (95,'2021-04-26 10:15:52','投诉标题5','用户名5','失主姓名5','http://localhost:8080/ssm44741/upload/shizhutousu_tupian5.jpg','2021-04-26','投诉内容5','是','',5);
insert  into `shizhutousu`(`id`,`addtime`,`tousubiaoti`,`yonghuming`,`shizhuxingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (96,'2021-04-26 10:15:52','投诉标题6','用户名6','失主姓名6','http://localhost:8080/ssm44741/upload/shizhutousu_tupian6.jpg','2021-04-26','投诉内容6','是','',6);

/*Table structure for table `shizhuxinyong` */

DROP TABLE IF EXISTS `shizhuxinyong`;

CREATE TABLE `shizhuxinyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shizhuxingming` varchar(200) DEFAULT NULL COMMENT '失主姓名',
  `xinyongjifen` int(11) DEFAULT NULL COMMENT '信用积分',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='失主信用';

/*Data for the table `shizhuxinyong` */

insert  into `shizhuxinyong`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`xinyongjifen`,`userid`) values (111,'2021-04-26 10:15:52','用户名1','失主姓名1',1,1);
insert  into `shizhuxinyong`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`xinyongjifen`,`userid`) values (112,'2021-04-26 10:15:52','用户名2','失主姓名2',2,2);
insert  into `shizhuxinyong`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`xinyongjifen`,`userid`) values (113,'2021-04-26 10:15:52','用户名3','失主姓名3',3,3);
insert  into `shizhuxinyong`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`xinyongjifen`,`userid`) values (114,'2021-04-26 10:15:52','用户名4','失主姓名4',4,4);
insert  into `shizhuxinyong`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`xinyongjifen`,`userid`) values (115,'2021-04-26 10:15:52','用户名5','失主姓名5',5,5);
insert  into `shizhuxinyong`(`id`,`addtime`,`yonghuming`,`shizhuxingming`,`xinyongjifen`,`userid`) values (116,'2021-04-26 10:15:52','用户名6','失主姓名6',6,6);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','xknveiu3hnyipnrbihqkhr7u19lme05x','2021-04-26 10:21:19','2021-04-26 11:21:19');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619403578844,'1','yonghu','用户','g9s4cflvtya61wkgxyseep7jq0o64h3v','2021-04-26 10:21:49','2021-04-26 11:21:49');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-26 10:15:52');

/*Table structure for table `xunwuqishi` */

DROP TABLE IF EXISTS `xunwuqishi`;

CREATE TABLE `xunwuqishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `wupinleibie` varchar(200) NOT NULL COMMENT '物品类别',
  `diushididian` varchar(200) NOT NULL COMMENT '丢失地点',
  `diushishijian` datetime NOT NULL COMMENT '丢失时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shizhuxingming` varchar(200) DEFAULT NULL COMMENT '失主姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `xiangximiaoshu` longtext COMMENT '详细描述',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='寻物启示';

/*Data for the table `xunwuqishi` */

insert  into `xunwuqishi`(`id`,`addtime`,`wupinmingcheng`,`tupian`,`wupinleibie`,`diushididian`,`diushishijian`,`yonghuming`,`shizhuxingming`,`lianxifangshi`,`xiangximiaoshu`,`userid`) values (31,'2021-04-26 10:15:52','物品名称1','http://localhost:8080/ssm44741/upload/xunwuqishi_tupian1.jpg','物品类别1','丢失地点1','2021-04-26 10:15:52','用户名1','失主姓名1','联系方式1','详细描述1',1);
insert  into `xunwuqishi`(`id`,`addtime`,`wupinmingcheng`,`tupian`,`wupinleibie`,`diushididian`,`diushishijian`,`yonghuming`,`shizhuxingming`,`lianxifangshi`,`xiangximiaoshu`,`userid`) values (32,'2021-04-26 10:15:52','物品名称2','http://localhost:8080/ssm44741/upload/xunwuqishi_tupian2.jpg','物品类别2','丢失地点2','2021-04-26 10:15:52','用户名2','失主姓名2','联系方式2','详细描述2',2);
insert  into `xunwuqishi`(`id`,`addtime`,`wupinmingcheng`,`tupian`,`wupinleibie`,`diushididian`,`diushishijian`,`yonghuming`,`shizhuxingming`,`lianxifangshi`,`xiangximiaoshu`,`userid`) values (33,'2021-04-26 10:15:52','物品名称3','http://localhost:8080/ssm44741/upload/xunwuqishi_tupian3.jpg','物品类别3','丢失地点3','2021-04-26 10:15:52','用户名3','失主姓名3','联系方式3','详细描述3',3);
insert  into `xunwuqishi`(`id`,`addtime`,`wupinmingcheng`,`tupian`,`wupinleibie`,`diushididian`,`diushishijian`,`yonghuming`,`shizhuxingming`,`lianxifangshi`,`xiangximiaoshu`,`userid`) values (34,'2021-04-26 10:15:52','物品名称4','http://localhost:8080/ssm44741/upload/xunwuqishi_tupian4.jpg','物品类别4','丢失地点4','2021-04-26 10:15:52','用户名4','失主姓名4','联系方式4','详细描述4',4);
insert  into `xunwuqishi`(`id`,`addtime`,`wupinmingcheng`,`tupian`,`wupinleibie`,`diushididian`,`diushishijian`,`yonghuming`,`shizhuxingming`,`lianxifangshi`,`xiangximiaoshu`,`userid`) values (35,'2021-04-26 10:15:52','物品名称5','http://localhost:8080/ssm44741/upload/xunwuqishi_tupian5.jpg','物品类别5','丢失地点5','2021-04-26 10:15:52','用户名5','失主姓名5','联系方式5','详细描述5',5);
insert  into `xunwuqishi`(`id`,`addtime`,`wupinmingcheng`,`tupian`,`wupinleibie`,`diushididian`,`diushishijian`,`yonghuming`,`shizhuxingming`,`lianxifangshi`,`xiangximiaoshu`,`userid`) values (36,'2021-04-26 10:15:52','物品名称6','http://localhost:8080/ssm44741/upload/xunwuqishi_tupian6.jpg','物品类别6','丢失地点6','2021-04-26 10:15:52','用户名6','失主姓名6','联系方式6','详细描述6',6);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619403578845 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-26 10:15:52','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm44741/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-04-26 10:15:52','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm44741/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-04-26 10:15:52','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm44741/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-04-26 10:15:52','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm44741/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-04-26 10:15:52','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm44741/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-04-26 10:15:52','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm44741/upload/yonghu_touxiang6.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (1619403578844,'2021-04-26 10:19:38','1','1','阿三',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `yonghutousu` */

DROP TABLE IF EXISTS `yonghutousu`;

CREATE TABLE `yonghutousu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tousubiaoti` varchar(200) DEFAULT NULL COMMENT '投诉标题',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tousuriqi` date DEFAULT NULL COMMENT '投诉日期',
  `tousuneirong` longtext COMMENT '投诉内容',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='用户投诉';

/*Data for the table `yonghutousu` */

insert  into `yonghutousu`(`id`,`addtime`,`tousubiaoti`,`zhanghao`,`xingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (81,'2021-04-26 10:15:52','投诉标题1','账号1','姓名1','http://localhost:8080/ssm44741/upload/yonghutousu_tupian1.jpg','2021-04-26','投诉内容1','是','',1);
insert  into `yonghutousu`(`id`,`addtime`,`tousubiaoti`,`zhanghao`,`xingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (82,'2021-04-26 10:15:52','投诉标题2','账号2','姓名2','http://localhost:8080/ssm44741/upload/yonghutousu_tupian2.jpg','2021-04-26','投诉内容2','是','',2);
insert  into `yonghutousu`(`id`,`addtime`,`tousubiaoti`,`zhanghao`,`xingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (83,'2021-04-26 10:15:52','投诉标题3','账号3','姓名3','http://localhost:8080/ssm44741/upload/yonghutousu_tupian3.jpg','2021-04-26','投诉内容3','是','',3);
insert  into `yonghutousu`(`id`,`addtime`,`tousubiaoti`,`zhanghao`,`xingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (84,'2021-04-26 10:15:52','投诉标题4','账号4','姓名4','http://localhost:8080/ssm44741/upload/yonghutousu_tupian4.jpg','2021-04-26','投诉内容4','是','',4);
insert  into `yonghutousu`(`id`,`addtime`,`tousubiaoti`,`zhanghao`,`xingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (85,'2021-04-26 10:15:52','投诉标题5','账号5','姓名5','http://localhost:8080/ssm44741/upload/yonghutousu_tupian5.jpg','2021-04-26','投诉内容5','是','',5);
insert  into `yonghutousu`(`id`,`addtime`,`tousubiaoti`,`zhanghao`,`xingming`,`tupian`,`tousuriqi`,`tousuneirong`,`sfsh`,`shhf`,`userid`) values (86,'2021-04-26 10:15:52','投诉标题6','账号6','姓名6','http://localhost:8080/ssm44741/upload/yonghutousu_tupian6.jpg','2021-04-26','投诉内容6','是','',6);

/*Table structure for table `yonghuxinyong` */

DROP TABLE IF EXISTS `yonghuxinyong`;

CREATE TABLE `yonghuxinyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xinyongjifen` int(11) DEFAULT NULL COMMENT '信用积分',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619403689653 DEFAULT CHARSET=utf8 COMMENT='用户信用';

/*Data for the table `yonghuxinyong` */

insert  into `yonghuxinyong`(`id`,`addtime`,`zhanghao`,`xingming`,`xinyongjifen`,`userid`) values (101,'2021-04-26 10:15:52','账号1','姓名1',1,1);
insert  into `yonghuxinyong`(`id`,`addtime`,`zhanghao`,`xingming`,`xinyongjifen`,`userid`) values (102,'2021-04-26 10:15:52','账号2','姓名2',2,2);
insert  into `yonghuxinyong`(`id`,`addtime`,`zhanghao`,`xingming`,`xinyongjifen`,`userid`) values (103,'2021-04-26 10:15:52','账号3','姓名3',3,3);
insert  into `yonghuxinyong`(`id`,`addtime`,`zhanghao`,`xingming`,`xinyongjifen`,`userid`) values (104,'2021-04-26 10:15:52','账号4','姓名4',4,4);
insert  into `yonghuxinyong`(`id`,`addtime`,`zhanghao`,`xingming`,`xinyongjifen`,`userid`) values (105,'2021-04-26 10:15:52','账号5','姓名5',5,5);
insert  into `yonghuxinyong`(`id`,`addtime`,`zhanghao`,`xingming`,`xinyongjifen`,`userid`) values (106,'2021-04-26 10:15:52','账号6','姓名6',6,6);
insert  into `yonghuxinyong`(`id`,`addtime`,`zhanghao`,`xingming`,`xinyongjifen`,`userid`) values (1619403689652,'2021-04-26 10:21:29','1','阿三',100,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
