CREATE DATABASE  IF NOT EXISTS `webapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `webapp`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: webapp
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `prj_timesheet_entity`
--

DROP TABLE IF EXISTS `prj_timesheet_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prj_timesheet_entity` (
  `id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hours` int NOT NULL,
  `phase` varchar(255) DEFAULT NULL,
  `resource_name` varchar(255) DEFAULT NULL,
  `resource_surname` varchar(255) DEFAULT NULL,
  `data_and_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prj_timesheet_entity`
--

LOCK TABLES `prj_timesheet_entity` WRITE;
/*!40000 ALTER TABLE `prj_timesheet_entity` DISABLE KEYS */;
INSERT INTO `prj_timesheet_entity` VALUES (_binary '!àøJÜ≥(´\’b∆õ\—','4av',400,'Implementation','Mario','Rossi','05/06/2025, 14:53:21'),(_binary 'Xp\«=øM·óû\Óq©˜\⁄\◊','ab1',100,'Testing','Ernesto','Rossi','25/05/2025, 12:09:48'),(_binary '^–ãw8ÉJ‰±ï\ﬂDöÜT','4av',10,'Project Management','Marco','Palmieri','05/06/2025, 14:54:10'),(_binary 'êÚ\ ±¢@CáP_JWæÉ','4av',4,'Analisys','Marco','Palmieri','23/05/2025, 16:06:20'),(_binary '≠B{õ\'Oºø<ØYS±õº','4av',300,'Testing','Giovanni','Gallo','05/06/2025, 14:59:10'),(_binary 'Æ\–\Ô∏˜ªGJÉªp{jG≤ú','TimeSheet',5,'Project Management','Marco','Palmieri','27/05/2025, 16:33:22'),(_binary '\ƒB\ŒwUNd¨GJ@Ø!K','4av',50,'Design','Fabio','Neri','05/06/2025, 14:56:01'),(_binary '\Ó9•ø~M¨˘L\À\ÏJ•b','ab1',5,'Project Management','Marco','Palmieri','23/05/2025, 17:28:53'),(_binary 'Ù∫óñôeK`≥RD[~\ÿ&','ab1',40,'Design','Paolo','Neri','09/06/2025, 18:29:36');
/*!40000 ALTER TABLE `prj_timesheet_entity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-13 17:18:12
