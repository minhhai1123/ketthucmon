-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: shopnuochoa
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (26,'20','5',1,'2023-12-21 09:06:28','2023-12-21 09:06:28'),(64,'1','7',1,'2024-01-06 23:49:58','2024-01-06 23:49:58'),(70,'30','14',2,'2024-05-25 06:55:19','2024-05-25 06:55:23'),(74,'29','14',2,'2024-05-25 07:12:44','2024-05-25 07:12:44'),(75,'29','12',2,'2024-05-25 07:12:49','2024-05-25 07:12:49');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `popular` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Nước Hoa Nam','nuochoanam','Nước Hoa Nam',0,1,'1702113207.avif',NULL,NULL,NULL,'2023-12-09 01:38:14','2023-12-09 02:20:47'),(2,'Nước Hoa Nữ','nuochoanu','Nước Hoa Nữ',0,1,'1702111220.png',NULL,NULL,NULL,'2023-12-09 01:40:20','2023-12-09 02:20:57'),(3,'Bộ Sưu Tập Nước Hoa Xuân Hè 2024','bosuutapxuanhe2024','Bộ Sưu Tập Nước Hoa Xuân Hè',0,1,'1703563842.jpg',NULL,NULL,NULL,'2023-12-25 21:08:38','2023-12-25 21:12:09'),(4,'Nước Hoa Unisex','nuochoaunisex','Nước Hoa Unisex',0,1,'1703564334.png',NULL,NULL,NULL,'2023-12-25 21:14:45','2023-12-25 21:18:54'),(5,'Bodycare','bodycare','Bodycare',1,0,'1704387756.png',NULL,NULL,NULL,'2024-01-04 10:02:36','2024-01-04 23:27:03');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (45,'2014_10_12_000000_create_users_table',1),(46,'2014_10_12_100000_create_password_resets_table',1),(47,'2019_08_19_000000_create_failed_jobs_table',1),(48,'2019_12_14_000001_create_personal_access_tokens_table',1),(49,'2023_11_08_004324_create_categories_table',1),(50,'2023_11_08_120637_create_products_table',1),(51,'2023_11_18_135430_create_carts_table',1),(52,'2023_11_26_075256_create_orders_table',1),(53,'2023_11_26_075657_create_order_items_table',1),(54,'2023_12_01_140252_create_wishlists_table',1),(55,'2023_12_11_110305_create_multiple_image_table',2),(56,'2023_12_11_110513_create_multiple_image_table',3),(57,'2023_12_12_012650_create_multiple_images_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiple_images`
--

DROP TABLE IF EXISTS `multiple_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multiple_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prod_id` int NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiple_images`
--

LOCK TABLES `multiple_images` WRITE;
/*!40000 ALTER TABLE `multiple_images` DISABLE KEYS */;
INSERT INTO `multiple_images` VALUES (15,5,'5_1703320684554.jpg','2023-12-23 01:38:04','2023-12-23 01:38:04'),(16,5,'5_1703320684726.jpg','2023-12-23 01:38:04','2023-12-23 01:38:04'),(17,5,'5_1703320684950.webp','2023-12-23 01:38:04','2023-12-23 01:38:04'),(18,5,'5_1703320684647.jpg','2023-12-23 01:38:04','2023-12-23 01:38:04'),(23,1,'1_1703321432661.png','2023-12-23 01:50:32','2023-12-23 01:50:32'),(24,1,'1_1703321432363.jpg','2023-12-23 01:50:32','2023-12-23 01:50:32'),(25,1,'1_1703321432428.png','2023-12-23 01:50:32','2023-12-23 01:50:32'),(26,1,'1_1703321432505.webp','2023-12-23 01:50:32','2023-12-23 01:50:32'),(27,3,'3_170332148321.jpg','2023-12-23 01:51:23','2023-12-23 01:51:23'),(28,3,'3_170332148367.jpg','2023-12-23 01:51:23','2023-12-23 01:51:23'),(29,3,'3_1703321483675.png','2023-12-23 01:51:23','2023-12-23 01:51:23'),(30,3,'3_1703321483775.webp','2023-12-23 01:51:23','2023-12-23 01:51:23'),(34,6,'6_1703410633711.webp','2023-12-24 02:37:13','2023-12-24 02:37:13'),(35,6,'6_1703410633833.webp','2023-12-24 02:37:13','2023-12-24 02:37:13'),(36,6,'6_1703410633569.jpg','2023-12-24 02:37:13','2023-12-24 02:37:13'),(37,6,'6_1703410633638.webp','2023-12-24 02:37:13','2023-12-24 02:37:13'),(38,10,'10_1703564917308.jpg','2023-12-25 21:28:37','2023-12-25 21:28:37'),(39,10,'10_1703564917849.jpg','2023-12-25 21:28:37','2023-12-25 21:28:37'),(40,10,'10_1703564917965.jpg','2023-12-25 21:28:37','2023-12-25 21:28:37'),(41,10,'10_1703564917106.jpg','2023-12-25 21:28:37','2023-12-25 21:28:37'),(42,11,'11_1703565378235.jpg','2023-12-25 21:36:18','2023-12-25 21:36:18'),(43,11,'11_1703565378390.jpg','2023-12-25 21:36:18','2023-12-25 21:36:18'),(44,11,'11_170356537857.jpg','2023-12-25 21:36:18','2023-12-25 21:36:18'),(45,11,'11_1703565378328.jpg','2023-12-25 21:36:18','2023-12-25 21:36:18'),(46,12,'12_1703841933607.jpg','2023-12-29 02:25:33','2023-12-29 02:25:33'),(47,12,'12_1703841933869.webp','2023-12-29 02:25:33','2023-12-29 02:25:33'),(48,12,'12_1703841933801.jpg','2023-12-29 02:25:33','2023-12-29 02:25:33'),(49,12,'12_1703841933752.webp','2023-12-29 02:25:33','2023-12-29 02:25:33'),(50,13,'13_1704387857444.jpg','2024-01-04 10:04:17','2024-01-04 10:04:17'),(51,13,'13_1704387857354.jpg','2024-01-04 10:04:17','2024-01-04 10:04:17'),(52,13,'13_1704387857615.jpg','2024-01-04 10:04:17','2024-01-04 10:04:17'),(53,13,'13_1704387857217.jpg','2024-01-04 10:04:17','2024-01-04 10:04:17'),(54,14,'14_1704388446658.png','2024-01-04 10:14:06','2024-01-04 10:14:06'),(55,14,'14_1704388446541.webp','2024-01-04 10:14:06','2024-01-04 10:14:06'),(56,14,'14_1704388446372.jpg','2024-01-04 10:14:06','2024-01-04 10:14:06'),(57,14,'14_1704388446305.jpg','2024-01-04 10:14:06','2024-01-04 10:14:06'),(62,15,'15_1704388996148.jpg','2024-01-04 10:23:16','2024-01-04 10:23:16'),(63,15,'15_1704388996719.jpg','2024-01-04 10:23:16','2024-01-04 10:23:16'),(64,15,'15_1704388996356.jpg','2024-01-04 10:23:16','2024-01-04 10:23:16'),(65,15,'15_1704388996536.webp','2024-01-04 10:23:16','2024-01-04 10:23:16');
/*!40000 ALTER TABLE `multiple_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,'1','3',6,1400000,'2023-12-10 18:16:30','2023-12-10 18:16:30'),(2,'1','2',1,1590000,'2023-12-10 18:16:30','2023-12-10 18:16:30'),(3,'2','2',6,1590000,'2023-12-12 01:03:13','2023-12-12 01:03:13'),(4,'2','3',1,1400000,'2023-12-12 01:03:13','2023-12-12 01:03:13'),(5,'3','5',4,1980000,'2023-12-16 21:16:01','2023-12-16 21:16:01'),(6,'3','7',1,1790000,'2023-12-16 21:16:01','2023-12-16 21:16:01'),(7,'4','6',7,2290000,'2023-12-16 22:13:40','2023-12-16 22:13:40'),(8,'4','3',3,1400000,'2023-12-16 22:13:40','2023-12-16 22:13:40'),(9,'5','2',1,1590000,'2023-12-17 00:40:26','2023-12-17 00:40:26'),(10,'6','2',1,1590000,'2023-12-17 00:48:16','2023-12-17 00:48:16'),(11,'7','7',1,1790000,'2023-12-17 20:21:50','2023-12-17 20:21:50'),(12,'8','5',1,1980000,'2023-12-21 09:05:46','2023-12-21 09:05:46'),(13,'9','2',1,1590000,'2023-12-24 02:46:57','2023-12-24 02:46:57'),(14,'10','5',4,1980000,'2023-12-27 22:42:12','2023-12-27 22:42:12'),(15,'11','5',1,1980000,'2024-01-01 19:22:04','2024-01-01 19:22:04'),(16,'11','6',1,2290000,'2024-01-01 19:22:04','2024-01-01 19:22:04'),(17,'12','1',1,2300000,'2024-01-01 19:52:31','2024-01-01 19:52:31'),(18,'13','1',1,2300000,'2024-01-01 20:03:31','2024-01-01 20:03:31'),(19,'14','1',1,2300000,'2024-01-01 20:04:32','2024-01-01 20:04:32'),(20,'15','1',1,2300000,'2024-01-01 21:41:01','2024-01-01 21:41:01'),(21,'16','1',1,2300000,'2024-01-01 21:41:44','2024-01-01 21:41:44'),(22,'17','1',1,2300000,'2024-01-04 07:59:35','2024-01-04 07:59:35'),(23,'18','3',1,1400000,'2024-01-04 23:03:27','2024-01-04 23:03:27'),(24,'21','15',2,420000,'2024-01-05 06:47:47','2024-01-05 06:47:47'),(26,'23','12',1,3100000,'2024-01-05 07:08:53','2024-01-05 07:08:53'),(27,'24','14',1,70000,'2024-01-05 07:56:27','2024-01-05 07:56:27'),(28,'25','15',2,420000,'2024-01-05 08:09:55','2024-01-05 08:09:55'),(29,'26','13',1,199000,'2024-01-05 08:11:21','2024-01-05 08:11:21'),(30,'27','1',1,2300000,'2024-01-05 09:44:18','2024-01-05 09:44:18'),(31,'28','1',1,2300000,'2024-01-05 09:44:53','2024-01-05 09:44:53'),(32,'29','12',5,3100000,'2024-01-05 18:25:10','2024-01-05 18:25:10'),(33,'29','6',1,2290000,'2024-01-05 18:25:10','2024-01-05 18:25:10'),(34,'30','1',2,2300000,'2024-01-06 01:11:08','2024-01-06 01:11:08'),(35,'31','11',3,850000,'2024-01-06 01:41:09','2024-01-06 01:41:09'),(36,'32','13',1,199000,'2024-01-06 04:10:50','2024-01-06 04:10:50'),(37,'33','14',1,70000,'2024-01-06 04:12:14','2024-01-06 04:12:14'),(38,'34','6',1,2290000,'2024-01-08 23:50:43','2024-01-08 23:50:43'),(39,'35','15',2,420000,'2024-05-25 06:34:20','2024-05-25 06:34:20'),(40,'35','14',2,70000,'2024-05-25 06:34:20','2024-05-25 06:34:20'),(41,'36','1',2,2300000,'2024-05-25 06:59:28','2024-05-25 06:59:28'),(42,'36','7',2,1790000,'2024-05-25 06:59:28','2024-05-25 06:59:28'),(43,'37','1',2,2300000,'2024-05-25 07:03:00','2024-05-25 07:03:00'),(44,'37','11',2,850000,'2024-05-25 07:03:00','2024-05-25 07:03:00');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'1','Trọng Nhân','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,9990000,2,'COD','user6734','2023-12-10 18:16:30','2023-12-31 05:13:19'),(2,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,10940000,2,'COD','user9076','2023-12-12 01:03:13','2024-01-06 03:21:41'),(3,'15','Trần','Trọng Nhân','trongnhan@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,9710000,1,'COD','user2610','2023-12-16 21:16:01','2023-12-31 05:22:57'),(4,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,20230000,0,'COD','user4983','2023-12-16 22:13:39','2023-12-16 22:13:39'),(6,'18','Trần','Trọng Thế','test@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,1590000,0,'COD','user3115','2023-12-17 00:48:16','2023-12-17 00:48:16'),(7,'19','Ngô','Tấn Lợi','loi@gmail.com','012648551','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,1790000,1,'COD','user2343','2023-12-17 20:21:50','2023-12-17 20:23:23'),(8,'20','Trần','Minh Trí','minhtri@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,1980000,-1,'COD','user2742','2023-12-21 09:05:46','2023-12-21 09:05:46'),(9,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,1590000,2,'COD','user1925','2024-01-05 02:46:57','2023-12-24 02:46:57'),(10,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,7920000,2,'COD','user8053','2023-12-26 22:42:12','2023-12-27 22:42:12'),(11,'23','Lâm','Ngọc Hân','ngochan@gmail.com','0662226526','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,4270000,0,'COD','user9932','2024-01-01 19:22:04','2024-01-01 19:22:04'),(12,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2300000,0,'COD','user2595','2024-01-01 19:52:31','2024-01-01 19:52:31'),(13,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2300000,0,'COD','user1394','2024-01-01 20:03:31','2024-01-01 20:03:31'),(14,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2300000,0,'COD','user1492','2024-01-01 20:04:32','2024-01-01 20:04:32'),(15,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2300000,0,'COD','user3478','2024-01-01 21:41:01','2024-01-01 21:41:01'),(16,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2300000,0,'COD','user6856','2024-01-01 21:41:43','2024-01-01 21:41:43'),(17,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2300000,0,'COD','user4478','2024-01-04 07:59:35','2024-01-04 07:59:35'),(18,'15','Trần','Trọng Nhân','trongnhan@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,1400000,0,'COD','user1583','2024-01-04 23:03:27','2024-01-04 23:03:27'),(19,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,840000,0,'COD','user6882','2024-01-05 06:28:51','2024-01-05 06:28:51'),(21,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,840000,0,'COD','user5599','2024-01-05 06:47:47','2024-01-05 06:47:47'),(23,'26','test','test1','user2@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,3100000,0,'COD','user6028','2024-01-05 07:08:53','2024-01-05 07:08:53'),(24,'26','test','test1','user2@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,70000,0,'COD','user8935','2024-01-05 07:56:27','2024-01-05 07:56:27'),(25,'26','test','test1','user2@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,840000,0,'COD','user9107','2024-01-05 08:09:55','2024-01-05 08:09:55'),(26,'26','test','test1','user2@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,199000,0,'COD','user7314','2024-01-05 08:11:21','2024-01-05 08:11:21'),(27,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2300000,1,'COD','user2272','2024-01-05 09:44:18','2024-05-25 06:58:05'),(28,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2300000,2,'COD','user4210','2024-01-05 09:44:53','2024-01-08 23:52:45'),(29,'27','test2','test2','test2@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,17790000,2,'COD','user5379','2024-01-05 18:25:10','2024-01-08 07:32:45'),(30,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,4600000,3,'VNP','user8593','2024-01-06 01:11:08','2024-01-06 01:11:08'),(31,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2550000,3,'VNP','14273251','2024-01-06 01:41:09','2024-01-06 01:41:09'),(32,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,199000,2,'COD','user8357','2024-01-06 04:10:50','2024-01-06 04:11:15'),(33,'1','Trần','Trần','user@gmail.com','0342903416','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,70000,2,'VNP','14273374','2024-01-06 04:12:14','2024-01-08 07:37:52'),(34,'28','Nguyễn','test','user3@gmail.com','0342903414','abc','xyz','Trà Vinh','Trà Vinh','Việt Nam',NULL,2290000,3,'VNP','14275995','2024-01-08 23:50:43','2024-01-08 23:50:43'),(35,'29','Trần Hoàng','Trần Hoàng','tranhoangnam19144@gmail.com','0123456789','TP Hồ Chí Minh, Việt Nam','TP Hồ Chí Minh, Việt Nam','Hồ Chí Minh','Hồ Chí Minh','Việt Nam',NULL,980000,1,'COD','user5783','2024-05-25 06:34:20','2024-05-25 06:34:58'),(36,'29','Trần Hoàng','Trần Hoàng','tranhoangnam19144@gmail.com','0123456789','TP Hồ Chí Minh, Việt Nam','TP Hồ Chí Minh, Việt Nam','Hồ Chí Minh','Hồ Chí Minh','Việt Nam',NULL,8180000,3,'VNP','14429435','2024-05-25 06:59:28','2024-05-25 06:59:28'),(37,'29','Trần Hoàng','Trần Hoàng','tranhoangnam19144@gmail.com','0123456789','TP Hồ Chí Minh, Việt Nam','TP Hồ Chí Minh, Việt Nam','Hồ Chí Minh','Hồ Chí Minh','Việt Nam',NULL,6300000,3,'VNP','14429441','2024-05-25 07:03:00','2024-05-25 07:03:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('user@gmail.com','$2y$10$UwKzO6JvqN85f8VjBR34i.vB67H1KMZpIS3H5J3lxwfIqmGx/ROA2','2024-05-25 06:26:25');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` bigint NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL DEFAULT '0',
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `trending` tinyint NOT NULL,
  `view_count` int DEFAULT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'Nước Hoa Nam Gucci','nuochoanamgucci','Nước Hoa Nam Gucci','<p><strong>Thương Hiệu: Gucci</strong></p>\r\n\r\n<p>Nồng n&agrave;n v&agrave; mạnh mẽ hệt như một cơn lốc cuốn lấy mọi thứ,&nbsp;Nước Hoa Gucci ch&iacute;nh l&agrave; từ kh&oacute;a khiến c&aacute;nh m&agrave;y r&acirc;u &ldquo;đăm chi&ecirc;u&rdquo; dạo gần đ&acirc;y. Sự kết hợp giữa những nốt trẻ trung, tươi m&aacute;t của nh&oacute;m cam chanh h&ograve;a quyện c&ugrave;ng m&ugrave;i hương ng&agrave;o ngạt, quyến rũ đến từ hoắc hương v&agrave; tuyết t&ugrave;ng gi&uacute;p &ldquo;nh&agrave;o nặn&rdquo; n&ecirc;n t&iacute;nh c&aacute;ch độc đ&aacute;o đầy mới mẻ của chai nước hoa n&agrave;y.</p>\r\n\r\n<p><strong>M&ugrave;i hương đặc trưng</strong></p>\r\n\r\n<p>Hương đầu:&nbsp;Cam Bergamot, Hoa violet, C&acirc;y b&aacute;ch</p>\r\n\r\n<p>Hương giữa:&nbsp;C&acirc;y thuốc l&aacute;, Hoa nh&agrave;i, Ti&ecirc;u đen</p>\r\n\r\n<p>Hương cuối:&nbsp;Hoắc hương, Hổ ph&aacute;ch, Trầm hương, Nhựa c&acirc;y Elemi, Da thuộc, Gỗ tuyết t&ugrave;ng</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:&nbsp;</strong><br />\r\nXịt v&agrave;o quần &aacute;o (tối m&agrave;u) hoặc tr&ecirc;n cơ thể ở những nơi c&oacute; mạch đập &nbsp;(khuỷnh tay, cổ tay, sau g&aacute;y, tr&ecirc;n ngực) kh&ocirc;ng ch&agrave; x&aacute;t sau khi xịt<br />\r\nBảo quản: Lưu giữ hộp trong suốt qu&aacute; tr&igrave;nh sử dụng, để ở những nơi c&oacute; nhiệt độ từ 18 độ C đến 25 độ C, tr&aacute;nh thay đổi đột ngột nhiệt độ nơi bảo quản nước hoa.</p>\r\n\r\n<p>&nbsp;</p>',2500000,2300000,'1702111716.webp',6,NULL,0,1,94,NULL,NULL,NULL,'2023-12-09 01:48:36','2024-05-25 07:11:23'),(2,1,'Nước Hoa Nam Armani','nuochoanamarmani','Nước Hoa Nam Armani','<p><strong>Thương hiệu:&nbsp;</strong>Giorgio Armani</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Ph&aacute;p</p>\r\n\r\n<p><strong>Năm ph&aacute;t h&agrave;nh:&nbsp;</strong>2022</p>\r\n\r\n<p><strong>Nh&oacute;m hương:&nbsp;</strong>Hương Biển, Hương Kho&aacute;ng Chất, Quả Qu&yacute;t Xanh</p>\r\n\r\n<p><strong>Phong c&aacute;ch:&nbsp;</strong>Nam t&iacute;nh, Hiện đại, Ph&oacute;ng kho&aacute;ng</p>\r\n\r\n<p>Hương đầu: Hương Biển, Qu&yacute;t xanh<br />\r\nHương giữa: X&ocirc; thơm, Oải hương, Chi Mỏ hạc<br />\r\nHương cuối: Hương Kho&aacute;ng, Cỏ Hương b&agrave;i, Hoắc hương<br />\r\n<br />\r\nMang trong m&igrave;nh hơi thở Thuỷ sinh, Giorgio Armani Acqua di Gio Eau de Parfum l&agrave; vẻ đẹp của một người đ&agrave;n &ocirc;ng c&aacute; t&iacute;nh, hiện đại v&agrave; c&oacute; đ&ocirc;i phần &quot;ướt &aacute;t&quot;. Ra mắt từ năm 2022, ấn phẩm đươc sự đ&oacute;n nhận nồng nhiệt của giới mộ điệu, bởi đ&acirc;y kh&ocirc;ng chỉ l&agrave; một sự kế thừa v&agrave; ph&aacute;t huy DNA của Acqua di Gio nguy&ecirc;n bản, m&agrave; c&ograve;n l&agrave; một phi&ecirc;n bản ho&agrave;n chỉnh của sự giao thoa giữa giữa bản gốc v&agrave; bản Essenza.<br />\r\n<br />\r\nẤn phẩm l&agrave; sự m&ocirc; tả về một kh&ocirc;ng gian rộng lớn v&agrave; v&ocirc; tận như đang đắm m&igrave;nh v&agrave;o biển cả, kh&ocirc;ng giới hạn, kh&ocirc;ng ch&uacute;t &aacute;p lực v&agrave; kh&ocirc;ng c&oacute; sự hạn chế. Hương thơm của Kho&aacute;ng chất kết hợp c&ugrave;ng Qu&yacute;t xanh, dịu ngọt nhưng cực tươi m&aacute;t, lại c&agrave;ng nhấn mạnh vẻ đẹp của biển cả. C&agrave;ng về sau, hương thơm c&agrave;ng nồng ấm, hoang dại của X&ocirc; thơm lẫn trong c&aacute;i kết cấu phức tạp của Chi Mỏ hạc, tạo n&ecirc;n c&aacute;i trầm lắng b&ecirc;n trong mỗi qu&yacute; &ocirc;ng.<br />\r\n<br />\r\nĐể rồi người đ&agrave;n &ocirc;ng ấy quyến luyến mọi c&ocirc; g&aacute;i bằng sự ph&oacute;ng kho&aacute;ng, lơ đ&atilde;ng của m&igrave;nh. Thoảng hoặc theo đ&oacute; ch&uacute;t Cỏ Hương b&agrave;i, ch&uacute;t Hoắc hương nồng đượm hương Gỗ đặc trưng. Những nốt hương trong Giorgio Armani Acqua di Gio EDP đan xen tựa hệt cảm x&uacute;c biến chuyển của một g&atilde; trai hiện đại, v&agrave; b&ecirc;n trong họ l&agrave; những phần t&acirc;m hồn tươi tắn, ph&oacute;ng kho&aacute;ng.</p>',1690000,1590000,'1702113873.jpeg',0,NULL,0,1,40,NULL,NULL,NULL,'2023-12-09 02:24:33','2024-05-25 06:46:03'),(3,1,'Nước Hoa Nam Nautica','nuochoanamnautica','Nước Hoa Nam Nautica','<p>Thương Hiệu: Nautica</p>',1600000,1400000,'1702113957.webp',0,NULL,0,1,13,NULL,NULL,NULL,'2023-12-09 02:25:57','2024-01-05 09:33:51'),(5,2,'Nước Hoa Nữ E.Arden White Tea','nuochoanue.arden','Nước Hoa Nữ E.Arden White Tea','<p>Thương Hiệu: E.Arden</p>',2200000,1980000,'1702292190.jpg',0,NULL,0,1,69,NULL,NULL,NULL,'2023-12-10 01:40:44','2024-05-25 06:37:48'),(6,2,'Nước Hoa Nữ Chloe','nuochoanuchloe','Nước Hoa Nữ Chloe','<p>Thương Hiệu: Chloe</p>',2500000,2290000,'1702197942.webp',0,NULL,0,1,40,NULL,NULL,NULL,'2023-12-10 01:45:42','2024-05-25 07:02:20'),(7,2,'Nước Hoa Nữ Lancome','nuochoanu_lancome','Nước Hoa Nữ Lancome','<p>Thương Hiệu: Lancome</p>',1900000,1790000,'1702294089.jpg',6,NULL,0,1,45,NULL,NULL,NULL,'2023-12-11 04:28:09','2024-05-25 06:59:28'),(10,3,'Nước Hoa Nữ Dior Miss Rose','nuochoanudiormissrose','Nước Hoa Nữ Dior Miss Rose','<p>Nước Hoa Nữ Dior Miss Rose</p>',2900000,2700000,'1703564917.jpg',10,NULL,0,1,17,NULL,NULL,NULL,'2023-12-25 21:28:37','2023-12-29 19:58:46'),(11,4,'Nước Hoa Unisex Calvin Klein','nuochoaunisex','Nước Hoa Unisex Calvin Klein','<p>Nước Hoa Unisex Calvin Klein</p>',1000000,850000,'1703565378.jpg',5,NULL,0,1,24,NULL,NULL,NULL,'2023-12-25 21:36:18','2024-05-25 07:03:00'),(12,3,'Nước Hoa Nữ Chanel','nuochoanuchanel','Nước Hoa Nữ Chanel','<p>Nước Hoa Nữ Chanel</p>',3500000,3100000,'1703841933.webp',3,NULL,0,1,11,NULL,NULL,NULL,'2023-12-29 02:25:33','2024-05-25 07:12:47'),(13,5,'Tinh Dầu Nước Hoa Pháp','tinhdaunuochoaphap','Tinh Dầu Nước Hoa Pháp','<p>Tinh Dầu Nước Hoa Ph&aacute;p</p>',250000,199000,'1704387857.jpg',8,NULL,0,1,14,NULL,NULL,NULL,'2024-01-04 10:04:17','2024-05-25 06:39:44'),(14,5,'Lăn Khử Mùi ROMANO','lankhumuiromano','Lăn Khử Mùi ROMANO','<p>Lăn Khử M&ugrave;i ROMANO</p>',75000,70000,'1704388446.jpg',6,NULL,0,1,18,NULL,NULL,NULL,'2024-01-04 10:14:06','2024-05-25 07:12:41'),(15,5,'Sữa Dưỡng Thể Australian Bodycare Body Lotion','suaduongthebodylotion','Sữa Dưỡng Thể Australian Bodycare Body Lotion','<p>Sữa Dưỡng Thể Australian Bodycare Body Lotion</p>',480000,420000,'1704389038.webp',4,NULL,0,1,13,NULL,NULL,NULL,'2024-01-04 10:21:42','2024-05-25 06:55:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (29,'Trần Hoàng','tranhoangnam19144@gmail.com',NULL,'$2y$10$Lg35CjQgRGMZeC40MB4Lku4IVDvBI/BrKrZuim/wUoonWSLdVLsjK','Trần Hoàng','0123456789','TP Hồ Chí Minh, Việt Nam','TP Hồ Chí Minh, Việt Nam','Hồ Chí Minh','Hồ Chí Minh','Việt Nam',NULL,0,NULL,'2024-05-25 06:27:38','2024-05-25 06:34:20'),(30,'admin','admin@gmail.com',NULL,'$2y$10$xyzOW/chaKGfyIajxJsdguN5p3tbq1fbV5P..fKQBkRtdzf9uVpyi','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-05-25 06:29:06','2024-05-25 06:29:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (6,'20','5','2023-12-21 09:06:25','2023-12-21 09:06:25'),(19,'15','3','2024-01-04 23:01:51','2024-01-04 23:01:51'),(27,'30','1','2024-05-25 07:01:27','2024-05-25 07:01:27');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20 13:08:02
