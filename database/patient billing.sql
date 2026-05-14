/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - onlinefee
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `onlinefee`;

USE `onlinefee`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `paddfee` */

DROP TABLE IF EXISTS `paddfee`;

CREATE TABLE `paddfee` (
  `bussid` int(100) NOT NULL auto_increment,
  `id` varchar(100) default NULL,
  `sid` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `sbranch` varchar(100) default NULL,
  `syear` varchar(100) default NULL,
  `ssemi` varchar(100) default NULL,
  `sbuss` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`bussid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `paddfee` */

insert  into `paddfee`(`bussid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`sbuss`,`status`) values (10,'9101','558','saisai','PATIENT','CASHIER','CASH','2','paid'),(11,'9101','558','saisai','PATIENT','CASHIER','CASH','22','paid'),(12,'9101','558','saisai','PATIENT','CASHIER','CASH','33','paid'),(15,'9101','558','saisai','PATIENT','CASHIER','CASH','22','paid');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(100) NOT NULL auto_increment,
  `cardtype` varchar(100) default NULL,
  `cardnumber` varchar(100) default NULL,
  `studentmobile` varchar(100) default NULL,
  `cvvnumber` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `payment` */

insert  into `payment`(`id`,`cardtype`,`cardnumber`,`studentmobile`,`cvvnumber`) values (14,'visa','12345678901','9874563210','123'),(15,'visa','98745632101478','9874563210','123'),(16,'visa','12347890','984563210','555'),(17,'visa','9874563147','19856153','456'),(18,'visa','1236547890','9874563210','555'),(19,'visa','1236547890','9874563210','555'),(20,'visa','1236547890','9874563210','555'),(21,'visa','987456321015','9874563210','555'),(22,'visa','1236547890','9874563210','55'),(23,'visa','12365478900','9874563210','555'),(24,'visa','1236547890','9874563210','555'),(25,'visa','1236547890','9874563210','555'),(26,'visa','1236547890','9874563210','666'),(27,'visa','1236547890','98745663210','555'),(28,'visa','98745632111','000000000','111'),(29,'visa','98745632011','98456310','555'),(30,'visa','123654890','65635653','55'),(31,'visa','1236547890','98456210','555'),(32,'visa','1236547890','5635663','555'),(33,'visa','1236547890','12325352','555'),(34,'visa','1236547890','53156465','55'),(35,'visa','1236547890','984563210','555'),(36,'visa','1236547891','6984563210','555');

/*Table structure for table `pconfee` */

DROP TABLE IF EXISTS `pconfee`;

CREATE TABLE `pconfee` (
  `jid` int(100) NOT NULL auto_increment,
  `id` varchar(100) default NULL,
  `sid` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `sbranch` varchar(100) default NULL,
  `syear` varchar(100) default NULL,
  `ssemi` varchar(100) default NULL,
  `sjntufee` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`jid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `pconfee` */

insert  into `pconfee`(`jid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`sjntufee`,`status`) values (13,'1234','558','saisai','PATIENT','cashier','CASH','100','paid'),(14,'1234','558','saisai','PATIENT','cashier','CASH','11','paid'),(17,'1234','558','saisai','PATIENT','cashier','CASH','1','paid'),(19,'1234','558','saisai','PATIENT','cashier','CASH','1','paid');

/*Table structure for table `picu` */

DROP TABLE IF EXISTS `picu`;

CREATE TABLE `picu` (
  `examid` int(100) NOT NULL auto_increment,
  `id` varchar(100) default NULL,
  `sid` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `sbranch` varchar(100) default NULL,
  `syear` varchar(100) default NULL,
  `ssemi` varchar(100) default NULL,
  `sexamfee` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`examid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `picu` */

insert  into `picu`(`examid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`sexamfee`,`status`) values (5,'4601','558','saisai','PATIENT','CASHER','CASH','7','paid'),(6,'4601','558','saisai','PATIENT','CASHER','CASH','77','paid'),(7,'4601','558','saisai','PATIENT','CASHER','CASH','777','paid'),(8,'4601','558','saisai','PATIENT','CASHER','CASH','7','paid'),(9,'4601','558','saisai','PATIENT','CASHER','CASH',NULL,'paid'),(10,'4601','558','saisai','PATIENT','CASHER','CASH','7','paid');

/*Table structure for table `scondo` */

DROP TABLE IF EXISTS `scondo`;

CREATE TABLE `scondo` (
  `condoid` int(100) NOT NULL auto_increment,
  `id` varchar(100) default NULL,
  `sid` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `sbranch` varchar(100) default NULL,
  `syear` varchar(100) default NULL,
  `ssemi` varchar(100) default NULL,
  `scondofee` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`condoid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `scondo` */

insert  into `scondo`(`condoid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`scondofee`,`status`) values (7,'6346','558','saisai','PATIENT','CASHER','CASH','8','paid'),(8,'6346','558','saisai','PATIENT','CASHER','CASH','88','paid');

/*Table structure for table `slibfee` */

DROP TABLE IF EXISTS `slibfee`;

CREATE TABLE `slibfee` (
  `slib` int(100) NOT NULL auto_increment,
  `id` varchar(100) default NULL,
  `sid` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `sbranch` varchar(100) default NULL,
  `syear` varchar(100) default NULL,
  `ssemi` varchar(100) default NULL,
  `slibfee` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`slib`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `slibfee` */

insert  into `slibfee`(`slib`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`slibfee`,`status`) values (9,'7702','558','saisai','PATIENT','CASHER','CASH','3','paid'),(10,'7702','558','saisai','PATIENT','CASHER','CASH','33','paid');

/*Table structure for table `sproject` */

DROP TABLE IF EXISTS `sproject`;

CREATE TABLE `sproject` (
  `projectid` int(100) NOT NULL auto_increment,
  `id` varchar(100) default NULL,
  `sid` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `sbranch` varchar(100) default NULL,
  `syear` varchar(100) default NULL,
  `ssemi` varchar(100) default NULL,
  `sprojectfee` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`projectid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `sproject` */

insert  into `sproject`(`projectid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`sprojectfee`,`status`) values (4,'7997','558','saisai','PATIENT','CASHER','CASH','4','paid'),(5,'7997','558','saisai','PATIENT','CASHER','CASH','44','paid');

/*Table structure for table `ssac` */

DROP TABLE IF EXISTS `ssac`;

CREATE TABLE `ssac` (
  `ssacid` int(100) NOT NULL auto_increment,
  `id` varchar(100) default NULL,
  `sid` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `sbranch` varchar(100) default NULL,
  `syear` varchar(100) default NULL,
  `ssemi` varchar(100) default NULL,
  `ssacfee` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`ssacid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `ssac` */

insert  into `ssac`(`ssacid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`ssacfee`,`status`) values (5,'9848','558','saisai','PATIENT','CASHER','CASH','5','paid'),(6,'9848','558','saisai','PATIENT','CASHER','CASH','55','paid');

/*Table structure for table `ssport` */

DROP TABLE IF EXISTS `ssport`;

CREATE TABLE `ssport` (
  `sportid` int(100) NOT NULL auto_increment,
  `id` varchar(100) default NULL,
  `sid` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `sbranch` varchar(100) default NULL,
  `syear` varchar(100) default NULL,
  `ssemi` varchar(100) default NULL,
  `ssportfee` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`sportid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `ssport` */

insert  into `ssport`(`sportid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`ssportfee`,`status`) values (4,'2384','558','saisai','PATIENT','CAHSER','CASH','6','paid'),(5,'2384','558','saisai','PATIENT','CAHSER','CASH','66','paid');

/*Table structure for table `stureji` */

DROP TABLE IF EXISTS `stureji`;

CREATE TABLE `stureji` (
  `id` int(100) NOT NULL auto_increment,
  `sid` varchar(10) default NULL,
  `sfname` varchar(20) default NULL,
  `slname` varchar(20) default NULL,
  `semail` varchar(20) default NULL,
  `spsw` varchar(20) default NULL,
  `sbranch` varchar(20) default NULL,
  `sno` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `stureji` */

insert  into `stureji`(`id`,`sid`,`sfname`,`slname`,`semail`,`spsw`,`sbranch`,`sno`) values (8,'558','sai','sai','sai@gmail.com','sai','PATIENT','9874563210');

/*Table structure for table `stutifee` */

DROP TABLE IF EXISTS `stutifee`;

CREATE TABLE `stutifee` (
  `tid` int(10) NOT NULL auto_increment COMMENT '0',
  `id` varchar(100) default NULL,
  `sid` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `sbranch` varchar(100) default NULL,
  `syear` varchar(100) default NULL,
  `ssemi` varchar(100) default NULL,
  `stutifee` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `stutifee` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
