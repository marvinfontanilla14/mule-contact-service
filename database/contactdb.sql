-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: contact
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL,
  `street` varchar(100) NOT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(45) NOT NULL,
  `date_time_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_time_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contactIdFK_idx` (`contact_id`),
  CONSTRAINT `contactIdFK` FOREIGN KEY (`contact_id`) REFERENCES `identification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'Home_test1','123A','street','21 unit','magic city','US State','1234','2019-08-28 13:06:05','2019-08-29 09:23:03',1),(2,1,'Work','123A1','street12','21 unit13','magic city14','US State15','12346','2019-08-28 20:46:42','2019-08-29 12:31:18',1),(17,1,'MUNIT_TEST_DATA','MUNIT_TEST_DATA','MUNIT_TEST_DATA','MUNIT_TEST_DATA','MUNIT_TEST_DATA','MUNIT_TEST_DATA','1234','2019-08-29 09:23:00','2019-08-29 13:01:18',1),(18,1,'Home','111','222','333','44','555','777','2019-08-29 12:26:42','2019-08-29 12:26:42',NULL),(19,33,'Home','1','2','3','4','5','6','2019-08-29 12:32:27','2019-08-29 12:32:27',NULL),(20,33,'Work','11','22','33','44','55','66','2019-08-29 12:34:34','2019-08-29 12:34:34',NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication`
--

DROP TABLE IF EXISTS `communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `value` varchar(100) NOT NULL,
  `preferred` tinyint(1) DEFAULT NULL,
  `date_time_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_time_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comIdenContactIdFk_idx` (`contact_id`),
  CONSTRAINT `comIdenContactIdFk` FOREIGN KEY (`contact_id`) REFERENCES `identification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
INSERT INTO `communication` VALUES (1,1,'Mobile','+1019101911_test1',1,'2019-08-28 15:02:53','2019-08-29 09:23:03',1),(2,1,'Mobile1','+10191019111',0,'2019-08-28 15:03:18','2019-08-28 21:07:36',NULL),(15,1,'Mobile','MUNIT_TEST_DATA',1,'2019-08-29 09:23:01','2019-08-29 09:23:01',NULL),(16,33,'Phone','111',0,'2019-08-29 13:00:38','2019-08-29 13:00:57',NULL),(17,33,'Phone','aaa',1,'2019-08-29 13:01:11','2019-08-29 13:01:40',1);
/*!40000 ALTER TABLE `communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identification`
--

DROP TABLE IF EXISTS `identification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date_time_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_time_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identification`
--

LOCK TABLES `identification` WRITE;
/*!40000 ALTER TABLE `identification` DISABLE KEYS */;
INSERT INTO `identification` VALUES (1,'Marvin_test1','Fontanilla','1993-03-04','M','Integration Developer','2019-08-27 21:27:45','2019-08-29 09:23:02',1),(2,'Marvin','Fontanilla','1993-03-04','M','Integration Developer','2019-08-27 21:52:01','2019-08-29 01:57:32',1),(3,'Marvin','Fontanilla','1993-03-04','M','Integration Developer','2019-08-27 21:53:27','2019-08-29 01:59:23',1),(4,'Marvin','Fontanilla','1993-03-04','M','Integration Developer','2019-08-27 22:12:38','2019-08-29 01:59:30',1),(5,'Marvin','Fontanilla','1993-03-04','M','Integration Developer','2019-08-27 22:13:46','2019-08-29 02:00:07',1),(6,'Marvin','Fontanilla','1993-03-04','M','Integration Developer','2019-08-27 23:17:29','2019-08-27 23:17:29',NULL),(7,'Marvin1','Fontanilla','1993-03-04','M','Integration Developer','2019-08-27 23:20:37','2019-08-27 23:20:37',NULL),(32,'MUNIT_TEST_DATA','MUNIT_TEST_DATA','1993-03-04','M','Integration Developer','2019-08-29 09:23:00','2019-08-29 09:23:00',NULL),(33,'adasd','asdasd','1990-11-11','M','asdas','2019-08-29 09:29:01','2019-08-29 09:29:01',NULL),(34,'adas13','asdas2','1991-11-11','F','asda1','2019-08-29 09:43:44','2019-08-29 10:56:41',1),(35,'ngak2A','ngak2A','1990-11-11','M','ngak2A','2019-08-29 09:47:18','2019-08-29 09:56:22',NULL);
/*!40000 ALTER TABLE `identification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-29 18:43:35
