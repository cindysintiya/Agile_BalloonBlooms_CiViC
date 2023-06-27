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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `comment_text` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'FLW2921','Flower Air Balloon','13','siagan7392','untuk kartunya apakah ada pilihan desain?','2021-01-28 03:11:59','2023-01-27 13:12:04'),(2,'MFS2921','Money Flower Snacks Balloon','16','tiramisu8888','snacks nya kita sediakan sendiri atau lgsg disediakan ya? boleh pilih snack apa aja yang kita mau?','2021-01-28 05:18:10','2023-01-27 13:12:04'),(3,'FLD2925','Balloon Flowers Doll','15','beatrice2940','bonekanya boleh custom bentuk tertentu nggak ya? soalnya saya pengen custom boneka bayi ^^\'','2021-02-10 16:20:49','2023-01-27 13:12:04'),(4,'FLW2923','Pot Flowers Balloon','11','novriadi7890','mantap !!!','2021-04-15 23:31:30','2023-01-27 13:12:04'),(5,'MFS2921','Money Flower Snacks Balloon','2','cindy0347','@tiramisu8888 hello bloomers, untuk snack akan kami sediakan sesuai permintaan pembeli, namun untuk pilihan dan budget snack tetap dari pihak pembeli ya, kami hanya menyediakan sesuai permintaan saja ^^ -cs','2021-04-28 20:10:03','2023-01-27 13:12:04'),(6,'MNC2920','Money Cake Flower','16','tiramisu8888','itu harga yang tertera sudah termasuk dengan uang yang dipakai? atau uangnya uang palu/ mainan ya kak?','2021-05-19 20:19:18','2023-01-27 13:12:04'),(7,'FLW2921','Flower Air Balloon','1','balloonblooms','@siagan7392 halo bloomers, ada ya, untuk pemilihan desain kartu bisa dikonfirmasi setelah kamu melakukan pemesanan ^^ -bb','2022-05-19 20:30:40','2023-01-27 13:12:04'),(8,'MNC2920','Money Cake Flower','16','tiramisu8888','maaf, maksud saya uang palsu, typo hihi','2022-05-19 20:31:40','2023-01-27 13:12:04'),(9,'BBC2111','Custom YourSelf','12','anton5301','boleh request design sesuai hampers yang saya mau gak?','2022-06-03 08:41:59','2023-01-27 13:12:04'),(10,'MFS2921','Money Flower Snacks Balloon','16','tiramisu8888','@cindy0347 owh begitu ya kak. makasihhh','2022-06-04 10:38:29','2023-01-27 13:12:04'),(11,'CCF2923','Chocolate Christmas Balloon','15','beatrice2940','luv it >v<','2022-08-10 19:12:41','2023-01-27 13:12:04'),(12,'BBC2111','Custom YourSelf','1','balloonblooms','@anton5301 halo bloomers, tergantung referensi yang bloomers kirimkan ya. jika ingin memakai foto referensi, bisa isikan \"SAYA PAKAI HAMPERS REFERENSI\" dibagian Note ACCESSORIES ya, setelah itu fotonya bisa dikirimkan ke Whatsapp +62 877-7646-2111 ^^ -bb','2022-09-01 09:39:28','2023-01-27 13:12:04'),(13,'FLD2925','Balloon Flowers Doll','3','victoria0515','@beatrice2940 hi bloomers, kalau untuk itu maaf banget kami tidak menyediakan jasa custom boneka, tapi kalau kakak mau custom sendiri ditempat boneka lalu dimasukkan ke hampersnya boleh banget lho kak ^^ -vb','2022-09-20 14:15:16','2023-01-27 13:12:04'),(14,'NDF2922','CNY Doll Flowers Red Pocket','14','sintiya1368','kyaaaa. neomu yeppeo ','2022-10-30 19:00:00','2023-01-27 13:12:04'),(15,'CDB2923','Chocolate Doll Balloon','15','beatrice2940','cantik bangett TT tapi agak kemahalan TT','2022-11-29 01:02:03','2023-01-27 13:12:04'),(16,'MNC2920','Money Cake Flower','14','sintiya1368','@tiramisu8888 bantu jawab, keknya itu asli deh kak. soalnya kan gak mungkin kita kasi hadiah isinya uang palsu TT','2023-01-15 20:13:47','2023-01-15 20:13:47'),(18,'MNC2920',NULL,'2','cindy0347','@sintiya1368 makasih atas bantuannya.\r @tiramisu8888 pakai uang asli ya kak. untuk nominal akhirnya akan disesuaikan dengan jumlah aksesoris dan tambahan lainnya ya ^^ -cs','2023-01-18 14:42:22','2023-01-27 13:12:04');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
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
