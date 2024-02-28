/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm4tjlr
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm4tjlr` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm4tjlr`;

/*Table structure for table `canpinzhonglei` */

DROP TABLE IF EXISTS `canpinzhonglei`;

CREATE TABLE `canpinzhonglei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canpinzhonglei` varchar(200) DEFAULT NULL COMMENT '餐品种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499455946 DEFAULT CHARSET=utf8 COMMENT='餐品种类';

/*Data for the table `canpinzhonglei` */

insert  into `canpinzhonglei`(`id`,`addtime`,`canpinzhonglei`) values (51,'2021-04-15 22:53:14','餐品种类1');
insert  into `canpinzhonglei`(`id`,`addtime`,`canpinzhonglei`) values (52,'2021-04-15 22:53:14','餐品种类2');
insert  into `canpinzhonglei`(`id`,`addtime`,`canpinzhonglei`) values (53,'2021-04-15 22:53:14','餐品种类3');
insert  into `canpinzhonglei`(`id`,`addtime`,`canpinzhonglei`) values (54,'2021-04-15 22:53:14','餐品种类4');
insert  into `canpinzhonglei`(`id`,`addtime`,`canpinzhonglei`) values (55,'2021-04-15 22:53:14','蛋糕');
insert  into `canpinzhonglei`(`id`,`addtime`,`canpinzhonglei`) values (1618499122894,'2021-04-15 23:05:22','测试');
insert  into `canpinzhonglei`(`id`,`addtime`,`canpinzhonglei`) values (1618499455945,'2021-04-15 23:10:55','特色');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm4tjlr/upload/1618499276341.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm4tjlr/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm4tjlr/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dangkouhao` */

DROP TABLE IF EXISTS `dangkouhao`;

CREATE TABLE `dangkouhao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dangkouhao` varchar(200) DEFAULT NULL COMMENT '档口号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='档口号';

/*Data for the table `dangkouhao` */

insert  into `dangkouhao`(`id`,`addtime`,`dangkouhao`) values (31,'2021-04-15 22:53:14','档口号1');
insert  into `dangkouhao`(`id`,`addtime`,`dangkouhao`) values (32,'2021-04-15 22:53:14','档口号2');
insert  into `dangkouhao`(`id`,`addtime`,`dangkouhao`) values (33,'2021-04-15 22:53:14','档口号3');
insert  into `dangkouhao`(`id`,`addtime`,`dangkouhao`) values (34,'2021-04-15 22:53:14','档口号4');
insert  into `dangkouhao`(`id`,`addtime`,`dangkouhao`) values (35,'2021-04-15 22:53:14','档口号5');
insert  into `dangkouhao`(`id`,`addtime`,`dangkouhao`) values (36,'2021-04-15 22:53:14','档口号6');

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `dangkouhao` varchar(200) DEFAULT NULL COMMENT '档口号',
  `canpinming` varchar(200) DEFAULT NULL COMMENT '餐品名',
  `canpinzhonglei` varchar(200) DEFAULT NULL COMMENT '餐品种类',
  `canpintupian` varchar(200) DEFAULT NULL COMMENT '餐品图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `jiesuanshijian` datetime DEFAULT NULL COMMENT '结算时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499784783 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`jiesuanshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (71,'2021-04-15 22:53:14','商家账号1','商家名称1','档口号1','餐品名1','餐品种类1','http://localhost:8080/ssm4tjlr/upload/dingdanxinxi_canpintupian1.jpg',1,1,'总价1','2021-04-15 22:53:14','2021-04-15 22:53:14','用户名1','姓名1','是','',1);
insert  into `dingdanxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`jiesuanshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (72,'2021-04-15 22:53:14','商家账号2','商家名称2','档口号2','餐品名2','餐品种类2','http://localhost:8080/ssm4tjlr/upload/dingdanxinxi_canpintupian2.jpg',2,2,'总价2','2021-04-15 22:53:14','2021-04-15 22:53:14','用户名2','姓名2','是','',2);
insert  into `dingdanxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`jiesuanshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (73,'2021-04-15 22:53:14','商家账号3','商家名称3','档口号3','餐品名3','餐品种类3','http://localhost:8080/ssm4tjlr/upload/dingdanxinxi_canpintupian3.jpg',3,3,'总价3','2021-04-15 22:53:14','2021-04-15 22:53:14','用户名3','姓名3','是','',3);
insert  into `dingdanxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`jiesuanshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (74,'2021-04-15 22:53:14','商家账号4','商家名称4','档口号4','餐品名4','餐品种类4','http://localhost:8080/ssm4tjlr/upload/dingdanxinxi_canpintupian4.jpg',4,4,'总价4','2021-04-15 22:53:14','2021-04-15 22:53:14','用户名4','姓名4','是','',4);
insert  into `dingdanxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`jiesuanshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (75,'2021-04-15 22:53:14','商家账号5','商家名称5','档口号5','餐品名5','餐品种类5','http://localhost:8080/ssm4tjlr/upload/dingdanxinxi_canpintupian5.jpg',5,5,'总价5','2021-04-15 22:53:14','2021-04-15 22:53:14','用户名5','姓名5','是','',5);
insert  into `dingdanxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`jiesuanshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (76,'2021-04-15 22:53:14','商家账号6','商家名称6','档口号6','餐品名6','餐品种类6','http://localhost:8080/ssm4tjlr/upload/dingdanxinxi_canpintupian6.jpg',6,6,'总价6','2021-04-15 22:53:14','2021-04-15 22:53:14','用户名6','姓名6','是','',6);
insert  into `dingdanxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`jiesuanshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (1618499182013,'2021-04-15 23:06:21','商家账号1','商家名称1','档口号1','餐品名1','餐品种类1','http://localhost:8080/ssm4tjlr/upload/gouwuche_canpintupian1.jpg',10,10,'100','2021-04-15 22:53:14','2021-04-15 23:06:16','用户1','姓名1','是','已结清',1);
insert  into `dingdanxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`jiesuanshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (1618499784782,'2021-04-15 23:16:24','001','001','档口号1','测试','蛋糕','http://localhost:8080/ssm4tjlr/upload/1618499434634.jpg',3,55,'165','2021-04-15 23:14:57','2021-04-15 23:16:20','用户1','姓名1','','',11);

/*Table structure for table `discussshangjiacanpin` */

DROP TABLE IF EXISTS `discussshangjiacanpin`;

CREATE TABLE `discussshangjiacanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499694856 DEFAULT CHARSET=utf8 COMMENT='商家餐品评论表';

/*Data for the table `discussshangjiacanpin` */

insert  into `discussshangjiacanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-15 22:53:14',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangjiacanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-04-15 22:53:14',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangjiacanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-04-15 22:53:14',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangjiacanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-04-15 22:53:14',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangjiacanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-04-15 22:53:14',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangjiacanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-04-15 22:53:14',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshangjiacanpin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1618499694855,'2021-04-15 23:14:54',1618499437764,11,'用户1','haochi','');

/*Table structure for table `gouwuche` */

DROP TABLE IF EXISTS `gouwuche`;

CREATE TABLE `gouwuche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `dangkouhao` varchar(200) DEFAULT NULL COMMENT '档口号',
  `canpinming` varchar(200) DEFAULT NULL COMMENT '餐品名',
  `canpinzhonglei` varchar(200) DEFAULT NULL COMMENT '餐品种类',
  `canpintupian` varchar(200) DEFAULT NULL COMMENT '餐品图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499704922 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `gouwuche` */

insert  into `gouwuche`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`yonghuming`,`xingming`,`userid`) values (61,'2021-04-15 22:53:14','商家账号1','商家名称1','档口号1','餐品名1','餐品种类1','http://localhost:8080/ssm4tjlr/upload/gouwuche_canpintupian1.jpg',1,1,'总价1','2021-04-15 22:53:14','用户名1','姓名1',1);
insert  into `gouwuche`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`yonghuming`,`xingming`,`userid`) values (62,'2021-04-15 22:53:14','商家账号2','商家名称2','档口号2','餐品名2','餐品种类2','http://localhost:8080/ssm4tjlr/upload/gouwuche_canpintupian2.jpg',2,2,'总价2','2021-04-15 22:53:14','用户名2','姓名2',2);
insert  into `gouwuche`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`yonghuming`,`xingming`,`userid`) values (63,'2021-04-15 22:53:14','商家账号3','商家名称3','档口号3','餐品名3','餐品种类3','http://localhost:8080/ssm4tjlr/upload/gouwuche_canpintupian3.jpg',3,3,'总价3','2021-04-15 22:53:14','用户名3','姓名3',3);
insert  into `gouwuche`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`yonghuming`,`xingming`,`userid`) values (64,'2021-04-15 22:53:14','商家账号4','商家名称4','档口号4','餐品名4','餐品种类4','http://localhost:8080/ssm4tjlr/upload/gouwuche_canpintupian4.jpg',4,4,'总价4','2021-04-15 22:53:14','用户名4','姓名4',4);
insert  into `gouwuche`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`yonghuming`,`xingming`,`userid`) values (65,'2021-04-15 22:53:14','商家账号5','商家名称5','档口号5','餐品名5','餐品种类5','http://localhost:8080/ssm4tjlr/upload/gouwuche_canpintupian5.jpg',5,5,'总价5','2021-04-15 22:53:14','用户名5','姓名5',5);
insert  into `gouwuche`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`yonghuming`,`xingming`,`userid`) values (66,'2021-04-15 22:53:14','商家账号6','商家名称6','档口号6','餐品名6','餐品种类6','http://localhost:8080/ssm4tjlr/upload/gouwuche_canpintupian6.jpg',6,6,'总价6','2021-04-15 22:53:14','用户名6','姓名6',6);
insert  into `gouwuche`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canpinming`,`canpinzhonglei`,`canpintupian`,`shuliang`,`danjia`,`zongjia`,`xiadanshijian`,`yonghuming`,`xingming`,`userid`) values (1618499704921,'2021-04-15 23:15:04','001','001','档口号1','测试','蛋糕','http://localhost:8080/ssm4tjlr/upload/1618499434634.jpg',3,55,'165','2021-04-15 23:14:57','用户1','姓名1',11);

/*Table structure for table `qiandaoxinxi` */

DROP TABLE IF EXISTS `qiandaoxinxi`;

CREATE TABLE `qiandaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `dangkouhao` varchar(200) DEFAULT NULL COMMENT '档口号',
  `jiesuanshijian` datetime DEFAULT NULL COMMENT '结算时间',
  `qiandaoriqi` date DEFAULT NULL COMMENT '签到日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499762011 DEFAULT CHARSET=utf8 COMMENT='签到信息';

/*Data for the table `qiandaoxinxi` */

insert  into `qiandaoxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`jiesuanshijian`,`qiandaoriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (81,'2021-04-15 22:53:14','商家账号1','商家名称1','档口号1','2021-04-15 22:53:14','2021-04-15','用户1','姓名1','是','',1);
insert  into `qiandaoxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`jiesuanshijian`,`qiandaoriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (82,'2021-04-15 22:53:14','商家账号2','商家名称2','档口号2','2021-04-15 22:53:14','2021-04-15','用户名2','姓名2','是','',2);
insert  into `qiandaoxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`jiesuanshijian`,`qiandaoriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (83,'2021-04-15 22:53:14','商家账号3','商家名称3','档口号3','2021-04-15 22:53:14','2021-04-15','用户名3','姓名3','是','',3);
insert  into `qiandaoxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`jiesuanshijian`,`qiandaoriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (85,'2021-04-15 22:53:14','商家账号5','商家名称5','档口号5','2021-04-15 22:53:14','2021-04-15','用户名5','姓名5','是','',5);
insert  into `qiandaoxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`jiesuanshijian`,`qiandaoriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (86,'2021-04-15 22:53:14','商家账号6','商家名称6','档口号6','2021-04-15 22:53:14','2021-04-15','用户名6','姓名6','是','',6);
insert  into `qiandaoxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`jiesuanshijian`,`qiandaoriqi`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`userid`) values (1618499762010,'2021-04-15 23:16:01','商家账号1','商家名称1','档口号1','2021-04-15 23:06:16','2021-04-15','用户1','姓名1','','',11);

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `shangputupian` varchar(200) DEFAULT NULL COMMENT '商铺图片',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `shangjiajieshao` longtext COMMENT '商家介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499296680 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`jingyingfanwei`,`shangputupian`,`lianxidianhua`,`shangjiajieshao`) values (21,'2021-04-15 22:53:13','商家1','123456','商家名称1','经营范围1','http://localhost:8080/ssm4tjlr/upload/shangjia_shangputupian1.jpg','13823888889','商家介绍1');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`jingyingfanwei`,`shangputupian`,`lianxidianhua`,`shangjiajieshao`) values (22,'2021-04-15 22:53:13','商家2','123456','商家名称2','经营范围2','http://localhost:8080/ssm4tjlr/upload/shangjia_shangputupian2.jpg','13823888882','商家介绍2');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`jingyingfanwei`,`shangputupian`,`lianxidianhua`,`shangjiajieshao`) values (23,'2021-04-15 22:53:13','商家3','123456','商家名称3','经营范围3','http://localhost:8080/ssm4tjlr/upload/shangjia_shangputupian3.jpg','13823888883','商家介绍3');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`jingyingfanwei`,`shangputupian`,`lianxidianhua`,`shangjiajieshao`) values (24,'2021-04-15 22:53:13','商家4','123456','商家名称4','经营范围4','http://localhost:8080/ssm4tjlr/upload/shangjia_shangputupian4.jpg','13823888884','商家介绍4');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`jingyingfanwei`,`shangputupian`,`lianxidianhua`,`shangjiajieshao`) values (26,'2021-04-15 22:53:13','商家6','123456','商家名称6','经营范围6','http://localhost:8080/ssm4tjlr/upload/shangjia_shangputupian6.jpg','13823888886','商家介绍6');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`jingyingfanwei`,`shangputupian`,`lianxidianhua`,`shangjiajieshao`) values (1618499296679,'2021-04-15 23:08:16','001','001','001','测试',NULL,'13800138001',NULL);

/*Table structure for table `shangjiacanpin` */

DROP TABLE IF EXISTS `shangjiacanpin`;

CREATE TABLE `shangjiacanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `dangkouhao` varchar(200) DEFAULT NULL COMMENT '档口号',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `canpinming` varchar(200) DEFAULT NULL COMMENT '餐品名',
  `canpinzhonglei` varchar(200) DEFAULT NULL COMMENT '餐品种类',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `canpintupian` varchar(200) DEFAULT NULL COMMENT '餐品图片',
  `canpinxiangqing` longtext COMMENT '餐品详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499437765 DEFAULT CHARSET=utf8 COMMENT='商家餐品';

/*Data for the table `shangjiacanpin` */

insert  into `shangjiacanpin`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`lianxidianhua`,`canpinming`,`canpinzhonglei`,`danjia`,`canpintupian`,`canpinxiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (41,'2021-04-15 22:53:14','商家1','商家名称1','档口号1','13823888881','餐品名1','餐品种类1',10,'http://localhost:8080/ssm4tjlr/upload/shangjiacanpin_canpintupian1.jpg','<p>餐品详情1</p>',1,1,'2021-04-15 23:03:27',2);
insert  into `shangjiacanpin`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`lianxidianhua`,`canpinming`,`canpinzhonglei`,`danjia`,`canpintupian`,`canpinxiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (42,'2021-04-15 22:53:14','商家账号2','商家名称2','档口号2','13823888882','餐品名2','餐品种类2',2,'http://localhost:8080/ssm4tjlr/upload/shangjiacanpin_canpintupian2.jpg','餐品详情2',2,2,'2021-04-15 23:15:11',3);
insert  into `shangjiacanpin`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`lianxidianhua`,`canpinming`,`canpinzhonglei`,`danjia`,`canpintupian`,`canpinxiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (44,'2021-04-15 22:53:14','商家账号4','商家名称4','档口号4','13823888884','餐品名4','餐品种类4',4,'http://localhost:8080/ssm4tjlr/upload/shangjiacanpin_canpintupian4.jpg','餐品详情4',4,4,'2021-04-15 22:53:14',4);
insert  into `shangjiacanpin`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`lianxidianhua`,`canpinming`,`canpinzhonglei`,`danjia`,`canpintupian`,`canpinxiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (45,'2021-04-15 22:53:14','商家账号5','商家名称5','档口号5','13823888885','餐品名5','餐品种类5',5,'http://localhost:8080/ssm4tjlr/upload/shangjiacanpin_canpintupian5.jpg','餐品详情5',5,5,'2021-04-15 22:53:14',5);
insert  into `shangjiacanpin`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`lianxidianhua`,`canpinming`,`canpinzhonglei`,`danjia`,`canpintupian`,`canpinxiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (46,'2021-04-15 22:53:14','商家账号6','商家名称6','档口号6','13823888886','餐品名6','餐品种类6',6,'http://localhost:8080/ssm4tjlr/upload/shangjiacanpin_canpintupian6.jpg','餐品详情6',6,6,'2021-04-15 22:53:14',6);
insert  into `shangjiacanpin`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`lianxidianhua`,`canpinming`,`canpinzhonglei`,`danjia`,`canpintupian`,`canpinxiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1618499437764,'2021-04-15 23:10:37','001','001','档口号1','13800138001','测试','蛋糕',55,'http://localhost:8080/ssm4tjlr/upload/1618499434634.jpg','<h1>测试</h1>',1,0,'2021-04-15 23:17:07',7);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499689071 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','1akmgc1mhtgy5svl1sk7ygoly14neb8u','2021-04-15 23:02:38','2021-04-16 00:02:38');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1618499296679,'001','shangjia','管理员','odjc8apcnzvamwbo2nkltxbynu9s9swb','2021-04-15 23:08:22','2021-04-16 00:08:23');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,21,'商家1','shangjia','管理员','3iyax6v71b56qqv5152s1rhmlxl8oeif','2021-04-15 23:12:39','2021-04-16 00:12:40');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1618499653434,'01','yonghu','用户','bjo99ukf39egauft7w7xe0no5a50qsc5','2021-04-15 23:14:21','2021-04-16 00:14:21');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,11,'用户1','yonghu','用户','tgtis0cb1ygl9hf8qprczniqzwwmn7xr','2021-04-15 23:14:38','2021-04-16 00:14:38');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-15 22:53:14');

/*Table structure for table `wodehuodong` */

DROP TABLE IF EXISTS `wodehuodong`;

CREATE TABLE `wodehuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youhuineirong` longtext COMMENT '优惠内容',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `dangkouhao` varchar(200) DEFAULT NULL COMMENT '档口号',
  `canyushijian` datetime DEFAULT NULL COMMENT '参与时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499735110 DEFAULT CHARSET=utf8 COMMENT='我的活动';

/*Data for the table `wodehuodong` */

insert  into `wodehuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`lianxidianhua`,`youhuineirong`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canyushijian`,`yonghuming`,`xingming`,`userid`) values (101,'2021-04-15 22:53:14','活动名称1','http://localhost:8080/ssm4tjlr/upload/wodehuodong_huodongtupian1.jpg','联系电话1','优惠内容1','商家账号1','商家名称1','档口号1','2021-04-15 22:53:14','用户名1','姓名1',1);
insert  into `wodehuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`lianxidianhua`,`youhuineirong`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canyushijian`,`yonghuming`,`xingming`,`userid`) values (102,'2021-04-15 22:53:14','活动名称2','http://localhost:8080/ssm4tjlr/upload/wodehuodong_huodongtupian2.jpg','联系电话2','优惠内容2','商家账号2','商家名称2','档口号2','2021-04-15 22:53:14','用户名2','姓名2',2);
insert  into `wodehuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`lianxidianhua`,`youhuineirong`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canyushijian`,`yonghuming`,`xingming`,`userid`) values (103,'2021-04-15 22:53:14','活动名称3','http://localhost:8080/ssm4tjlr/upload/wodehuodong_huodongtupian3.jpg','联系电话3','优惠内容3','商家账号3','商家名称3','档口号3','2021-04-15 22:53:14','用户名3','姓名3',3);
insert  into `wodehuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`lianxidianhua`,`youhuineirong`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canyushijian`,`yonghuming`,`xingming`,`userid`) values (104,'2021-04-15 22:53:14','活动名称4','http://localhost:8080/ssm4tjlr/upload/wodehuodong_huodongtupian4.jpg','联系电话4','优惠内容4','商家账号4','商家名称4','档口号4','2021-04-15 22:53:14','用户名4','姓名4',4);
insert  into `wodehuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`lianxidianhua`,`youhuineirong`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canyushijian`,`yonghuming`,`xingming`,`userid`) values (105,'2021-04-15 22:53:14','活动名称5','http://localhost:8080/ssm4tjlr/upload/wodehuodong_huodongtupian5.jpg','联系电话5','优惠内容5','商家账号5','商家名称5','档口号5','2021-04-15 22:53:14','用户名5','姓名5',5);
insert  into `wodehuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`lianxidianhua`,`youhuineirong`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canyushijian`,`yonghuming`,`xingming`,`userid`) values (106,'2021-04-15 22:53:14','活动名称6','http://localhost:8080/ssm4tjlr/upload/wodehuodong_huodongtupian6.jpg','联系电话6','优惠内容6','商家账号6','商家名称6','档口号6','2021-04-15 22:53:14','用户名6','姓名6',6);
insert  into `wodehuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`lianxidianhua`,`youhuineirong`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`,`canyushijian`,`yonghuming`,`xingming`,`userid`) values (1618499735109,'2021-04-15 23:15:34','测试','http://localhost:8080/ssm4tjlr/upload/1618499479525.jpg','13800138001','测试','001','001','档口号1','2021-04-15 23:15:30','用户1','姓名1',11);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenleixing` varchar(200) DEFAULT NULL COMMENT '身份类型',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499653435 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenleixing`,`zhaopian`) values (11,'2021-04-15 22:53:13','用户1','123456','姓名1','女','13823888881','学生','http://localhost:8080/ssm4tjlr/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenleixing`,`zhaopian`) values (12,'2021-04-15 22:53:13','用户2','123456','姓名2','男','13823888882','学生','http://localhost:8080/ssm4tjlr/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenleixing`,`zhaopian`) values (13,'2021-04-15 22:53:13','用户3','123456','姓名3','女','13823888883','老师','http://localhost:8080/ssm4tjlr/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenleixing`,`zhaopian`) values (14,'2021-04-15 22:53:13','用户4','123456','姓名4','男','13823888884','学生','http://localhost:8080/ssm4tjlr/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenleixing`,`zhaopian`) values (15,'2021-04-15 22:53:13','用户5','123456','姓名5','男','13823888885','学生','http://localhost:8080/ssm4tjlr/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenleixing`,`zhaopian`) values (16,'2021-04-15 22:53:13','用户6','123456','姓名6','男','13823888886','学生','http://localhost:8080/ssm4tjlr/upload/yonghu_zhaopian6.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenleixing`,`zhaopian`) values (1618499653434,'2021-04-15 23:14:13','01','01','01','男','13800138001','游客',NULL);

/*Table structure for table `youhuihuodong` */

DROP TABLE IF EXISTS `youhuihuodong`;

CREATE TABLE `youhuihuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youhuineirong` longtext COMMENT '优惠内容',
  `beizhu` longtext COMMENT '备注',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `dangkouhao` varchar(200) DEFAULT NULL COMMENT '档口号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618499522302 DEFAULT CHARSET=utf8 COMMENT='优惠活动';

/*Data for the table `youhuihuodong` */

insert  into `youhuihuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`lianxidianhua`,`youhuineirong`,`beizhu`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`) values (91,'2021-04-15 22:53:14','活动名称1','http://localhost:8080/ssm4tjlr/upload/youhuihuodong_huodongtupian1.jpg','2021-04-15','2021-04-15','联系电话1','优惠内容1','备注1','商家账号1','商家名称1','档口号1');
insert  into `youhuihuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`lianxidianhua`,`youhuineirong`,`beizhu`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`) values (92,'2021-04-15 22:53:14','活动名称2','http://localhost:8080/ssm4tjlr/upload/youhuihuodong_huodongtupian2.jpg','2021-04-15','2021-04-15','联系电话2','优惠内容2','备注2','商家账号2','商家名称2','档口号2');
insert  into `youhuihuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`lianxidianhua`,`youhuineirong`,`beizhu`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`) values (93,'2021-04-15 22:53:14','活动名称3','http://localhost:8080/ssm4tjlr/upload/youhuihuodong_huodongtupian3.jpg','2021-04-15','2021-04-15','联系电话3','优惠内容3','备注3','商家账号3','商家名称3','档口号3');
insert  into `youhuihuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`lianxidianhua`,`youhuineirong`,`beizhu`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`) values (94,'2021-04-15 22:53:14','活动名称4','http://localhost:8080/ssm4tjlr/upload/youhuihuodong_huodongtupian4.jpg','2021-04-15','2021-04-15','联系电话4','优惠内容4','备注4','商家账号4','商家名称4','档口号4');
insert  into `youhuihuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`lianxidianhua`,`youhuineirong`,`beizhu`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`) values (95,'2021-04-15 22:53:14','活动名称5','http://localhost:8080/ssm4tjlr/upload/youhuihuodong_huodongtupian5.jpg','2021-04-15','2021-04-15','联系电话5','优惠内容5','备注5','商家账号5','商家名称5','档口号5');
insert  into `youhuihuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`lianxidianhua`,`youhuineirong`,`beizhu`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`) values (96,'2021-04-15 22:53:14','活动名称6','http://localhost:8080/ssm4tjlr/upload/youhuihuodong_huodongtupian6.jpg','2021-04-15','2021-04-15','联系电话6','优惠内容6','备注6','商家账号6','商家名称6','档口号6');
insert  into `youhuihuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongtupian`,`kaishishijian`,`jieshushijian`,`lianxidianhua`,`youhuineirong`,`beizhu`,`shangjiazhanghao`,`shangjiamingcheng`,`dangkouhao`) values (1618499522301,'2021-04-15 23:12:01','测试','http://localhost:8080/ssm4tjlr/upload/1618499479525.jpg','2021-04-15','2021-04-17','13800138001','测试','测试','001','001','档口号1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
