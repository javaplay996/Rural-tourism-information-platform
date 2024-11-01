/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmsi3i6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmsi3i6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmsi3i6`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554752025 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-12 20:49:17',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-12 20:49:17',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-12 20:49:17',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-12 20:49:17',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-12 20:49:17',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-12 20:49:17',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615554752024,'2021-03-12 21:12:31',1615554602143,'广东省梅州市梅江区江南街道新江路19-2号','1','13099999999','是');

/*Table structure for table `canyinleixing` */

DROP TABLE IF EXISTS `canyinleixing`;

CREATE TABLE `canyinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554066669 DEFAULT CHARSET=utf8 COMMENT='餐饮类型';

/*Data for the table `canyinleixing` */

insert  into `canyinleixing`(`id`,`addtime`,`leixing`) values (91,'2021-03-12 20:49:17','类型1'),(92,'2021-03-12 20:49:17','类型2'),(93,'2021-03-12 20:49:17','类型3'),(94,'2021-03-12 20:49:17','类型4'),(95,'2021-03-12 20:49:17','类型5'),(1615554066668,'2021-03-12 21:01:05','测试444');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'nongzuowu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554978207 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1615554765491,'2021-03-12 21:12:44','zhoubiancanyin',1615554602143,61,'餐饮名称1','http://localhost:8080/ssmsi3i6/upload/zhoubiancanyin_canyintupian1.jpg',1,99.9,0),(1615554784304,'2021-03-12 21:13:03','nongzuowu',1615554602143,111,'农作物名称1','http://localhost:8080/ssmsi3i6/upload/nongzuowu_nongzuowutupian1.jpg',2,99.9,0),(1615554978206,'2021-03-12 21:16:17','nongzuowu',1615554602143,1615554438903,'番茄','http://localhost:8080/ssmsi3i6/upload/1615554413764.jpg',1,44,0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmsi3i6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmsi3i6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmsi3i6/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussjingdianxinxi` */

DROP TABLE IF EXISTS `discussjingdianxinxi`;

CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';

/*Data for the table `discussjingdianxinxi` */

insert  into `discussjingdianxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (191,'2021-03-12 20:49:17',1,1,'用户名1','评论内容1','回复内容1'),(192,'2021-03-12 20:49:17',2,2,'用户名2','评论内容2','回复内容2'),(193,'2021-03-12 20:49:17',3,3,'用户名3','评论内容3','回复内容3'),(194,'2021-03-12 20:49:17',4,4,'用户名4','评论内容4','回复内容4'),(195,'2021-03-12 20:49:17',5,5,'用户名5','评论内容5','回复内容5'),(196,'2021-03-12 20:49:17',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussnongjialehuodong` */

DROP TABLE IF EXISTS `discussnongjialehuodong`;

CREATE TABLE `discussnongjialehuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COMMENT='农家乐活动评论表';

/*Data for the table `discussnongjialehuodong` */

insert  into `discussnongjialehuodong`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (221,'2021-03-12 20:49:17',1,1,'用户名1','评论内容1','回复内容1'),(222,'2021-03-12 20:49:17',2,2,'用户名2','评论内容2','回复内容2'),(223,'2021-03-12 20:49:17',3,3,'用户名3','评论内容3','回复内容3'),(224,'2021-03-12 20:49:17',4,4,'用户名4','评论内容4','回复内容4'),(225,'2021-03-12 20:49:17',5,5,'用户名5','评论内容5','回复内容5'),(226,'2021-03-12 20:49:17',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussnongzuowu` */

DROP TABLE IF EXISTS `discussnongzuowu`;

CREATE TABLE `discussnongzuowu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='农作物评论表';

/*Data for the table `discussnongzuowu` */

insert  into `discussnongzuowu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (211,'2021-03-12 20:49:17',1,1,'用户名1','评论内容1','回复内容1'),(212,'2021-03-12 20:49:17',2,2,'用户名2','评论内容2','回复内容2'),(213,'2021-03-12 20:49:17',3,3,'用户名3','评论内容3','回复内容3'),(214,'2021-03-12 20:49:17',4,4,'用户名4','评论内容4','回复内容4'),(215,'2021-03-12 20:49:17',5,5,'用户名5','评论内容5','回复内容5'),(216,'2021-03-12 20:49:17',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusszhoubiancanyin` */

DROP TABLE IF EXISTS `discusszhoubiancanyin`;

CREATE TABLE `discusszhoubiancanyin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='周边餐饮评论表';

/*Data for the table `discusszhoubiancanyin` */

insert  into `discusszhoubiancanyin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (201,'2021-03-12 20:49:17',1,1,'用户名1','评论内容1','回复内容1'),(202,'2021-03-12 20:49:17',2,2,'用户名2','评论内容2','回复内容2'),(203,'2021-03-12 20:49:17',3,3,'用户名3','评论内容3','回复内容3'),(204,'2021-03-12 20:49:17',4,4,'用户名4','评论内容4','回复内容4'),(205,'2021-03-12 20:49:17',5,5,'用户名5','评论内容5','回复内容5'),(206,'2021-03-12 20:49:17',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusszhoubianzhusu` */

DROP TABLE IF EXISTS `discusszhoubianzhusu`;

CREATE TABLE `discusszhoubianzhusu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='周边住宿评论表';

/*Data for the table `discusszhoubianzhusu` */

insert  into `discusszhoubianzhusu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (181,'2021-03-12 20:49:17',1,1,'用户名1','评论内容1','回复内容1'),(182,'2021-03-12 20:49:17',2,2,'用户名2','评论内容2','回复内容2'),(183,'2021-03-12 20:49:17',3,3,'用户名3','评论内容3','回复内容3'),(184,'2021-03-12 20:49:17',4,4,'用户名4','评论内容4','回复内容4'),(185,'2021-03-12 20:49:17',5,5,'用户名5','评论内容5','回复内容5'),(186,'2021-03-12 20:49:17',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fangzileixing` */

DROP TABLE IF EXISTS `fangzileixing`;

CREATE TABLE `fangzileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615553782005 DEFAULT CHARSET=utf8 COMMENT='房子类型';

/*Data for the table `fangzileixing` */

insert  into `fangzileixing`(`id`,`addtime`,`leixing`) values (33,'2021-03-12 20:49:17','类型3'),(34,'2021-03-12 20:49:17','类型4'),(35,'2021-03-12 20:49:17','类型5'),(36,'2021-03-12 20:49:17','类型6'),(1615553782004,'2021-03-12 20:56:21','测试66666');

/*Table structure for table `jingdianleixing` */

DROP TABLE IF EXISTS `jingdianleixing`;

CREATE TABLE `jingdianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615553906655 DEFAULT CHARSET=utf8 COMMENT='景点类型';

/*Data for the table `jingdianleixing` */

insert  into `jingdianleixing`(`id`,`addtime`,`leixing`) values (51,'2021-03-12 20:49:17','类型1'),(52,'2021-03-12 20:49:17','类型2'),(53,'2021-03-12 20:49:17','类型3'),(54,'2021-03-12 20:49:17','类型4'),(55,'2021-03-12 20:49:17','类型5'),(1615553906654,'2021-03-12 20:58:26','测试2222');

/*Table structure for table `jingdianxinxi` */

DROP TABLE IF EXISTS `jingdianxinxi`;

CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `menpiaojiage` varchar(200) DEFAULT NULL COMMENT '门票价格',
  `jiaotongzhuangkuang` varchar(200) DEFAULT NULL COMMENT '交通状况',
  `jingdianfengmian` varchar(200) DEFAULT NULL COMMENT '景点封面',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `kaifangshijian` datetime DEFAULT NULL COMMENT '开放时间',
  `jingdianxiangqing` longtext COMMENT '景点详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615553853701 DEFAULT CHARSET=utf8 COMMENT='景点信息';

/*Data for the table `jingdianxinxi` */

insert  into `jingdianxinxi`(`id`,`addtime`,`jingdianmingcheng`,`jingdianleixing`,`jingdiandengji`,`menpiaojiage`,`jiaotongzhuangkuang`,`jingdianfengmian`,`jingdiandizhi`,`goumaishijian`,`kaifangshijian`,`jingdianxiangqing`,`thumbsupnum`,`crazilynum`) values (41,'2021-03-12 20:49:17','景点名称1','景点类型1','1A','门票价格1','顺畅','http://localhost:8080/ssmsi3i6/upload/jingdianxinxi_jingdianfengmian1.jpg','景点地址1','2021-03-12 20:49:17','2021-03-12 20:49:17','景点详情1',3,3),(42,'2021-03-12 20:49:17','景点名称2','景点类型2','1A','门票价格2','顺畅','http://localhost:8080/ssmsi3i6/upload/jingdianxinxi_jingdianfengmian2.jpg','景点地址2','2021-03-12 20:49:17','2021-03-12 20:49:17','景点详情2',2,2),(43,'2021-03-12 20:49:17','景点名称3','景点类型3','1A','门票价格3','顺畅','http://localhost:8080/ssmsi3i6/upload/jingdianxinxi_jingdianfengmian3.jpg','景点地址3','2021-03-12 20:49:17','2021-03-12 20:49:17','景点详情3',3,3),(44,'2021-03-12 20:49:17','景点名称4','景点类型4','1A','门票价格4','顺畅','http://localhost:8080/ssmsi3i6/upload/jingdianxinxi_jingdianfengmian4.jpg','景点地址4','2021-03-12 20:49:17','2021-03-12 20:49:17','景点详情4',4,4),(1615553853700,'2021-03-12 20:57:33','游乐场666','类型1','1A','99','顺畅','http://localhost:8080/ssmsi3i6/upload/1615553828225.jpg','广东省梅州市','2021-03-03 00:01:02','2021-03-24 01:01:02','<p>测试</p>',1,1);

/*Table structure for table `menpiaogoumai` */

DROP TABLE IF EXISTS `menpiaogoumai`;

CREATE TABLE `menpiaogoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianfengmian` varchar(200) DEFAULT NULL COMMENT '景点封面',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` varchar(200) DEFAULT NULL COMMENT '门票价格',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `jingdianxiangqing` varchar(200) DEFAULT NULL COMMENT '景点详情',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554913548 DEFAULT CHARSET=utf8 COMMENT='门票购买';

/*Data for the table `menpiaogoumai` */

insert  into `menpiaogoumai`(`id`,`addtime`,`zhanghao`,`xingming`,`nianling`,`shouji`,`jingdianmingcheng`,`jingdianfengmian`,`jingdiandizhi`,`menpiaojiage`,`goumaishijian`,`jingdianxiangqing`,`ispay`) values (81,'2021-03-12 20:49:17','账号1','姓名1','年龄1','13823888881','景点名称1','http://localhost:8080/ssmsi3i6/upload/menpiaogoumai_jingdianfengmian1.jpg','景点地址1','门票价格1','2021-03-12 20:49:17','景点详情1','未支付'),(82,'2021-03-12 20:49:17','账号2','姓名2','年龄2','13823888882','景点名称2','http://localhost:8080/ssmsi3i6/upload/menpiaogoumai_jingdianfengmian2.jpg','景点地址2','门票价格2','2021-03-12 20:49:17','景点详情2','未支付'),(83,'2021-03-12 20:49:17','账号3','姓名3','年龄3','13823888883','景点名称3','http://localhost:8080/ssmsi3i6/upload/menpiaogoumai_jingdianfengmian3.jpg','景点地址3','门票价格3','2021-03-12 20:49:17','景点详情3','未支付'),(84,'2021-03-12 20:49:17','账号4','姓名4','年龄4','13823888884','景点名称4','http://localhost:8080/ssmsi3i6/upload/menpiaogoumai_jingdianfengmian4.jpg','景点地址4','门票价格4','2021-03-12 20:49:17','景点详情4','未支付'),(85,'2021-03-12 20:49:17','账号5','姓名5','年龄5','13823888885','景点名称5','http://localhost:8080/ssmsi3i6/upload/menpiaogoumai_jingdianfengmian5.jpg','景点地址5','门票价格5','2021-03-12 20:49:17','景点详情5','未支付'),(86,'2021-03-12 20:49:17','账号6','姓名6','年龄6','13823888886','景点名称6','http://localhost:8080/ssmsi3i6/upload/menpiaogoumai_jingdianfengmian6.jpg','景点地址6','门票价格6','2021-03-12 20:49:17','景点详情6','未支付'),(1615554718597,'2021-03-12 21:11:57','1','1','1','13099999999','景点名称1','http://localhost:8080/ssmsi3i6/upload/jingdianxinxi_jingdianfengmian1.jpg','景点地址1','门票价格1','2021-03-18 00:03:04','景点详情1','未支付'),(1615554913547,'2021-03-12 21:15:12','1','1','1','13099999999','游乐场666','http://localhost:8080/ssmsi3i6/upload/1615553828225.jpg','广东省梅州市','99','2021-03-24 00:03:04','<p>测试</p>','未支付');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COMMENT='旅游咨询';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (171,'2021-03-12 20:49:17','标题1','简介1','http://localhost:8080/ssmsi3i6/upload/news_picture1.jpg','内容1'),(172,'2021-03-12 20:49:17','标题2','简介2','http://localhost:8080/ssmsi3i6/upload/news_picture2.jpg','内容2'),(173,'2021-03-12 20:49:17','标题3','简介3','http://localhost:8080/ssmsi3i6/upload/news_picture3.jpg','内容3'),(174,'2021-03-12 20:49:17','标题4','简介4','http://localhost:8080/ssmsi3i6/upload/news_picture4.jpg','内容4'),(175,'2021-03-12 20:49:17','标题5','简介5','http://localhost:8080/ssmsi3i6/upload/news_picture5.jpg','内容5'),(176,'2021-03-12 20:49:17','标题6','简介6','http://localhost:8080/ssmsi3i6/upload/news_picture6.jpg','内容6');

/*Table structure for table `nongjialehuodong` */

DROP TABLE IF EXISTS `nongjialehuodong`;

CREATE TABLE `nongjialehuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `huodongchatu` varchar(200) DEFAULT NULL COMMENT '活动插图',
  `huodongrenshu` varchar(200) DEFAULT NULL COMMENT '活动人数',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongshijian` datetime DEFAULT NULL COMMENT '活动时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `huodongjieshao` longtext COMMENT '活动介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554511178 DEFAULT CHARSET=utf8 COMMENT='农家乐活动';

/*Data for the table `nongjialehuodong` */

insert  into `nongjialehuodong`(`id`,`addtime`,`huodongmingcheng`,`huodongleixing`,`huodongchatu`,`huodongrenshu`,`huodongdidian`,`huodongshijian`,`jieshushijian`,`huodongjieshao`,`thumbsupnum`,`crazilynum`) values (122,'2021-03-12 20:49:17','活动名称2','小型家庭亲自活动','http://localhost:8080/ssmsi3i6/upload/nongjialehuodong_huodongchatu2.jpg','活动人数2','活动地点2','2021-03-12 20:49:17','2021-03-12 20:49:17','活动介绍2',3,3),(123,'2021-03-12 20:49:17','活动名称3','小型家庭亲自活动','http://localhost:8080/ssmsi3i6/upload/nongjialehuodong_huodongchatu3.jpg','活动人数3','活动地点3','2021-03-12 20:49:17','2021-03-12 20:49:17','活动介绍3',3,3),(124,'2021-03-12 20:49:17','活动名称4','小型家庭亲自活动','http://localhost:8080/ssmsi3i6/upload/nongjialehuodong_huodongchatu4.jpg','活动人数4','活动地点4','2021-03-12 20:49:17','2021-03-12 20:49:17','活动介绍4',4,4),(125,'2021-03-12 20:49:17','活动名称5','小型家庭亲自活动','http://localhost:8080/ssmsi3i6/upload/nongjialehuodong_huodongchatu5.jpg','活动人数5','活动地点5','2021-03-12 20:49:17','2021-03-12 20:49:17','活动介绍5',5,5),(126,'2021-03-12 20:49:17','活动名称6','小型家庭亲自活动','http://localhost:8080/ssmsi3i6/upload/nongjialehuodong_huodongchatu6.jpg','活动人数6','活动地点6','2021-03-12 20:49:17','2021-03-12 20:49:17','活动介绍6',6,6),(1615554511177,'2021-03-12 21:08:30','测试666','','http://localhost:8080/ssmsi3i6/upload/1615554484462.jpg','6','广东省','2021-03-02 00:01:01','2021-03-03 00:01:00','<p>测试</p>',0,0);

/*Table structure for table `nongzuowu` */

DROP TABLE IF EXISTS `nongzuowu`;

CREATE TABLE `nongzuowu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nongzuowutupian` varchar(200) DEFAULT NULL COMMENT '农作物图片',
  `nongzuowuleixing` varchar(200) DEFAULT NULL COMMENT '农作物类型',
  `nongzuowumingcheng` varchar(200) DEFAULT NULL COMMENT '农作物名称',
  `nongzuowujiage` varchar(200) DEFAULT NULL COMMENT '农作物价格',
  `nongzuowujieshao` longtext COMMENT '农作物介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554438904 DEFAULT CHARSET=utf8 COMMENT='农作物';

/*Data for the table `nongzuowu` */

insert  into `nongzuowu`(`id`,`addtime`,`nongzuowutupian`,`nongzuowuleixing`,`nongzuowumingcheng`,`nongzuowujiage`,`nongzuowujieshao`,`thumbsupnum`,`crazilynum`,`price`) values (111,'2021-03-12 20:49:17','http://localhost:8080/ssmsi3i6/upload/nongzuowu_nongzuowutupian1.jpg','农作物类型1','农作物名称1','农作物价格1','农作物介绍1',3,2,99.9),(112,'2021-03-12 20:49:17','http://localhost:8080/ssmsi3i6/upload/nongzuowu_nongzuowutupian2.jpg','农作物类型2','农作物名称2','农作物价格2','农作物介绍2',2,2,99.9),(113,'2021-03-12 20:49:17','http://localhost:8080/ssmsi3i6/upload/nongzuowu_nongzuowutupian3.jpg','农作物类型3','农作物名称3','农作物价格3','农作物介绍3',3,3,99.9),(115,'2021-03-12 20:49:17','http://localhost:8080/ssmsi3i6/upload/nongzuowu_nongzuowutupian5.jpg','农作物类型5','农作物名称5','农作物价格5','农作物介绍5',5,5,99.9),(116,'2021-03-12 20:49:17','http://localhost:8080/ssmsi3i6/upload/nongzuowu_nongzuowutupian6.jpg','农作物类型6','农作物名称6','农作物价格6','农作物介绍6',6,6,99.9),(1615554438903,'2021-03-12 21:07:18','http://localhost:8080/ssmsi3i6/upload/1615554413764.jpg','类型1','番茄','44','<p>测试</p>',2,2,44);

/*Table structure for table `nongzuowuleixing` */

DROP TABLE IF EXISTS `nongzuowuleixing`;

CREATE TABLE `nongzuowuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554015704 DEFAULT CHARSET=utf8 COMMENT='农作物类型';

/*Data for the table `nongzuowuleixing` */

insert  into `nongzuowuleixing`(`id`,`addtime`,`leixing`) values (71,'2021-03-12 20:49:17','类型1'),(72,'2021-03-12 20:49:17','类型2'),(73,'2021-03-12 20:49:17','类型3'),(74,'2021-03-12 20:49:17','类型4'),(75,'2021-03-12 20:49:17','类型5'),(1615554015703,'2021-03-12 21:00:14','测试333333');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'nongzuowu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554990933 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1615554772519,'2021-03-12 21:12:51','20213122112104958147','zhoubiancanyin',1615554602143,61,'餐饮名称1','http://localhost:8080/ssmsi3i6/upload/zhoubiancanyin_canyintupian1.jpg',2,99.9,99.9,199.8,199.8,1,'已支付','广东省梅州市梅江区江南街道新江路19-2号'),(1615554793947,'2021-03-12 21:13:12','202131221123111749141','nongzuowu',1615554602143,111,'农作物名称1','http://localhost:8080/ssmsi3i6/upload/nongzuowu_nongzuowutupian1.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','广东省梅州市梅江区江南街道新江路19-2号'),(1615554938908,'2021-03-12 21:15:38','202131221145636827137','zhoubiancanyin',1615554602143,1615553977164,'油闷大虾','http://localhost:8080/ssmsi3i6/upload/1615553988886.jpg',2,55,55,110,110,1,'已支付','广东省梅州市梅江区江南街道新江路19-2号'),(1615554990932,'2021-03-12 21:16:30','202131221154898916171','nongzuowu',1615554602143,1615554438903,'番茄','http://localhost:8080/ssmsi3i6/upload/1615554413764.jpg',2,44,44,88,88,1,'已支付','广东省梅州市梅江区江南街道新江路19-2号');

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
) ENGINE=InnoDB AUTO_INCREMENT=1615554972747 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615554764314,'2021-03-12 21:12:43',1615554602143,61,'zhoubiancanyin','餐饮名称1','http://localhost:8080/ssmsi3i6/upload/zhoubiancanyin_canyintupian1.jpg'),(1615554785677,'2021-03-12 21:13:04',1615554602143,111,'nongzuowu','农作物名称1','http://localhost:8080/ssmsi3i6/upload/nongzuowu_nongzuowutupian1.jpg'),(1615554899562,'2021-03-12 21:14:59',1615554602143,1615553853700,'jingdianxinxi','游乐场666','http://localhost:8080/ssmsi3i6/upload/1615553828225.jpg'),(1615554932539,'2021-03-12 21:15:32',1615554602143,1615553977164,'zhoubiancanyin','油闷大虾','http://localhost:8080/ssmsi3i6/upload/1615553988886.jpg'),(1615554972746,'2021-03-12 21:16:12',1615554602143,1615554438903,'nongzuowu','番茄','http://localhost:8080/ssmsi3i6/upload/1615554413764.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','p2urw0nid5tp59urdh8hd7kwxdkta02r','2021-03-12 20:52:03','2021-03-12 21:52:03'),(2,1615554602143,'1','yonghu','用户','8nvnr6qw57jpk317pg2tz6vibrcm51e9','2021-03-12 21:10:08','2021-03-12 22:10:08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-12 20:49:17');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554602144 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`xingming`,`mima`,`xingbie`,`nianling`,`shouji`,`youxiang`,`shenfenzheng`,`money`) values (13,'2021-03-12 20:49:17','用户3','姓名3','123456','男',3,'13823888883','773890003@qq.com','440300199303030003',100),(14,'2021-03-12 20:49:17','用户4','姓名4','123456','男',4,'13823888884','773890004@qq.com','440300199404040004',100),(15,'2021-03-12 20:49:17','用户5','姓名5','123456','男',5,'13823888885','773890005@qq.com','440300199505050005',100),(16,'2021-03-12 20:49:17','用户6','姓名6','123456','男',6,'13823888886','773890006@qq.com','440300199606060006',100),(1615553587404,'2021-03-12 20:53:07','6666','李四','456','男',33,'13066666666','456@qq.com','441581666666666666',0),(1615554602143,'2021-03-12 21:10:02','1','1','1','男',1,'13099999999','789@qq.com','441581999999999999',502.3);

/*Table structure for table `zhoubiancanyin` */

DROP TABLE IF EXISTS `zhoubiancanyin`;

CREATE TABLE `zhoubiancanyin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canyinmingcheng` varchar(200) DEFAULT NULL COMMENT '餐饮名称',
  `canyinleixing` varchar(200) DEFAULT NULL COMMENT '餐饮类型',
  `canyintupian` varchar(200) DEFAULT NULL COMMENT '餐饮图片',
  `canyinjianjie` longtext COMMENT '餐饮简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615553977165 DEFAULT CHARSET=utf8 COMMENT='周边餐饮';

/*Data for the table `zhoubiancanyin` */

insert  into `zhoubiancanyin`(`id`,`addtime`,`canyinmingcheng`,`canyinleixing`,`canyintupian`,`canyinjianjie`,`thumbsupnum`,`crazilynum`,`price`) values (61,'2021-03-12 20:49:17','餐饮名称1','餐饮类型1','http://localhost:8080/ssmsi3i6/upload/zhoubiancanyin_canyintupian1.jpg','餐饮简介1',3,3,99.9),(62,'2021-03-12 20:49:17','餐饮名称2','餐饮类型2','http://localhost:8080/ssmsi3i6/upload/zhoubiancanyin_canyintupian2.jpg','餐饮简介2',2,2,99.9),(63,'2021-03-12 20:49:17','餐饮名称3','餐饮类型3','http://localhost:8080/ssmsi3i6/upload/zhoubiancanyin_canyintupian3.jpg','餐饮简介3',3,3,99.9),(64,'2021-03-12 20:49:17','餐饮名称4','餐饮类型4','http://localhost:8080/ssmsi3i6/upload/zhoubiancanyin_canyintupian4.jpg','餐饮简介4',4,4,99.9),(65,'2021-03-12 20:49:17','餐饮名称5','餐饮类型5','http://localhost:8080/ssmsi3i6/upload/zhoubiancanyin_canyintupian5.jpg','餐饮简介5',5,5,99.9),(1615553977164,'2021-03-12 20:59:36','油闷大虾','类型2','http://localhost:8080/ssmsi3i6/upload/1615553988886.jpg','<p>测试</p>',1,1,55);

/*Table structure for table `zhoubianzhusu` */

DROP TABLE IF EXISTS `zhoubianzhusu`;

CREATE TABLE `zhoubianzhusu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangzimingcheng` varchar(200) DEFAULT NULL COMMENT '房子名称',
  `fangzidizhi` varchar(200) DEFAULT NULL COMMENT '房子地址',
  `fangzidaxiao` varchar(200) DEFAULT NULL COMMENT '房子大小',
  `fangzileixing` varchar(200) DEFAULT NULL COMMENT '房子类型',
  `fangzijiage` varchar(200) DEFAULT NULL COMMENT '房子价格',
  `fangzifengmian` varchar(200) DEFAULT NULL COMMENT '房子封面',
  `fangzixiangqing` longtext COMMENT '房子详情',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预定时间',
  `jiesuanshijian` datetime DEFAULT NULL COMMENT '结算时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615553727356 DEFAULT CHARSET=utf8 COMMENT='周边住宿';

/*Data for the table `zhoubianzhusu` */

insert  into `zhoubianzhusu`(`id`,`addtime`,`fangzimingcheng`,`fangzidizhi`,`fangzidaxiao`,`fangzileixing`,`fangzijiage`,`fangzifengmian`,`fangzixiangqing`,`yudingshijian`,`jiesuanshijian`,`thumbsupnum`,`crazilynum`) values (23,'2021-03-12 20:49:17','房子名称3','房子地址3','房子大小3','房子类型3','房子价格3','http://localhost:8080/ssmsi3i6/upload/zhoubianzhusu_fangzifengmian3.jpg','房子详情3','2021-03-12 20:49:17','2021-03-12 20:49:17',4,4),(24,'2021-03-12 20:49:17','房子名称4','房子地址4','房子大小4','房子类型4','房子价格4','http://localhost:8080/ssmsi3i6/upload/zhoubianzhusu_fangzifengmian4.jpg','房子详情4','2021-03-12 20:49:17','2021-03-12 20:49:17',4,4),(25,'2021-03-12 20:49:17','房子名称5','房子地址5','房子大小5','房子类型5','房子价格5','http://localhost:8080/ssmsi3i6/upload/zhoubianzhusu_fangzifengmian5.jpg','房子详情5','2021-03-12 20:49:17','2021-03-12 20:49:17',5,5),(26,'2021-03-12 20:49:17','房子名称6','房子地址6','房子大小6','房子类型6','房子价格6','http://localhost:8080/ssmsi3i6/upload/zhoubianzhusu_fangzifengmian6.jpg','房子详情6','2021-03-12 20:49:17','2021-03-12 20:49:17',6,6),(1615553727355,'2021-03-12 20:55:26','测试11','广东省','1000平米','类型1','10000','http://localhost:8080/ssmsi3i6/upload/1615553702632.png','<p>测试111</p>','2021-03-04 00:01:02','2021-03-19 00:01:02',0,0);

/*Table structure for table `zhusuyuding` */

DROP TABLE IF EXISTS `zhusuyuding`;

CREATE TABLE `zhusuyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fangzimingcheng` varchar(200) DEFAULT NULL COMMENT '房子名称',
  `fangzifengmian` varchar(200) DEFAULT NULL COMMENT '房子封面',
  `fangzidizhi` varchar(200) DEFAULT NULL COMMENT '房子地址',
  `fangzijiage` varchar(200) DEFAULT NULL COMMENT '房子价格',
  `fangzixiangqing` varchar(200) DEFAULT NULL COMMENT '房子详情',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预定时间',
  `jiesuanshijian` datetime DEFAULT NULL COMMENT '结算时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554879808 DEFAULT CHARSET=utf8 COMMENT='住宿预订';

/*Data for the table `zhusuyuding` */

insert  into `zhusuyuding`(`id`,`addtime`,`zhanghao`,`xingming`,`nianling`,`shouji`,`fangzimingcheng`,`fangzifengmian`,`fangzidizhi`,`fangzijiage`,`fangzixiangqing`,`yudingshijian`,`jiesuanshijian`,`ispay`) values (101,'2021-03-12 20:49:17','账号1','姓名1','年龄1','手机1','房子名称1','http://localhost:8080/ssmsi3i6/upload/1615554289467.jpeg','房子地址1','房子价格1','房子详情1','2021-03-12 20:49:17','2021-03-12 20:49:17','未支付'),(102,'2021-03-12 20:49:17','账号2','姓名2','年龄2','手机2','房子名称2','http://localhost:8080/ssmsi3i6/upload/1615554318762.jpg','房子地址2','房子价格2','房子详情2','2021-03-12 20:49:17','2021-03-12 20:49:17','未支付'),(104,'2021-03-12 20:49:17','账号4','姓名4','年龄4','手机4','房子名称4','http://localhost:8080/ssmsi3i6/upload/zhusuyuding_fangzifengmian4.jpg','房子地址4','房子价格4','房子详情4','2021-03-12 20:49:17','2021-03-12 20:49:17','未支付'),(105,'2021-03-12 20:49:17','账号5','姓名5','年龄5','手机5','房子名称5','http://localhost:8080/ssmsi3i6/upload/zhusuyuding_fangzifengmian5.jpg','房子地址5','房子价格5','房子详情5','2021-03-12 20:49:17','2021-03-12 20:49:17','未支付'),(106,'2021-03-12 20:49:17','账号6','姓名6','年龄6','手机6','房子名称6','http://localhost:8080/ssmsi3i6/upload/zhusuyuding_fangzifengmian6.jpg','房子地址6','房子价格6','房子详情6','2021-03-12 20:49:17','2021-03-12 20:49:17','未支付'),(1615554689150,'2021-03-12 21:11:28','1','1','1','13099999999','房子名称3','http://localhost:8080/ssmsi3i6/upload/zhoubianzhusu_fangzifengmian3.jpg','房子地址3','房子价格3','房子详情3','2021-03-26 00:03:04','2021-03-31 00:04:04','未支付'),(1615554879807,'2021-03-12 21:14:39','1','1','1','13099999999','测试11','http://localhost:8080/ssmsi3i6/upload/1615553702632.png','广东省','10000','<p>测试111</p>','2021-03-17 00:03:04','2021-03-31 00:03:04','未支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
