-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: college
-- ------------------------------------------------------
-- Server version	5.6.28-log

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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `grade1` double NOT NULL,
  `grade2` double NOT NULL,
  `average` double NOT NULL,
  `studentId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_studentId_id_idx` (`studentId`),
  CONSTRAINT `FK_studentId_id` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (2,'Math',5,7.3,6.15,2),(3,'Math',5,7.3,6.15,3),(4,'Math',5,7.3,6.15,4),(5,'Math',5,7.3,6.15,5),(6,'Math',5,7.3,6.15,6),(7,'Math',5,7.3,6.15,7),(8,'Math',5,7.3,6.15,8),(9,'Math',5,7.3,6.15,9),(10,'Math',5,7.3,6.15,10),(11,'Math',5,7.3,6.15,11),(12,'Math',5,7.3,6.15,12),(13,'Math',5,7.3,6.15,13),(14,'Math',5,7.3,6.15,14),(15,'Math',5,7.3,6.15,15),(16,'Math',5,7.3,6.15,16),(17,'Math',5,7.3,6.15,17),(18,'Math',5,7.3,6.15,18),(19,'Math',5,7.3,6.15,19),(20,'Math',5,7.3,6.15,20),(21,'Math',5,7.3,6.15,21),(22,'Math',5,7.3,6.15,22),(23,'Math',5,7.3,6.15,23),(24,'Math',5,7.3,6.15,24),(25,'Math',5,7.3,6.15,25),(26,'Math',5,7.3,6.15,26);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `birthDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2,'Bill','Hakins','2016-02-04'),(3,'John','Lock','2016-02-04'),(4,'John','Lock','2016-02-04'),(5,'John','Lock','2016-02-04'),(6,'John','Lock','2016-02-04'),(7,'John','Lock','2016-02-04'),(8,'John','Lock','2016-02-04'),(9,'John','Lock','2016-02-04'),(10,'John','Lock','2016-02-04'),(11,'John','Lock','2016-02-04'),(12,'John','Lock','2016-02-04'),(13,'John','Lock','2016-02-04'),(14,'John','Lock','2016-02-04'),(15,'John','Lock','2016-02-04'),(16,'John','Lock','2016-02-04'),(17,'John','Lock','2016-02-04'),(18,'John','Lock','2016-02-04'),(19,'John','Lock','2016-02-04'),(20,'John','Lock','2016-02-04'),(21,'John','Lock','2016-02-04'),(22,'John','Lock','2016-02-04'),(23,'John','Lock','2016-02-04'),(24,'John','Lock','2016-02-04'),(25,'John','Lock','2016-02-04'),(26,'John','Lock','2016-02-04');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-04  2:43:01
