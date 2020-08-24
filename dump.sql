-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lumen-api
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (24,'default','{\"uuid\":\"8b2dce36-0ac5-4161-810c-41ef3f14ba71\",\"displayName\":\"App\\\\Jobs\\\\NotifyPaymentJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\NotifyPaymentJob\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\NotifyPaymentJob\\\":8:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}',0,NULL,1598288332,1598288332),(25,'default','{\"uuid\":\"1a277fea-788a-4df6-b63a-d68d9b89b5e0\",\"displayName\":\"App\\\\Jobs\\\\NotifyPaymentJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\NotifyPaymentJob\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\NotifyPaymentJob\\\":8:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}',0,NULL,1598302702,1598302702),(26,'default','{\"uuid\":\"7bb1886d-90fa-4ae9-b3a4-583aab709800\",\"displayName\":\"App\\\\Jobs\\\\NotifyPaymentJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\NotifyPaymentJob\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\NotifyPaymentJob\\\":8:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}',0,NULL,1598303099,1598303099);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2020_08_24_142117_create_jobs_table',1),(2,'2020_08_24_164224_create_failed_jobs_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_status`
--

DROP TABLE IF EXISTS `payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` char(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_status`
--

LOCK TABLES `payment_status` WRITE;
/*!40000 ALTER TABLE `payment_status` DISABLE KEYS */;
INSERT INTO `payment_status` VALUES (1,'Pendente','Aguardando aprovação'),(2,'Aprovado','Pagamento processado'),(3,'Recusado','Pagamento Recusado'),(4,'Concluído','Transação concluída');
/*!40000 ALTER TABLE `payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payer` int(11) NOT NULL,
  `payee` int(11) NOT NULL,
  `value` double NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `Payer` (`payer`),
  KEY `Payee` (`payee`),
  KEY `Status` (`status`),
  CONSTRAINT `Payee` FOREIGN KEY (`payee`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Payer` FOREIGN KEY (`payer`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Status` FOREIGN KEY (`status`) REFERENCES `payment_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (3,3,1,0,4,'2020-08-24 20:03:54','2020-08-24 01:33:43'),(4,3,2,0,4,'2020-08-24 20:09:15','2020-08-24 01:33:43'),(5,3,2,100,4,'2020-08-24 20:09:47','2020-08-24 03:07:41'),(6,3,2,99,4,'2020-08-24 20:11:05','2020-08-24 03:50:43'),(7,3,2,99,4,'2020-08-24 20:13:30','2020-08-24 03:51:03'),(8,3,2,99,2,'2020-08-24 20:15:20','2020-08-24 03:51:12'),(9,3,2,99,4,'2020-08-24 20:20:09','2020-08-24 03:57:21'),(10,3,2,99,4,'2020-08-24 20:20:20','2020-08-24 04:34:45'),(11,3,2,99,4,'2020-08-24 20:22:04','2020-08-24 04:49:45'),(12,3,1,99,1,'2020-08-24 04:50:06','2020-08-24 04:50:06'),(13,2,1,99,4,'2020-08-24 20:27:33','2020-08-24 04:55:10'),(14,3,2,100,4,'2020-08-24 20:29:59','2020-08-24 05:03:22'),(15,3,2,100,4,'2020-08-24 20:33:10','2020-08-24 06:08:10'),(16,3,2,99,1,'2020-08-24 06:43:30','2020-08-24 06:43:30'),(17,3,2,99,1,'2020-08-24 06:56:54','2020-08-24 06:56:54'),(18,3,2,99,1,'2020-08-24 07:01:22','2020-08-24 07:01:22'),(19,3,2,99,1,'2020-08-24 07:09:36','2020-08-24 07:09:36'),(20,3,2,99,1,'2020-08-24 07:10:46','2020-08-24 07:10:46'),(21,3,2,8000.1,1,'2020-08-24 10:09:11','2020-08-24 10:09:11'),(22,3,2,7000.1,1,'2020-08-24 10:13:21','2020-08-24 10:13:21'),(23,3,2,1.1,1,'2020-08-24 10:17:48','2020-08-24 10:17:48'),(24,3,5,1.1,1,'2020-08-24 10:18:13','2020-08-24 10:18:13'),(25,3,5,10,1,'2020-08-24 10:18:42','2020-08-24 10:18:42'),(26,3,2,10,1,'2020-08-24 10:50:44','2020-08-24 10:50:44'),(27,3,2,10,1,'2020-08-24 11:22:30','2020-08-24 11:22:30'),(28,3,2,10,1,'2020-08-24 11:22:49','2020-08-24 11:22:49'),(29,3,2,10,1,'2020-08-24 11:36:53','2020-08-24 11:36:53'),(30,3,2,10,1,'2020-08-24 11:37:13','2020-08-24 11:37:13'),(31,3,2,10,1,'2020-08-24 11:38:02','2020-08-24 11:38:02'),(32,3,2,10,1,'2020-08-24 11:38:40','2020-08-24 11:38:40'),(33,3,2,10,1,'2020-08-24 11:38:49','2020-08-24 11:38:49'),(34,3,2,10,1,'2020-08-24 11:39:08','2020-08-24 11:39:08'),(35,3,2,10,1,'2020-08-24 11:39:22','2020-08-24 11:39:22'),(36,3,2,10,1,'2020-08-24 11:39:31','2020-08-24 11:39:31'),(37,3,2,10,1,'2020-08-24 11:40:41','2020-08-24 11:40:41'),(38,3,2,10,1,'2020-08-24 11:41:24','2020-08-24 11:41:24'),(39,3,2,10,1,'2020-08-24 11:41:47','2020-08-24 11:41:47'),(40,3,2,10,1,'2020-08-24 11:41:57','2020-08-24 11:41:57'),(41,3,2,10,1,'2020-08-24 11:42:46','2020-08-24 11:42:46'),(42,3,5,10,1,'2020-08-24 11:43:09','2020-08-24 11:43:09'),(43,3,5,10,1,'2020-08-24 11:43:55','2020-08-24 11:43:55'),(44,3,5,10,1,'2020-08-24 11:44:12','2020-08-24 11:44:12'),(45,3,5,10,1,'2020-08-24 11:44:41','2020-08-24 11:44:41'),(46,3,5,10,1,'2020-08-24 11:46:44','2020-08-24 11:46:44'),(47,3,5,10,1,'2020-08-24 11:47:11','2020-08-24 11:47:11'),(48,3,5,10,1,'2020-08-24 11:47:32','2020-08-24 11:47:32'),(49,3,5,10,1,'2020-08-24 11:49:09','2020-08-24 11:49:09'),(50,3,5,10,1,'2020-08-24 11:50:04','2020-08-24 11:50:04'),(51,3,5,10,1,'2020-08-24 11:50:27','2020-08-24 11:50:27'),(52,3,5,10,1,'2020-08-24 11:52:49','2020-08-24 11:52:49'),(53,3,5,10,1,'2020-08-24 11:53:17','2020-08-24 11:53:17'),(54,3,5,10,1,'2020-08-24 11:53:30','2020-08-24 11:53:30'),(55,3,5,10,1,'2020-08-24 11:53:40','2020-08-24 11:53:40'),(56,3,5,10,1,'2020-08-24 11:54:26','2020-08-24 11:54:26'),(57,3,5,10,1,'2020-08-24 11:56:00','2020-08-24 11:56:00'),(58,3,5,10,1,'2020-08-24 11:56:50','2020-08-24 11:56:50'),(59,3,5,10,1,'2020-08-24 11:57:07','2020-08-24 11:57:07'),(60,3,5,10,1,'2020-08-24 11:57:21','2020-08-24 11:57:21'),(61,3,5,10,1,'2020-08-24 11:57:53','2020-08-24 11:57:53'),(62,3,5,10,1,'2020-08-24 11:58:06','2020-08-24 11:58:06'),(63,3,5,10,1,'2020-08-24 11:58:18','2020-08-24 11:58:18'),(64,3,5,10,1,'2020-08-24 11:58:30','2020-08-24 11:58:30'),(65,3,5,10,1,'2020-08-24 11:59:44','2020-08-24 11:59:44'),(66,3,5,10,1,'2020-08-24 11:59:56','2020-08-24 11:59:56'),(67,3,5,10,1,'2020-08-24 12:00:09','2020-08-24 12:00:09'),(68,3,5,10,1,'2020-08-24 12:00:40','2020-08-24 12:00:40'),(69,3,5,10,1,'2020-08-24 12:00:42','2020-08-24 12:00:42'),(70,3,5,10,1,'2020-08-24 12:00:53','2020-08-24 12:00:53'),(71,3,5,10,1,'2020-08-24 12:13:10','2020-08-24 12:13:10'),(72,3,5,10,1,'2020-08-24 12:14:57','2020-08-24 12:14:57'),(73,3,5,10,1,'2020-08-24 12:15:27','2020-08-24 12:15:27'),(74,3,5,10,1,'2020-08-24 12:16:31','2020-08-24 12:16:31'),(75,3,5,10,1,'2020-08-24 12:17:02','2020-08-24 12:17:02'),(76,3,5,10,1,'2020-08-24 12:17:10','2020-08-24 12:17:10'),(77,3,5,10,1,'2020-08-24 12:17:31','2020-08-24 12:17:31'),(78,3,5,10,1,'2020-08-24 12:17:39','2020-08-24 12:17:39'),(79,3,5,10,1,'2020-08-24 12:19:49','2020-08-24 12:19:49'),(80,3,5,10,1,'2020-08-24 12:21:51','2020-08-24 12:21:51'),(81,3,5,10,1,'2020-08-24 12:28:37','2020-08-24 12:28:37'),(82,3,5,10,1,'2020-08-24 12:29:00','2020-08-24 12:29:00'),(83,3,5,10,1,'2020-08-24 12:32:09','2020-08-24 12:32:09'),(84,3,5,10,1,'2020-08-24 12:32:16','2020-08-24 12:32:16'),(85,3,5,10,1,'2020-08-24 12:33:05','2020-08-24 12:33:05'),(86,3,1,10,1,'2020-08-24 12:33:29','2020-08-24 12:33:29'),(87,3,1,10,1,'2020-08-24 12:33:34','2020-08-24 12:33:34'),(88,3,1,10,1,'2020-08-24 14:18:22','2020-08-24 14:18:22'),(89,3,1,10,1,'2020-08-24 14:38:50','2020-08-24 14:38:50'),(90,3,1,10,1,'2020-08-24 14:39:31','2020-08-24 14:39:31'),(91,3,1,10,1,'2020-08-24 14:39:48','2020-08-24 14:39:48'),(92,3,1,10,1,'2020-08-24 14:40:42','2020-08-24 14:40:42'),(93,3,1,10,1,'2020-08-24 14:42:10','2020-08-24 14:42:10'),(94,3,1,10,1,'2020-08-24 15:01:45','2020-08-24 15:01:45'),(95,3,1,10,1,'2020-08-24 15:04:24','2020-08-24 15:04:24'),(96,3,1,10,1,'2020-08-24 15:07:45','2020-08-24 15:07:45'),(97,3,1,10,1,'2020-08-24 15:10:31','2020-08-24 15:10:31'),(98,3,1,10,1,'2020-08-24 15:10:38','2020-08-24 15:10:38'),(99,3,1,10,1,'2020-08-24 16:43:13','2020-08-24 16:43:13'),(100,3,1,10,1,'2020-08-24 16:50:45','2020-08-24 16:50:45'),(101,3,1,10,1,'2020-08-24 16:50:57','2020-08-24 16:50:57'),(102,3,1,10,1,'2020-08-24 16:53:12','2020-08-24 16:53:12'),(103,3,1,10,1,'2020-08-24 16:54:39','2020-08-24 16:54:39'),(104,3,1,10,1,'2020-08-24 16:55:05','2020-08-24 16:55:05'),(105,3,1,10,1,'2020-08-24 16:55:06','2020-08-24 16:55:06'),(106,3,1,10,1,'2020-08-24 16:58:01','2020-08-24 16:58:01'),(107,3,1,10,1,'2020-08-24 16:58:26','2020-08-24 16:58:26'),(108,3,1,10,1,'2020-08-24 16:58:33','2020-08-24 16:58:33'),(109,3,1,10,1,'2020-08-24 16:58:52','2020-08-24 16:58:52'),(110,3,1,10,1,'2020-08-24 20:58:22','2020-08-24 20:58:22'),(111,3,1,100,1,'2020-08-24 21:01:50','2020-08-24 21:01:50'),(112,3,5,10,1,'2020-08-24 21:04:59','2020-08-24 21:04:59'),(113,3,1,100,1,'2020-08-24 21:08:40','2020-08-24 21:08:40'),(114,3,1,100,1,'2020-08-24 21:09:14','2020-08-24 21:09:14'),(115,3,1,100,1,'2020-08-24 21:09:31','2020-08-24 21:09:31');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL,
  `email` char(255) NOT NULL,
  `password` char(255) NOT NULL,
  `cpf` char(11) DEFAULT NULL,
  `cnpj` char(14) DEFAULT NULL,
  `seller` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`,`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Danilo Vendedor','vendedor@gmail.com','6367c48dd193d56ea7b0baad25b19455e529f5ee',NULL,'24781214000100',1,'2020-08-24 08:25:41','2020-08-24 01:12:43'),(2,'Maria Compradora','compradora@gmail.com','6367c48dd193d56ea7b0baad25b19455e529f5ee','45834950051',NULL,0,'2020-08-24 08:25:41','2020-08-24 01:16:09'),(3,'João Comprador','comprador@gmail.com','6367c48dd193d56ea7b0baad25b19455e529f5ee','38288029078',NULL,0,'2020-08-24 08:25:41','2020-08-24 01:17:07'),(4,'Joana Vendedora','vendedora@gmail.com','6367c48dd193d56ea7b0baad25b19455e529f5ee',NULL,'69113809000126',1,'2020-08-24 08:25:41','2020-08-24 01:51:18'),(5,'Margarete Silva','marga@rete.com','6367c48dd193d56ea7b0baad25b19455e529f5ee','83684458090',NULL,0,'2020-08-24 09:23:42','2020-08-24 09:23:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `lumen-api`.`users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW
BEGIN
	INSERT INTO wallet(user_id) VALUES (new.id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `pendent_amount` double NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `User` (`user_id`),
  CONSTRAINT `User` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES (1,1,10099.5,551,'2020-08-24 21:09:31','2020-08-24 12:26:15'),(2,3,7164,100,'2020-08-24 21:09:31','2020-08-24 12:26:33'),(3,2,435611,1387,'2020-08-24 20:33:10','2020-08-24 12:26:33'),(4,4,4334252,10.99,'2020-08-24 12:26:33','2020-08-24 12:26:33'),(5,5,0,20,'2020-08-24 21:04:59','2020-08-24 12:26:33');
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lumen-api'
--

--
-- Dumping routines for database 'lumen-api'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-24 18:45:28
