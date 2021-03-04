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
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL COMMENT 'Адрес',
  `latitude` double DEFAULT NULL COMMENT 'Широта',
  `longitude` double DEFAULT NULL COMMENT 'Долгота',
  `active` tinyint NOT NULL DEFAULT '1' COMMENT 'Точка продажи активна',
  `partner_id` int unsigned NOT NULL COMMENT 'Партнер - владелец точки продажи',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_station_partner1_idx` (`partner_id`),
  CONSTRAINT `fk_station_partner1` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Точки продаж: станции обслуживания, мойки, АЗС.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Россия Московская область г.Сергиев-Посад Скобяное шоссе',58.283834,36.142853,1,1),(2,'Белоруссия Гродненская область Лидинский район M-6, 159-й км, 1',56.285134,33.232853,1,1),(3,'Свердловская область Билимбай Ленина',54.285234,36.133823,1,1),(4,'Бресткая область Брест ул.Лейтенанта Рябцева',55.281834,38.132453,1,2),(5,'Россия Калужская область Жиздринский р-н, 300 км трассы М-3 (справа)',58.289934,37.135853,1,2),(6,'Россия ХМАО г. Нижневартовск ул. Интернациональная',55.289714,37.130953,1,2),(7,'Россия Республика Мордовия с. Новое Зубарево Р-180, 91 км',56.289124,32.132153,1,2),(8,'Россия Москва Каширское шоссе',59.280334,31.132143,0,3),(9,'Россия Мурманская область Мончегорск Металлургов пр-т',55.231234,33.228853,0,3),(10,'Россия Нижегородская область г. Нижний Новгород Долгополова',59.208834,32.102053,1,3),(11,'Россия Челябинская область г. Кыштым ул. Ленина',57.289124,33.131353,1,4),(12,'Россия Москва Москва Сормовский',54.209834,39.100353,1,4),(13,'Россия Московская область Щелково Фрунзе',56.289332,32.139053,1,4),(14,'Россия Свердловская область Талица ул. Луначарского',58.289084,34.131953,1,4),(15,'Россия Пермский край Пермь Гашкова',54.289834,39.137153,1,2),(16,'Россия Волгоградская область Урюпинск Репина',55.287634,37.131753,0,3),(17,'Россия Волгоградская область Урюпинск Штеменко',58.227834,34.139853,1,1),(18,'Россия Челябинская область г. Куса ул. 3 Интернационала',53.285134,37.135253,1,4),(19,'Россия Нижегородская область с. Сеченово ул. Советская',54.319834,33.132723,1,2),(20,'Россия Волгоградская область Новоаннинский Рабочая',55.287634,35.132913,1,1),(21,'Россия Забайкальский край г. Чита',59.289534,36.132283,1,3);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
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
