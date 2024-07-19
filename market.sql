/*
SQLyog Ultimate v10.00 Beta1
MySQL - 8.0.33 : Database - market
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`market` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `market`;

/*Table structure for table `ckin` */

DROP TABLE IF EXISTS `ckin`;

CREATE TABLE `ckin` (
  `inid` int NOT NULL AUTO_INCREMENT,
  `proid` int NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `num` int unsigned DEFAULT '100',
  `indate` date DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`inid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `ckin` */

insert  into `ckin`(`inid`,`proid`,`pname`,`num`,`indate`,`marks`) values (121,1260300,'苹果',100,'2023-11-23',''),(122,1260300,'苹果',10000,'2023-04-27',NULL),(123,5287527,'瓜子',100,'2023-02-10',NULL),(124,5287527,'瓜子',100,'2023-05-02',NULL),(125,8556504,'绿萝',100,'2023-05-02',NULL),(126,241677,'怡宝矿泉水',100,'2023-05-12',NULL),(127,241677,'怡宝矿泉水',20,'2023-05-12',NULL),(128,241677,'怡宝矿泉水',100,'2019-05-12',NULL),(129,6164620,'凉白开',100,'2023-11-23',NULL),(130,2487174,'花生',100,'2023-11-23',NULL);

/*Table structure for table `ckretire` */

DROP TABLE IF EXISTS `ckretire`;

CREATE TABLE `ckretire` (
  `inid` int NOT NULL AUTO_INCREMENT,
  `proid` int NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `num` int DEFAULT NULL,
  `indate` date DEFAULT NULL,
  `retdate` date DEFAULT NULL,
  `reason` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`inid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `ckretire` */

insert  into `ckretire`(`inid`,`proid`,`pname`,`num`,`indate`,`retdate`,`reason`,`marks`) values (123,5287527,'瓜子',100,NULL,'2019-05-11',NULL,'');

/*Table structure for table `cusretire` */

DROP TABLE IF EXISTS `cusretire`;

CREATE TABLE `cusretire` (
  `saleid` int NOT NULL,
  `proid` int NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` double(25,3) DEFAULT NULL,
  `num` int DEFAULT NULL,
  `total` double(25,3) DEFAULT NULL,
  `saledate` date DEFAULT NULL,
  `retdate` date DEFAULT NULL,
  `reason` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`saleid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `cusretire` */

insert  into `cusretire`(`saleid`,`proid`,`pname`,`price`,`num`,`total`,`saledate`,`retdate`,`reason`,`marks`) values (3718799,1260300,'苹果',NULL,10,NULL,NULL,'2023-04-12',NULL,''),(5595579,1260300,'苹果',NULL,6,NULL,NULL,'2023-04-19',NULL,''),(8749456,241677,'怡宝矿泉水',NULL,10,NULL,NULL,'2019-05-12',NULL,'');

/*Table structure for table `custom` */

DROP TABLE IF EXISTS `custom`;

CREATE TABLE `custom` (
  `cusid` int NOT NULL,
  `cusname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tel` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `person` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `emali` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`cusid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `custom` */

insert  into `custom`(`cusid`,`cusname`,`tel`,`person`,`address`,`emali`) values (5,'5',NULL,NULL,NULL,NULL),(123,'吴志强',NULL,NULL,NULL,NULL);

/*Table structure for table `kcxx` */

DROP TABLE IF EXISTS `kcxx`;

CREATE TABLE `kcxx` (
  `proid` int NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `num` int DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`proid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `kcxx` */

insert  into `kcxx`(`proid`,`pname`,`num`,`marks`) values (241677,'怡宝矿泉水',129,''),(1260300,'苹果',9390,''),(2487174,'花生',100,NULL),(5287527,'瓜子',100,''),(6164620,'凉白开',100,NULL),(8556504,'绿萝',100,NULL);

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `managerid` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `managername` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `card` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sex` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tel` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `stafftype` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pwd` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`managerid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `manager` */

insert  into `manager`(`managerid`,`managername`,`card`,`sex`,`tel`,`stafftype`,`pwd`) values ('15203111','卞振浩','362430199712207275','男','13517064592','管理员','1234');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `proid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` double(25,3) NOT NULL,
  `inprice` double(25,3) DEFAULT NULL,
  `prodate` date DEFAULT NULL,
  `reledate` date DEFAULT NULL,
  `supname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `protype` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `unit` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`proid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8556505 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `product` */

insert  into `product`(`proid`,`pname`,`price`,`inprice`,`prodate`,`reledate`,`supname`,`protype`,`unit`,`marks`) values (241677,'农夫山泉矿泉水',2.000,1.000,'2023-01-01','2023-05-08','怡宝','矿泉水','瓶',''),(1260300,'苹果',23.000,17.000,'2023-01-01','2023-11-15','百果园','水果','斤',''),(2487174,'花生',50.000,100.000,'2023-11-23','2023-12-01','恰恰','零食','袋','无'),(5287527,'瓜子',5.000,3.000,'2023-04-05','2023-07-26','恰恰','零食','袋',''),(8556504,'绿萝',12.000,7.000,'2023-05-17','2019-05-25','花鸟市场','绿植盆栽','盆','');

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `saleid` int NOT NULL,
  `proid` int NOT NULL,
  `pname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` double(25,3) DEFAULT NULL,
  `num` int DEFAULT NULL,
  `total` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `saledate` date DEFAULT NULL,
  `cusname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `cusid` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `marks` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`saleid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `sale` */

insert  into `sale`(`saleid`,`proid`,`pname`,`price`,`num`,`total`,`saledate`,`cusname`,`cusid`,`marks`) values (30579,1260300,'苹果',23.000,600,'13800.0',NULL,'5','5',''),(3007323,241677,'怡宝矿泉水',2.000,69,'138.0',NULL,'hbh','20',''),(3718799,1260300,'苹果',23.000,5,'115.0',NULL,'10','324','1'),(5595579,1260300,'苹果',23.000,12,'276.0',NULL,'10','2312',''),(6663266,1260300,'苹果',23.000,123,'2829.0',NULL,'吴志强','123',''),(9092816,241677,'怡宝矿泉水',2.000,20,'40.0',NULL,'hbh','12',''),(9841755,1260300,'苹果',23.000,2,'46.0',NULL,'1','2','');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staffid` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `staffname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `card` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sex` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tel` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `stafftype` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pwd` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`staffid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `staff` */

insert  into `staff`(`staffid`,`staffname`,`card`,`sex`,`tel`,`stafftype`,`pwd`) values ('15203122','卞振浩','362430199712207275','男','13517064592','普通员工','123456'),('15203123','卞振浩','234123412341234','142','13519081234','普通员工','123456'),('15203124','卞振浩','362430199712207275','男','13517064592','普通员工','123456'),('154203129','卞振浩','362430199712207275','男','13517064592','普通员工','1234');

/*Table structure for table `supply` */

DROP TABLE IF EXISTS `supply`;

CREATE TABLE `supply` (
  `supid` int NOT NULL AUTO_INCREMENT,
  `suppname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tel` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `person` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `emali` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`supid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `supply` */

insert  into `supply`(`supid`,`suppname`,`tel`,`person`,`address`,`emali`) values (16,'百果园','13517064592','某总','吉安永新','3078343267@qq.com'),(17,'恰恰','13517064592','贺天','吉安永新','3078343267@qq.com'),(19,'怡宝',NULL,NULL,NULL,NULL);

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `protypeid` int unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`protypeid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

/*Data for the table `type` */

insert  into `type`(`protypeid`,`typename`) values (26,'水果'),(27,'零食'),(28,'绿植盆栽'),(29,'矿泉水');

/* Trigger structure for table `ckin` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `xgjhxx` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `xgjhxx` AFTER UPDATE ON `ckin` FOR EACH ROW begin
UPDATE kcxx set num=num+new.num-old.num where proid=new.proid;
end */$$


DELIMITER ;

/* Trigger structure for table `ckretire` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `th` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `th` AFTER INSERT ON `ckretire` FOR EACH ROW BEGIN
UPDATE kcxx set num=num-new.num where proid=new.proid;
end */$$


DELIMITER ;

/* Trigger structure for table `ckretire` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `xgth` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `xgth` AFTER UPDATE ON `ckretire` FOR EACH ROW BEGIN
update kcxx set num=num+old.num-new.num where proid=new.proid;
end */$$


DELIMITER ;

/* Trigger structure for table `product` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tg1` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `tg1` AFTER INSERT ON `product` FOR EACH ROW begin 
set @flag3=(SELECT count(*)  from ckin where proid=NEW.proid);
if(@flag3=0)
THEN
INSERT into ckin(proid,pname,indate) VALUES (NEW.proid,NEW.pname,now());
end if;
set @flag4=(SELECT count(*)  from kcxx where proid=NEW.proid);
if(@flag4=0)
THEN
INSERT INTO kcxx(proid,pname,num) VALUES (NEW.proid,NEW.pname,100);
end if;
set @flag=(select COUNT(*) FROM type where typename=NEW.protype);
if(@flag=0)
then
INSERT INTO type(typename) VALUES(NEW.protype);
end if;
set @flag2=(SELECT count(*)  from supply where suppname=NEW.supname);
if(@flag2=0)
THEN
INSERT INTO supply(suppname) VALUES (NEW.supname);
end if;
end */$$


DELIMITER ;

/* Trigger structure for table `type` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `xglb` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `xglb` AFTER UPDATE ON `type` FOR EACH ROW begin
update product set protype=new.typename where protype=old.typename;
end */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
