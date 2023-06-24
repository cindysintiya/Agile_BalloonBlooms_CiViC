-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bb_civic
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT 'Custom',
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int DEFAULT '0',
  `include` varchar(255) DEFAULT '[]',
  `likes` varchar(255) DEFAULT '[]',
  `status` tinyint DEFAULT '1',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Gift Hamper','FLW2921','Flower Air Balloon',149000,'[\"Satin Ribbon & Organza Ribbon\",\"Flowers\",\"Card\",\"Balloon Hamper (Circular Pot/ Narrowed Pot)\"]','[\"novriadi7890\"]',1,'2023-01-22 20:43:52','2023-01-27 04:20:14'),(2,'Gift Hamper','SNA2921','Snacks Air Balloon',179000,'[\"Satin Ribbon & Grosgrain Ribbon\", \"Snacks\", \"Card\", \"Balloon Hamper (Circular Pot/ Narrowed Pot)\"]','[\"beatrice2940\",\"siagan7392\"]',1,'2023-01-22 20:45:20','2023-01-23 15:16:29'),(3,'Gift Hamper','MFS2921','Money Flower Snacks Balloon',199000,'[\"Money Flowers\",\"Snacks\",\"Card\",\"2 Additional Shaped Balloons\",\"Balloon Hamper\"]','[]',1,'2023-01-22 21:24:43','2023-01-27 15:17:34'),(4,'Gift Hamper','MFL2921','Money Flowers Air Balloon',199000,'[\"Money Flowers\",\"Main Flower\",\"Satin Ribbon & Organza Ribbon\",\"Card\",\"[Optional Customized] Art Potrait\"]','[\"sintiya1368\"]',0,'2023-01-22 21:24:43','2023-01-26 07:10:32'),(5,'Gift Hamper','FLS2922','Balloon Flowers',139000,'[\"Flowers\", \"Card\", \"Balloon Hamper (Circular Pot/ Narrowed Pot)\"]','[\"siagan7392\", \"novriadi7890\"]',0,'2023-01-22 21:24:43','2023-01-22 21:24:43'),(6,'Gift Hamper','FLT2924','Flowers Tiny Air Balloon',129000,'[\"Satin Ribbon\", \"Flowers\", \"Balloon Hamper\", \"[Optional Customized] Art Potrait\"]','[\"beatrice2940\"]',1,'2023-01-22 21:24:43','2023-01-27 04:20:52'),(7,'Gift Hamper','DLB2921','Doll Air Balloon',199000,'[\"Satin Ribbon\",\"Doll\",\"Balloon Hamper (Circular Pot/ Narrowed Pot)\"]','[\"novriadi7890\",\"anton5301\"]',1,'2023-01-22 16:14:49','2023-01-27 15:16:58'),(8,'Gift Hamper','CFB2923','Chocolate Flowers Balloon',188000,'[\"Flowers\",\"Shaped Balloon\",\"Chocolate Snacks\",\"Ribbon\",\"Card\"]','[\"sintiya1368\",\"ahaa1234\"]',1,'2023-01-23 13:20:20','2023-01-27 04:20:37'),(9,'Gift Hamper','FLW2923','Pot Flowers Balloon',139000,'[\"Organza Ribbon\",\"Flowers\",\"Card\",\"Balloon Hamper\",\"Bonus Optional Shaped Balloon\"]','[\"novriadi7890\"]',0,'2023-01-23 13:23:00','2023-01-27 15:17:41'),(10,'Gift Bouquet','FLB2925','Flowers Balloon',129000,'[\"Satin Ribbon\",\"Flowers\",\"Flower Wrapping Cellophane\"]','[\"anton5301\", \"novriadi7890\"]',1,'2023-01-23 13:24:46','2023-01-23 21:00:44'),(11,'Gift Bouquet','FLD2925','Balloon Flowers Doll',169000,'[\"Satin Ribbon\",\"Doll (Bear)\",\"Flowers\",\"Flower Wrapping Cellophane\"]','[\"siagan7392\",\"novriadi7890\",\"anton5301\"]',1,'2023-01-23 13:51:14','2023-01-26 12:19:25'),(12,'Gift Bouquet','MNF2925','Money Flowers',179000,'[\"Flowers\", \"Satin Ribbon & Organza Ribbon\", \"Money\", \"Card\", \"Flower Wrapping Cellophane\"]','[]',1,'2023-01-23 21:00:44','2023-01-23 21:00:44'),(13,'Gift Cake','MNC2920','Money Cake Flower',219000,'[\"Money (clients request)\", \"Satin Ribbon\", \"Main Flower\"]','[\"sintiya1368\"]',1,'2023-01-23 21:00:44','2023-01-26 01:35:19'),(14,'Gift Cake','MFL2920','Money Flowers',209000,'[\"Main Flower\", \"Money (clients request)\", \"Flowers\", \"[Optional Customized] Art Potrait\", \" Balloon Hamper\"]','[]',1,'2023-01-23 21:00:44','2023-01-23 21:00:44'),(15,'Special Event','CDB2923','Chocolate Doll Balloon',250000,'[\"Doll\", \"Chocolate\", \"Shaped Balloon\", \"Artificial Flowers\", \"Satin Ribbon\", \"Balloon Hamper\"]','[\"novriadi7890\"]',1,'2023-01-23 21:00:44','2023-01-23 21:00:44'),(16,'Special Event','DFB2923','Doll Flowers Balloon',159000,'[\"Flowers\",\"Shaped Balloon\",\"Doll\",\"Balloon Hamper\"]','[\"anton5301\",\"tiramisu8888\"]',1,'2023-01-23 21:00:44','2023-01-27 15:17:09'),(17,'Special Event','CCF2923','Chocolate Christmas Balloon',199000,'[\"Christmas Balloon\", \"Ribbon\", \"Chocolates\", \"Flowers\"]','[]',1,'2023-01-23 21:00:44','2023-01-23 21:00:44'),(18,'Special Event','CSB2922','Rudolf Christmas Balloon',199000,'[\"Doll (Rudolph)\", \"Satin Ribbon\", \"Balloon Hamper\"]','[\"novriadi7890\", \"sintiya1368\"]',0,'2023-01-23 21:00:44','2023-01-23 21:00:44'),(19,'Special Event','NDF2922','CNY Doll Flowers Red Pocket',209000,'[\"Doll (Shio)\", \"Flowers\", \"Red Pockets\", \"Satin Ribbon\", \"Balloon Hamper\"]','[\"sintiya1368\", \"beatrice2940\"]',1,'2023-01-23 21:00:44','2023-01-23 21:00:44'),(20,'Special Event','NYB2923','Chinese New Year Balloons',109000,'[\"Satin Ribbon\", \"Ribbon\", \"3 to 5 latex balloon\"]','[\"beatrice2940\",\"anton5301\"]',0,'2023-01-23 21:00:44','2023-01-26 12:18:31'),(21,'Custom','BBC2111','Custom YourSelf',0,'[\"-\"]','[]',1,'2023-01-23 21:00:44','2023-01-23 21:00:44');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-28 20:41:01
