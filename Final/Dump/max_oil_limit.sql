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
-- Table structure for table `limit`
--

DROP TABLE IF EXISTS `limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `limit` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT NULL COMMENT 'Доступное количество услуги или продукта по лимиту',
  `count_used` double DEFAULT NULL COMMENT 'Использовано по лимиту',
  `period` double DEFAULT NULL COMMENT 'Периодичность лимита',
  `period_started_at` datetime DEFAULT NULL COMMENT 'Дата начала периода лимита',
  `station_id` int unsigned DEFAULT NULL COMMENT 'Точка обслуживания, которая включена в условия лимита. Для упрощения, несколько точек обслуживания по лимиту недоступно. Альтернатива - использовать partner_id.',
  `partner_id` int unsigned DEFAULT NULL COMMENT 'Партнер, который включен в условия лимита. ',
  `card_id` int unsigned NOT NULL COMMENT 'Карт, по которой установлен лимит',
  `service_id` int unsigned DEFAULT NULL COMMENT 'Услуга по лимиту',
  `product_id` int unsigned DEFAULT NULL COMMENT 'Продукт по лимиту',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_limit_station1_idx` (`station_id`),
  KEY `fk_limit_partner1_idx` (`partner_id`),
  KEY `fk_limit_card1_idx` (`card_id`),
  KEY `fk_limit_service_type1_idx` (`service_id`),
  KEY `fk_limit_product1_idx` (`product_id`),
  CONSTRAINT `fk_limit_card1` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_limit_partner1` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_limit_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_limit_service_type1` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_limit_station1` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Лимиты на услуги и продукты. Лимит может быть: на услугу или на продукт; разовый или периодичный.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limit`
--

LOCK TABLES `limit` WRITE;
/*!40000 ALTER TABLE `limit` DISABLE KEYS */;
INSERT INTO `limit` VALUES (1,50,1,86400,'2018-07-20 21:30:00',2,NULL,4,1,NULL),(9,30,14,604800,'2018-07-20 21:30:00',NULL,1,11,NULL,1),(10,30,14,NULL,NULL,5,NULL,11,NULL,4),(11,1,0,NULL,NULL,18,NULL,31,NULL,5),(12,18,18,NULL,NULL,11,NULL,14,5,NULL),(13,1,0,NULL,NULL,NULL,4,1,8,NULL),(14,1,0,NULL,NULL,18,NULL,31,NULL,5),(15,NULL,NULL,604800,'2018-07-20 21:30:00',NULL,1,11,NULL,4),(16,NULL,NULL,604800,'2020-07-20 21:30:00',NULL,1,28,NULL,2),(17,NULL,NULL,604800,'2020-08-20 21:30:00',3,NULL,17,4,NULL),(18,NULL,NULL,86400,'2020-01-20 21:30:00',12,NULL,2,5,NULL),(19,NULL,NULL,86400,'2021-01-20 21:30:00',NULL,1,2,NULL,4);
/*!40000 ALTER TABLE `limit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 21:08:02
