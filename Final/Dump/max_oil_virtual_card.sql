CREATE DATABASE  IF NOT EXISTS `max_oil` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `max_oil`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: max_oil
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
-- Table structure for table `virtual_card`
--

DROP TABLE IF EXISTS `virtual_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virtual_card` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) NOT NULL COMMENT 'Идентификатор мобильного устройства',
  `type` enum('QR','NFC') NOT NULL COMMENT 'Тип ВК: QR - оплата по QR коду, NFC - оплата по NFC мобильного устройства.',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания виртуальной карты',
  `expire_at` datetime NOT NULL COMMENT 'Срок действия',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Виртуальные карты. Позволяют оплачивать услуги и продукты с мобильного устройства без физической карты.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtual_card`
--

LOCK TABLES `virtual_card` WRITE;
/*!40000 ALTER TABLE `virtual_card` DISABLE KEYS */;
INSERT INTO `virtual_card` VALUES (1,'ajksdhaksjdhaksjhdkjlasdl','QR','2018-02-21 00:00:00','2018-03-21 00:00:00'),(2,'lklgkjlkasjdlka','QR','2020-02-21 00:00:00','2021-03-21 00:00:00'),(3,'iouhkjsmndfmsdnjfhb','QR','2020-05-21 00:00:00','2021-05-21 00:00:00'),(4,'mbnsjkdfhsdkjfhbdsjkfhbdshjfgb','NFC','2019-02-21 21:00:00','2021-06-11 00:00:00'),(5,'oiuhiuehrkjhbsdjhfbsdkjfhbsdjf','NFC','2021-01-04 08:30:15','2022-08-01 00:00:00');
/*!40000 ALTER TABLE `virtual_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 21:08:01
