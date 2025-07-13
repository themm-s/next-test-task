-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: nexttesttask
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('8e1c7815-482b-4790-b3be-eee4483329b6','ba60b6a9450d4df2a44f06c2dc55fd0d484ab165c8a57fe5c3978f987040ddae','2025-07-13 17:51:51.127','20250713175113_new_fields',NULL,NULL,'2025-07-13 17:51:51.117',1),('d1afaca1-9048-4817-af6d-148c7ed74d01','8876809df3fe752aeabcefbb765567ae42af960bbd3fb9e8823c48d429b45dfa','2025-07-13 17:56:14.544','20250713175614_default_value',NULL,NULL,'2025-07-13 17:56:14.534',1),('ddb69590-f6d6-475a-847b-adfd83c4b6ce','fa505087bbb6015c3f9ac847cb7f3336f593fce67dabdae00938b6fd009a6128','2025-07-13 16:47:56.433','20250713164756_init',NULL,NULL,'2025-07-13 16:47:56.419',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool`
--

DROP TABLE IF EXISTS `pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pool` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `hashrateTHs` double NOT NULL,
  `activeWorkers` int(11) NOT NULL,
  `rejectRate` double NOT NULL,
  `status` enum('ONLINE','DEGRADED','OFFLINE') NOT NULL,
  `feePercent` double NOT NULL DEFAULT 0,
  `last24hRevenueBTC` double NOT NULL DEFAULT 0,
  `location` varchar(191) NOT NULL DEFAULT '',
  `uptimePercent` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool`
--

LOCK TABLES `pool` WRITE;
/*!40000 ALTER TABLE `pool` DISABLE KEYS */;
INSERT INTO `pool` VALUES ('cmd1wsjth0000e5lg82pilfcf','US East Pool',830.5,1240,0.012,'ONLINE',0.2,0.035,'Los Angeles, US',98),('cmd1wteqf0001e5lgekvjc30l','EU Central Pool',460.3,876,0.045,'DEGRADED',0.7,0.0535,'Frankfurt, EU',99),('cmd1wuchh0002e5lg3i7ahgk5','US West Pool',1021.4,2300,0.1,'OFFLINE',0.4,0.032355,'California, US',97);
/*!40000 ALTER TABLE `pool` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-14  0:35:04
