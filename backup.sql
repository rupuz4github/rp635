-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: SSN
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CITIZENS`
--

DROP TABLE IF EXISTS `CITIZENS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CITIZENS` (
  `SSID` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(225) DEFAULT NULL,
  `Firstname` varchar(225) DEFAULT NULL,
  `DOB` varchar(225) DEFAULT NULL,
  `SEX` varchar(225) DEFAULT NULL,
  `POB` varchar(225) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(225) DEFAULT NULL,
  `PERMISSION` varchar(225) DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`SSID`)
) ENGINE=InnoDB AUTO_INCREMENT=1017 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CITIZENS`
--

LOCK TABLES `CITIZENS` WRITE;
/*!40000 ALTER TABLE `CITIZENS` DISABLE KEYS */;
INSERT INTO `CITIZENS` VALUES (1001,'Peters','Rupert','12-14-1950','M','Bassa','Living','12345','Admin','rpeter'),(1002,'Morris','Amot','03-10-1975','M','Bong','Deceased',' ',' ',NULL),(1003,'Artes','Amos','01-01-1980','M','Mont','Living',' ',' ',NULL),(1004,'Jones','Mast','05-07-1974','M','Harper','DECEASED',' ',' ',NULL),(1005,'Paye','Augtina','06-13-1985','F','LOfa','DECEASED',' ',' ',NULL),(1006,'Bradley','Susan','04-12-1995','F','Kakata','Living',' ',' ',NULL),(1007,'James','Mary','05-30-2001','F','Sinkor','Living',' ',' ',NULL),(1008,'Apons','Francis','02-24-2014','M','Duala','Living',' ',' ',NULL),(1009,'Tedor','Delvsa','12-24-2015','F','Gedeh','Living',' ',' ',NULL),(1010,'Jabes','Carey','11-30-2000','F','Kru','Living',' ',' ',NULL),(1011,'Hodge','Marcus','01-30-2013','M','Bapolu','Living',' ',' ',NULL),(1012,'Teage','Yandi','06-20-1986','F','Cape','Living',' ',' ',NULL),(1014,'Mandy','Amana','02-04-1985','M','Moet','Living',' ',' ',' '),(1016,'Mingo','Plummy ','02-05-2017','SEX',' POB','STATUS',' ',' ',' ');
/*!40000 ALTER TABLE `CITIZENS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-22 20:45:29
