-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: applicants
-- ------------------------------------------------------
-- Server version	5.7.21-1

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
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isHired` tinyint(1) NOT NULL,
  `lastApplication` datetime NOT NULL DEFAULT '2019-04-18 17:14:48',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `applicants_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` VALUES (1,'hurddd','thegreate31@gmail.com',1,'2018-10-25 20:07:21','2019-04-18 09:14:54','2019-04-18 10:15:34'),(2,'Tobin Wiegand','kihn.dina@yahoo.com',0,'2018-12-07 14:15:07','2019-04-18 09:14:54','2019-04-18 09:14:54'),(3,'Mr. Wellington Schowalter DDS','mhayes@yahoo.com',1,'2018-06-05 17:51:25','2019-04-18 09:14:54','2019-04-18 09:14:54'),(4,'Dr. Benjamin Osinski DDS','duncan.zieme@hotmail.com',1,'2019-03-12 12:24:00','2019-04-18 09:14:54','2019-04-18 09:14:54'),(5,'Gustave West','mhagenes@konopelski.com',0,'2018-12-21 19:53:37','2019-04-18 09:14:54','2019-04-18 09:14:54'),(6,'hurddd','thegreate32@gmail.com',0,'2019-02-09 10:43:25','2019-04-18 09:14:54','2019-04-18 10:16:28'),(7,'Mrs. Freeda Wolf','winston.reinger@hotmail.com',1,'2019-04-13 19:20:25','2019-04-18 09:14:54','2019-04-18 09:14:54'),(8,'Dr. Garrison Dickens PhD','anabel49@gmail.com',1,'2018-06-04 05:45:30','2019-04-18 09:14:54','2019-04-18 09:14:54'),(9,'King Harber','bmetz@greenholt.com',0,'2018-09-30 04:22:03','2019-04-18 09:14:54','2019-04-18 09:14:54'),(10,'Dr. Jakayla Emard','ymurray@hotmail.com',1,'2018-08-12 10:24:00','2019-04-18 09:14:54','2019-04-18 09:14:54'),(11,'Jewel Schoen','satterfield.emilio@gmail.com',1,'2019-04-13 15:48:27','2019-04-18 09:14:54','2019-04-18 09:14:54'),(12,'Mr. Willy Lueilwitz DVM','jesse05@yahoo.com',1,'2018-07-22 01:43:17','2019-04-18 09:14:54','2019-04-18 09:14:54'),(13,'Chaz Keebler','tina.lynch@stokes.com',1,'2018-06-01 16:18:14','2019-04-18 09:14:54','2019-04-18 09:14:54'),(14,'George Berge','juanita.paucek@bechtelar.org',1,'2019-02-01 21:59:47','2019-04-18 09:14:54','2019-04-18 09:14:54'),(15,'Laury Runolfsson','gerry23@yahoo.com',1,'2018-07-13 07:58:02','2019-04-18 09:14:54','2019-04-18 09:14:54'),(16,'Oleta Nitzsche','hermiston.owen@gmail.com',0,'2018-07-29 22:29:43','2019-04-18 09:14:54','2019-04-18 09:14:54'),(17,'Dr. Davonte Senger','kpfeffer@fay.com',1,'2018-07-29 20:50:07','2019-04-18 09:14:54','2019-04-18 09:14:54'),(18,'Jaeden Jerde','emmet37@bechtelar.com',1,'2018-09-18 18:32:45','2019-04-18 09:14:54','2019-04-18 09:14:54'),(19,'Litzy Eichmann','hegmann.kaci@homenick.com',0,'2018-06-01 23:48:51','2019-04-18 09:14:54','2019-04-18 09:14:54'),(20,'Savanna Jacobs I','gerhold.declan@bergstrom.com',1,'2019-03-08 10:13:02','2019-04-18 09:14:54','2019-04-18 09:14:54'),(21,'mark','thegreate@gmail.com',1,'2019-04-18 17:14:48','2019-04-18 09:15:04','2019-04-18 09:15:04'),(22,'steve','thegreate1@gmail.com',0,'2019-04-18 17:14:48','2019-04-18 09:15:04','2019-04-18 09:15:04'),(23,'mark','thegreate2@gmail.com',1,'2019-04-18 17:14:48','2019-04-18 09:17:12','2019-04-18 09:17:12'),(24,'mark','thegreate3@gmail.com',1,'2019-04-18 17:14:48','2019-04-18 09:19:05','2019-04-18 09:19:05'),(26,'mark','thegreate4@gmail.com',1,'2019-04-18 17:14:48','2019-04-18 09:23:55','2019-04-18 09:23:55'),(27,'mark','thegreate30@gmail.com',1,'2019-04-18 17:14:48','2019-04-18 09:43:04','2019-04-18 09:43:04');
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2019_04_18_152733_create_applicants_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-19 17:32:13
