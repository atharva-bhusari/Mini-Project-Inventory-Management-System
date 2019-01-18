-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'IN PROCESS',
  `price` float NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `prod_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `prod_id` (`prod_id`),
  KEY `user_name` (`user_name`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`prod_id`) REFERENCES `inventory_info` (`prod_id`) ON DELETE CASCADE,
  CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`user_name`) REFERENCES `info` (`user_name`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5135524 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (5135510,'A4TECH HS-5P',6,'IN PROCESS',26676,'buzzi',58499),(5135515,'A-SHUFFLE WHITE',2,'COMPLETED',1750,'samy',58496),(5135516,'A4TECH HS-5P',7,'IN PROCESS',31122,'samy',58499),(5135518,'A4TECH MP510 CARRY BAG',1,'IN PROCESS',5875.36,'buzzi',58504),(5135520,'A4TECH AH-630',7,'IN PROCESS',38248,'abcd',58497),(5135522,'A4TECH AH-630',5,'IN PROCESS',27320,'buzzi',58497),(5135523,'ABILITY OFFICE QUICKSTART TUTORIAL',6,'IN PROCESS',4158,'buzzi',58513);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-24  0:18:44
