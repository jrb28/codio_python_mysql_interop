-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: w2la
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `links`
--

DROP DATABASE IF EXISTS w2la;
CREATE DATABASE w2la;
USE w2la;

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links` (
  `orig` varchar(2) NOT NULL,
  `dest` varchar(2) NOT NULL,
  `miles` float NOT NULL,
  PRIMARY KEY (`orig`,`dest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES ('A','B',677),('A','DE',449),('A','OK',504),('B','A',904),('B','LA',115),('B','SD',677),('D','LR',319),('D','SD',1358),('D','W',1340),('DE','A',449),('DE','B',904),('DE','SL',851),('LA','B',115),('LA','SD',120),('LR','D',319),('LR','OK',389),('LR','W',1012),('OK','A',504),('OK','LR',389),('OK','SL',489),('SD','D',1358),('SD','LA',120),('SL','DE',851),('SL','OK',498),('SL','W',878),('W','D',1340),('W','LR',1012),('W','SL',878);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loc`
--

DROP TABLE IF EXISTS `loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc` (
  `abbrev` varchar(2) NOT NULL,
  `location` varchar(100) NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  `miles_n` float NOT NULL,
  `miles_e` float NOT NULL,
  PRIMARY KEY (`abbrev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc`
--

LOCK TABLES `loc` WRITE;
/*!40000 ALTER TABLE `loc` DISABLE KEYS */;
INSERT INTO `loc` VALUES ('A','Albequerque NM',35.1039,-106.63,85.4381,646.465),('B','Barstow CA',34.8861,-117.022,70.3897,55.5841),('D','Dallas TX',32.7676,-96.7865,-76.0263,1217.93),('DE','Denver CO',39.739,-104.986,405.62,717.017),('LA','Los Angeles CA',33.8677,-117.997,0,0),('LR','Little Rock AR',34.7485,-92.287,60.8784,1455.43),('OK','Oklahoma City OK',35.4559,-97.4929,109.767,1159.24),('SD','San Diego CA',32.7244,-117.156,-79.0168,48.5458),('SL','St. Louis MO',38.5578,-90.3829,324.071,1523.03),('W','Williamsburg VA',37.2682,-76.7142,234.991,2269.51);
/*!40000 ALTER TABLE `loc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-20  8:47:46
