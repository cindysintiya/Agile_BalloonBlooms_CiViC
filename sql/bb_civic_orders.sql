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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` int DEFAULT NULL,
  `balloon_type` varchar(255) DEFAULT NULL,
  `balloon_color` varchar(255) DEFAULT NULL,
  `ribbon_type` varchar(255) DEFAULT NULL,
  `ribbon_color` varchar(255) DEFAULT NULL,
  `accessories` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `cellophane` varchar(255) DEFAULT NULL,
  `card_text` varchar(255) DEFAULT NULL,
  `portrait_art` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_payment` varchar(255) DEFAULT NULL,
  `user_rek` varchar(255) DEFAULT NULL,
  `user_date` datetime DEFAULT NULL,
  `voucher` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'New Order',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'tiramisu8888','FLW2921','Flower Air Balloon',149000,'Original','Red','Satin Ribbon','Gold',NULL,'Yang rapi ya','Green Mint',NULL,NULL,'Tira Mi Su','081234567890','Jalan Apa Aja Deh','COD',NULL,'2021-08-13 00:00:00',NULL,'Finished','2021-08-10 13:17:41','2021-08-14 14:16:31'),(2,'beatrice2940','CFB2923','Chocolate Flowers Balloon',189000,'Heart-Shaped','Rose-Gold','Grossgrain Ribbon','Red','[\"Doll-Bear\",\"Flowers\"]','Mau boneka beruang yang pakai baju dress sama berpita','Pink','Happy Birthday Mama','beatrice29401578639954918.jpg','Beatrice Victoria','08987654321','Jalan Bunga-Bunga','E-Banking','098765-Victoria','2021-08-20 00:00:00','AG672902','Ready to Get','2021-08-15 13:22:09','2023-01-27 14:43:27'),(3,'sintiya1368','MNF2925','Money Flowers',179000,'Heart-Shaped','Gold','Grossgrain Ribbon','Rose-Gold','[\"Doll-Bear\",\"Flowers\",\"Snack\",\"Money\"]','Semua mauuuuu','Brown',NULL,'sintiya13688964591875465.jpg','Sintiya Cindy','09282392801','Gang Barat No 19203','E-Wallet','01300108208-Cindy S OVO','2021-09-15 00:00:00',NULL,'New Order','2021-09-08 23:51:10','2023-01-27 14:43:27'),(4,'tiramisu8888','BBC2111','Custom YourSelf',0,'Original','Gold','Satin Ribbon','Gold','[\"Doll-Bear\",\"Snack\"]','Snacksnya : pocky, chiki, taro, ting-ting','Green Mint','hbd.',NULL,'Tira Misu','0890902384992','Jalan Kue No 0347','Virtual Transfer','02392039022039-Tifanny','2021-10-21 00:00:00',NULL,'Finished','2021-10-20 10:52:32','2021-10-23 15:29:00'),(5,'anton5301','CDB2923','Chocolate Doll Balloon',250000,'Original','Red','Satin Ribbon','Rose-Gold','\"Snacks\"',NULL,'Blue',NULL,'anton53013695812289619.jpg','Anton Ius','03920930229','Jln Bahagia ','E-Wallet','39903904903-Gopay Antonius','2021-10-07 00:00:00','BB123456','Cancelled','2021-10-01 13:10:10','2023-01-27 14:39:06'),(6,'novriadi7890','NYB2923','Chinese New Year Balloons',109000,'Heart-Shaped','Gold','Grossgrain Ribbon','Red','\"Money\"','1 juta','Red','-','novriadi78909543186734457.jpg','Novri Adi','082923399281','Jalan Buah Gang Apel No 1','COD',NULL,'2021-10-20 00:00:00',NULL,'Finished','2021-10-12 18:00:13','2023-01-27 14:43:27'),(7,'siagan7392','CDB2923','Chocolate Doll Balloon',250000,'Original','Rose-Gold','Satin Ribbon','Red',NULL,NULL,'Green Mint',NULL,NULL,'Siagan','08392382800','pick up sendiri ya','E-Banking','13939209-Novri Siagan','2021-12-31 00:00:00',NULL,'New Order','2021-12-30 09:19:38','2022-01-02 19:20:21'),(8,'tiramisu8888','FLT2924','Flowers Tiny Air Balloon',129000,'Heart-Shaped','Gold','Grossgrain Ribbon','Rose-Gold','[\"Flowers\",\"Money\"]','bunga mawar + 888rb','Nude','Kiong Hi Huat Cai','tiramisu88883966954317296.jpg','Tira Mi Su','083928390039','mau pick up sendiri','COD',NULL,'2022-01-13 00:00:00',NULL,'Finished','2022-01-09 03:10:47','2023-01-27 14:43:27'),(9,'siagan7392','BBC2111','Custom YourSelf',0,'Heart-Shaped','Rose-Gold','Grossgrain Ribbon','Gold','\"Doll-Bear\"','Ganti boneka kucing kalau ada, warna oren','Purple','Nyaong. Happiest Birthday 4 U','siagan73924685660191845.jpg','Siagan','08392839201','Jlan Aceh Gang Medan No 0515','COD',NULL,'2022-09-28 00:00:00','SK001920','Ready to Get','2022-09-23 13:55:42','2023-01-27 14:43:27'),(10,'novriadi7890','BBC2111','Custom YourSelf',0,'Heart-Shaped','Rose-Gold','Satin Ribbon','Rose-Gold','[\"Snack\",\"Money\"]',NULL,'Purple',NULL,'novriadi78904893659173454.jpg','Novriadi Siagan','082938239106','Jalan Buah Gang Apel No 1','E-Banking','0392032090-Novriadi Siagan','2022-09-30 00:00:00','SK001920','Cancelled','2022-09-27 21:29:47','2023-01-27 14:43:27'),(11,'beatrice2940','SNA2921','Snacks Air Balloon',179000,'Original','Gold','Grossgrain Ribbon','Gold','[\"Doll-Bear\",\"Money\"]','Boneka custom bentuk anime :)','Pink','Konnichiwa','beatrice29407933287346511.jpg','Bea Trice Peace','092240839202','pick up','COD',NULL,'2022-10-16 00:00:00',NULL,'New Order','2022-10-09 10:46:57','2023-01-27 14:43:27'),(12,'tiramisu8888','NDF2922','CNY Doll Flowers Red Pocket',209000,'Original','Red','Satin Ribbon','Rose-Gold',NULL,NULL,'Red',NULL,'tiramisu88887823551984635.jpg','Misu','039303023931','Jalan Utara Gang Selatan No 293','Virtual Transfer','28480202-Misu','2022-10-16 00:00:00',NULL,'Cancelled','2022-10-15 14:06:00','2023-01-27 14:43:27'),(13,'tiramisu8888','MNF2925','Money Flowers',179000,'Original','Rose-Gold','Satin Ribbon','Red','[\"Doll-Bear\",\"Flowers\",\"Snack\",\"Money\"]','Semua mauuuuuuuuuu','Nude','Nikmatin Self-Reward ku','tiramisu88881368952183672.jpg','Tira Miss U','0829893801','Jalan Anggur No 892','E-Banking','93829830-Tira','2022-12-30 00:00:00','VB330203','On Proccessed','2022-12-14 14:06:00','2023-01-27 14:43:27'),(14,'beatrice2940','CSB2922','Rudolf Christmas Balloon',199000,'Original','Rose-Gold','Grossgrain Ribbon','Gold','[\"Doll-Bear\",\"Snack\",\"Money\"]',NULL,'Blue',NULL,NULL,'Victo Ria','04729120281','Jalan Lele Gang Ikan No 3839','E-Wallet','0839482053-Victoria B Dana','2023-12-31 00:00:00','CS028303','New Order','2022-12-22 01:08:26','2023-01-05 23:16:37'),(15,'tiramisu8888','FLW2923','Pot Flowers Balloon',139000,'Heart-Shaped','Red','Grossgrain Ribbon','Gold','[\"Flowers\",\"Snack\"]','bunga matahari ya. snack pocky bentuk love','Purple','Luv you',NULL,'Tira aja','02839020013','Jalan Bunga-bunga No 21111','COD',NULL,'2023-01-19 00:00:00',NULL,'On Proccessed','2023-01-15 15:06:00','2023-01-22 00:17:36');
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

-- Dump completed on 2023-01-28 20:41:01
