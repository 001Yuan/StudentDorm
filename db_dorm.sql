CREATE DATABASE `db_dorm` ;

USE `db_dorm`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`adminId`,`userName`,`password`,`name`,`sex`,`tel`) values (1,'admin','111','Lrk','男','15979254862');

/*Table structure for table `t_dormbuild` */

DROP TABLE IF EXISTS `t_dormbuild`;

CREATE TABLE `t_dormbuild` (
  `dormBuildId` int(11) NOT NULL AUTO_INCREMENT,
  `dormBuildName` varchar(20) DEFAULT NULL,
  `dormBuildDetail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dormBuildId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `t_dormbuild` */

insert  into `t_dormbuild`(`dormBuildId`,`dormBuildName`,`dormBuildDetail`) values (1,'1栋','这是一栋。。。'),(4,'2栋','这是2栋'),(5,'3栋',''),(6,'4栋',''),(7,'5栋',''),(8,'6栋','');

/*Table structure for table `t_dormmanager` */

DROP TABLE IF EXISTS `t_dormmanager`;

CREATE TABLE `t_dormmanager` (
  `dormManId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dormManId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `t_dormmanager` */

insert  into `t_dormmanager`(`dormManId`,`userName`,`password`,`dormBuildId`,`name`,`sex`,`tel`) values (2,'manager2','123',4,'小张','男','123'),(3,'manager3','123',1,'小李','女','123'),(4,'manager4','123',5,'小陈','男','123'),(5,'manager5','123',NULL,'小宋','男','123'),(7,'manager6','123',NULL,'呵呵 ','女','123'),(8,'manager1','123',6,'小白','男','123'),(9,'manager7','123',7,'哈哈','女','123');

/*Table structure for table `t_record` */

DROP TABLE IF EXISTS `t_record`;

CREATE TABLE `t_record` (
  `recordId` int(11) NOT NULL AUTO_INCREMENT,
  `studentNumber` varchar(20) DEFAULT NULL,
  `studentName` varchar(30) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_record` */

insert  into `t_record`(`recordId`,`studentNumber`,`studentName`,`dormBuildId`,`dormName`,`date`,`detail`) values (1,'002','李四',4,'120','2019-06-09','123'),(4,'005','赵起',4,'220','2019-06-12','...'),(5,'006','王珂珂',4,'111','2019-06-12','00'),(6,'004','李进',6,'220','2019-06-12','....'),(7,'004','李进',6,'220','2019-06-12','22');

/*Table structure for table `t_student` */

DROP TABLE IF EXISTS `t_student`;

CREATE TABLE `t_student` (
  `studentId` int(11) NOT NULL AUTO_INCREMENT,
  `stuNum` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `t_student` */

insert  into `t_student`(`studentId`,`stuNum`,`password`,`name`,`dormBuildId`,`dormName`,`sex`,`tel`) values (2,'002','123','李四',4,'120','男','32'),(3,'003','123','王五',5,'201','男','2'),(4,'004','123','李进',6,'220','女','1'),(5,'005','123','赵起',4,'220','女','123'),(6,'006','123','王珂珂',4,'111','女','111'),(9,'007','123','测试1',1,'221','男','123'),(28,'001','123','测试1',1,'111','男','123'),(31,'010','123','小强',4,'222','男','111');

