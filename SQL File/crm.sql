/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.4.22-MariaDB : Database - crm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `crm`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`password`) values (1,'admin','admin');

/*Table structure for table `prequest` */

DROP TABLE IF EXISTS `prequest`;

CREATE TABLE `prequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `wdd` varchar(255) DEFAULT NULL,
  `cms` varchar(255) DEFAULT NULL,
  `seo` varchar(255) DEFAULT NULL,
  `smo` varchar(255) DEFAULT NULL,
  `swd` varchar(255) DEFAULT NULL,
  `dwd` varchar(255) DEFAULT NULL,
  `fwd` varchar(255) DEFAULT NULL,
  `dr` varchar(255) DEFAULT NULL,
  `whs` varchar(255) DEFAULT NULL,
  `wm` varchar(255) DEFAULT NULL,
  `ed` varchar(255) DEFAULT NULL,
  `wta` varchar(255) DEFAULT NULL,
  `opi` varchar(255) DEFAULT NULL,
  `ld` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `osc` varchar(255) DEFAULT NULL,
  `nd` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `prequest` */

insert  into `prequest`(`id`,`name`,`email`,`contactno`,`company`,`wdd`,`cms`,`seo`,`smo`,`swd`,`dwd`,`fwd`,`dr`,`whs`,`wm`,`ed`,`wta`,`opi`,`ld`,`da`,`osc`,`nd`,`others`,`query`,`posting_date`,`remark`,`status`) values (1,'User Recursivo','recursivoweb@mail.com','1234567890','Test','Website Design & Development','','','','','Dynamic Website Design','','','Web Hosting Services','','Ecommerce Development','Walk Through Animation','','','','','','','This is for testing','2021-04-22','This is for test',NULL);

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(11) DEFAULT NULL,
  `email_id` varchar(300) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `task_type` varchar(300) DEFAULT NULL,
  `prioprity` varchar(300) DEFAULT NULL,
  `ticket` longtext DEFAULT NULL,
  `attachment` varchar(300) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `admin_remark` longtext DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `admin_remark_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `ticket` */

insert  into `ticket`(`id`,`ticket_id`,`email_id`,`subject`,`task_type`,`prioprity`,`ticket`,`attachment`,`status`,`admin_remark`,`posting_date`,`admin_remark_date`) values (12,'5','recursivoweb@mail.com','Test Ticket','billing','important','This ticket for testing purpose.','','closed','Ticket resolved.  Solution provided','2021-04-22','2022-07-14 16:56:02');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`email`,`alt_email`,`password`,`mobile`,`gender`,`address`,`status`,`posting_date`) values (1,'User Recursivo','recursivoweb@mail.com','test123@mail.com','Demo@123','1234567890','<br />\r\n<b>Warning</b>:  Undefined variable $row in <b>C:xampphtdocscrmadminedit-user.php</b> on line <b>94</b><br />\r\n<br />\r\n<b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocscrmadminedit-user.php</b> on line <b>94<','Colombia 000000',NULL,'2021-04-22 07:25:19');

/*Table structure for table `usercheck` */

DROP TABLE IF EXISTS `usercheck`;

CREATE TABLE `usercheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logindate` varchar(255) DEFAULT '',
  `logintime` varchar(255) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `ip` varbinary(16) DEFAULT NULL,
  `mac` varbinary(16) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `usercheck` */

insert  into `usercheck`(`id`,`logindate`,`logintime`,`user_id`,`username`,`email`,`ip`,`mac`,`city`,`country`) values (1,'2021/04/22','05:59:18pm',1,'User Recursivo','recursivoweb@mail.com','::1','12-F4-8D-12-99-9','',''),(2,'2021/04/22','10:00:15pm',1,'User Recursivo','recursivoweb@mail.com','::1','12-F4-8D-12-99-9','',''),(3,'2022/07/15','03:30:30am',1,'User Recursivo','recursivoweb@mail.com','::1','Nombre de host. ','','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
