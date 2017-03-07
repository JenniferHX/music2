/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.30 : Database - music
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`music` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `music`;

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `albumid` int(20) NOT NULL AUTO_INCREMENT,
  `singer` int(40) NOT NULL,
  `introduction` varchar(100) DEFAULT NULL,
  `albumname` varchar(40) NOT NULL,
  `albumfilepath` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`albumid`),
  KEY `FK5897E6F77D50433` (`singer`),
  CONSTRAINT `FK5897E6F77D50433` FOREIGN KEY (`singer`) REFERENCES `singer` (`singerid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `album` */

insert  into `album`(`albumid`,`singer`,`introduction`,`albumname`,`albumfilepath`) values (1,1,NULL,'和自己对话',NULL),(2,2,NULL,'离开地球表面',NULL),(3,3,NULL,'孤岛',NULL),(4,4,NULL,'We Sing We Dance We Steal Things',NULL);

/*Table structure for table `genre` */

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `genrename` varchar(30) NOT NULL,
  `genreid` int(20) NOT NULL,
  PRIMARY KEY (`genreid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `genre` */

insert  into `genre`(`genrename`,`genreid`) values ('流行',1),('乡村',2),('民谣',3),('蓝调',4),('摇滚',5);

/*Table structure for table `singer` */

DROP TABLE IF EXISTS `singer`;

CREATE TABLE `singer` (
  `singerid` int(20) NOT NULL AUTO_INCREMENT,
  `singername` varchar(40) NOT NULL,
  `introduction` varchar(100) DEFAULT NULL,
  `singerfilepath` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`singerid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `singer` */

insert  into `singer`(`singerid`,`singername`,`introduction`,`singerfilepath`) values (1,'林俊杰',NULL,NULL),(2,'五月天',NULL,NULL),(3,'马頔',NULL,NULL),(4,'Jason Mraz',NULL,NULL);

/*Table structure for table `song` */

DROP TABLE IF EXISTS `song`;

CREATE TABLE `song` (
  `songid` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `singer` int(20) DEFAULT NULL,
  `album` int(20) DEFAULT NULL,
  `genre` int(2) NOT NULL,
  PRIMARY KEY (`songid`),
  KEY `FK688ADFE77D50433` (`singer`),
  KEY `FK688ADFE22ECEC43` (`album`),
  KEY `FK35F51577D50433` (`singer`),
  KEY `FK35F51522ECEC43` (`album`),
  KEY `FK35F5152390026B` (`genre`),
  CONSTRAINT `FK35F51522ECEC43` FOREIGN KEY (`album`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK35F5152390026B` FOREIGN KEY (`genre`) REFERENCES `genre` (`genreid`),
  CONSTRAINT `FK35F51577D50433` FOREIGN KEY (`singer`) REFERENCES `singer` (`singerid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK688ADFE22ECEC43` FOREIGN KEY (`album`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `song_ibfk_1` FOREIGN KEY (`singer`) REFERENCES `singer` (`singerid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `song_ibfk_2` FOREIGN KEY (`genre`) REFERENCES `genre` (`genreid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `song` */

insert  into `song`(`songid`,`name`,`singer`,`album`,`genre`) values (1,'有梦不难',1,1,1),(2,'离开地球表面',2,2,5),(3,'弹唱',1,1,1),(4,'现在的我和她',1,1,1),(5,'疯狂世界',2,2,5),(6,'南山南',3,3,3),(7,'I\'m yours',4,4,2);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`password`) values (1,'Ewang','147155');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
