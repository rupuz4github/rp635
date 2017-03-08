-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: Liberia_Social_Security_System
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
-- Table structure for table `Demography`
--

DROP TABLE IF EXISTS `Demography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Demography` (
  `SSID` int(11) NOT NULL,
  `LastName` varchar(225) DEFAULT NULL,
  `FirstName` varchar(225) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Day` int(11) DEFAULT NULL,
  `Month` int(11) DEFAULT NULL,
  `Sex` varchar(225) DEFAULT NULL,
  `PlaceOfBirth` varchar(225) DEFAULT NULL,
  `Religion` varchar(225) DEFAULT NULL,
  `Status` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`SSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Demography`
--

LOCK TABLES `Demography` WRITE;
/*!40000 ALTER TABLE `Demography` DISABLE KEYS */;
INSERT INTO `Demography` VALUES (1001,'Artes','Amos',1980,1,1,'M','Monsterrado','Christian','Living'),(1002,'Joness','Mast',1984,5,7,'M','Harper','Christian','Living'),(1003,'Paye','Augustina',1974,15,12,'F','Nimba','Muslim','Living'),(1005,'Bradley','Susan',2011,9,9,'F','Bong','Muslim','Living'),(1006,'James','Mary',2015,3,2,'F','Sinoe','Christian','Living'),(1007,'Apon','Francis',1995,4,3,'M','Lofa','Christian','Living'),(1008,'Tedor','Delv',1964,20,8,'F','Gedeh','Christian','Living'),(1009,'Jabes','Carey',2005,5,12,'F','Bomi','Christian','Living'),(1010,'Burgess','Maces',1990,1,7,'M','Bapolu','Muslim','Living'),(1011,'Hodge','Marcus',1994,18,4,'M','Kru','Christian','Living'),(1012,'Teage','Yandi',1979,20,6,'F','CapeMount','Muslim','Living');
/*!40000 ALTER TABLE `Demography` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-07 19:38:05
