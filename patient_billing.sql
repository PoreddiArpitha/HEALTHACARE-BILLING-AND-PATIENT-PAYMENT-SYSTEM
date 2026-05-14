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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `paddfee` */

insert  into `paddfee`(`bussid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`sbuss`,`status`) values (1,'9101','PAT20251777','saisai','PATIENT','CASHIER','CASH','22','paid'),(2,'9101','PAT20255356','pawanpawan','PATIENT','CASHIER','CASH','2','paid');

/*Table structure for table `patreji` */

DROP TABLE IF EXISTS `patreji`;

CREATE TABLE `patreji` (
  `id` int(100) NOT NULL auto_increment,
  `pid` varchar(100) default NULL,
  `pfname` varchar(100) default NULL,
  `plname` varchar(100) default NULL,
  `pemail` varchar(100) default NULL,
  `ppsw` varchar(100) default NULL,
  `pbranch` varchar(100) default NULL,
  `pno` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `patreji` */

insert  into `patreji`(`id`,`pid`,`pfname`,`plname`,`pemail`,`ppsw`,`pbranch`,`pno`) values (1,'PAT20251777','sai','sai','sai@gmail.com','sai','PATIENT','9876543210'),(2,'PAT20255356','pawan','pawan','pawan@gmail.com','pawan','PATIENT','9876543210'),(3,'PAT20254814','ss','ss','ss@gmail.com','ss','PATIENT','9876543210');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(100) NOT NULL auto_increment,
  `cardtype` varchar(100) default NULL,
  `cardnumber` varchar(100) default NULL,
  `studentmobile` varchar(100) default NULL,
  `cvvnumber` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `payment` */

insert  into `payment`(`id`,`cardtype`,`cardnumber`,`studentmobile`,`cvvnumber`) values (1,'visa','789456123123','9876543210','123'),(2,'visa','123456789123','9876543210','654'),(3,'visa','123456789123','9876543210','654'),(4,'visa','789456123012','32653565','65'),(5,'visa','78945612302','987654320','654'),(6,'visa','123456789456','987654321','456'),(7,'visa','78945623012','321659870','632'),(8,'visa','98765428964565','9876543210','32'),(9,'visa','123456789123','9876543210','65'),(10,'visa','123456789656','987654321','888'),(11,'visa','123456789123','9876543210','555'),(12,'visa','123456789123','987654320','555'),(13,'visa','9876543210123','9876543210','555'),(14,'visa','98765432121','9876532101','122'),(15,'visa','9654163465341','562635','654'),(16,'visa','84965465465','654165341','555'),(17,'visa','987654683546','56431653421','655');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pconfee` */

insert  into `pconfee`(`jid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`sjntufee`,`status`) values (1,'1234','PAT20251777','saisai','PATIENT','cashier','CASH','1','paid'),(2,'1234','PAT20255356','pawanpawan','PATIENT','cashier','CASH','1','paid');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `picu` */

insert  into `picu`(`examid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`sexamfee`,`status`) values (1,'4601','PAT20251777','saisai','PATIENT','CASHER','CASH','77','paid'),(2,'4601','PAT20255356','pawanpawan','PATIENT','CASHER','CASH','7','paid');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `scondo` */

insert  into `scondo`(`condoid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`scondofee`,`status`) values (1,'6346','PAT20251777','saisai','PATIENT','CASHER','CASH','88','paid'),(2,'6346','PAT20255356','pawanpawan','PATIENT','CASHER','CASH','8','paid');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `slibfee` */

insert  into `slibfee`(`slib`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`slibfee`,`status`) values (1,'7702',NULL,'saisai','PATIENT','CASHER','CASH','33','paid'),(2,'7702','PAT20251777','saisai','PATIENT','CASHER','CASH','33','paid'),(3,'7702','PAT20255356','pawanpawan','PATIENT','CASHER','CASH','3','paid');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `sproject` */

insert  into `sproject`(`projectid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`sprojectfee`,`status`) values (1,'7997','PAT20251777','saisai','PATIENT','CASHER','CASH','44','paid'),(2,'7997','PAT20255356','pawanpawan','PATIENT','CASHER','CASH','4','paid');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ssac` */

insert  into `ssac`(`ssacid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`ssacfee`,`status`) values (1,'9848',NULL,'saisai','PATIENT','CASHER','CASH','55','paid'),(2,'9848','PAT20255356','pawanpawan','PATIENT','CASHER','CASH','5','paid');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ssport` */

insert  into `ssport`(`sportid`,`id`,`sid`,`sname`,`sbranch`,`syear`,`ssemi`,`ssportfee`,`status`) values (1,'2384','PAT20251777','saisai','PATIENT','CAHSER','CASH','66','paid'),(2,'2384','PAT20255356','pawanpawan','PATIENT','CAHSER','CASH','6','paid');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
