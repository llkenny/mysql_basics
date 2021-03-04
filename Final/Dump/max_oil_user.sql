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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL COMMENT 'Имя пользователя',
  `password` char(64) DEFAULT NULL COMMENT 'Хэш пароля SHA256. Если значение NULL - учетная запись неактивна.',
  `employee_id` int unsigned NOT NULL COMMENT 'Сотрудник - владелец учетной записи',
  `role` enum('admin','readonly') NOT NULL DEFAULT 'readonly' COMMENT 'Роль (Права доступа к лимитам, блокировке карты и т.д.)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_user_employee1_idx` (`employee_id`),
  CONSTRAINT `fk_user_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Пользователь клиентской системы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'auto_1','8482918e4705c6be210084c9d94e0fe2f45fcf4e79f2d5013c76e44fe1c95d43',1,'admin'),(2,'auto_2','632c17535cd00829b97bf42e475898549b778b133dc3bd1aec4b2541730c9c96',2,'admin'),(3,'auto_3','8b3a2e8876ff5101f83a52565b673b486429ea42e71c59d307c77597ab2c6648',3,'admin'),(4,'auto_4','033c0c34dcc7390311ef0d2cecf963b42a9c6e19d798117a66af811fb0040a45',4,'admin'),(5,'auto_5','c456c6bde0eac1d5267a578ba2b8851ae24e737a71a4599cfa53c20d1af08a8e',5,'admin'),(6,'auto_6','01680dbbccb9a9b8fbe31074bbf83e1ec344bfc72ecface153f93797e4931f3a',6,'admin'),(7,'auto_7','5597bf6b012d0afec62ad4932d46d66fe8c936775b50e16b1c290ed5405509bc',7,'readonly'),(8,'auto_8','fc5acb99f5bf2b0d078818f024023d75294b82f99001e86747effcefbec003b4',8,'readonly'),(9,'auto_9','7bb83159b9b8bf26c2e3643939f368df390083c14072e12d8f680493a4c4da11',9,'readonly'),(10,'auto_10','27007c851cd84fa9f9629fa29433779708952cbbc4734d54e68d9299e5d4b650',10,'readonly'),(11,'auto_11','c9f1e855d0bcf31687b9290948961d2dcc376ad8656873bda14cc4bc3fc4c052',11,'readonly'),(12,'auto_12','2249cef484f47fafd9becec91829afdeed284fd0bff68c6f1b3f327d95c5b8c0',12,'readonly'),(13,'auto_13','2249cef484f47fafd9becec91829afdeed284fd0bff68c6f1b3f327d95c5b8c0',13,'readonly'),(14,'auto_14',NULL,14,'readonly'),(15,'auto_15',NULL,15,'readonly'),(16,'auto_16',NULL,16,'readonly');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 21:07:57
