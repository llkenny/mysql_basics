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
-- Table structure for table `organization_details`
--

DROP TABLE IF EXISTS `organization_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название',
  `inn` varchar(12) NOT NULL COMMENT 'ИНН',
  `address` varchar(255) DEFAULT NULL COMMENT 'Адрес',
  `phone` bigint DEFAULT NULL COMMENT 'Телефон',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `inn_UNIQUE` (`inn`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Детали компании';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_details`
--

LOCK TABLES `organization_details` WRITE;
/*!40000 ALTER TABLE `organization_details` DISABLE KEYS */;
INSERT INTO `organization_details` VALUES (1,'Макс Нефть','000000000001','Volkovskiy Prospekt, 83, Sankt-Peterburg, 192102',700012345600),(2,'ТукОил','000000000002','Sovetskaya Ulitsa, 15, Tosno, Ленинградская, 187000',700012345601),(3,'РосБензин','000000000003','Ulitsa Krasnaya, 15, Kungur, Perm Krai, 617470',700012345602),(4,'Тат Масла','000000000004','Ulitsa Rodonitovaya, 34, Yekaterinburg, Sverdlovsk Oblast, 620089',700012345603),(5,'Несле','000000000005','Ulitsa Ervye, 24, Tyumen, Tyumen Oblast, 625022',700012345604),(6,'Shock','000000000006','Ulitsa Orekhova, 42, Komsomolsk-on-Amur, Khabarovskiy kray, 681029',700012345605),(7,'Сеть автомоек номер 1','000000000007','Ulitsa Mira, 10, Zhigulevsk, Samara Oblast, 445350',700012345606),(8,'Лучший сервис грузовых автомобилей','000000000008','Prospekt Lenina, 186 корпус 1, Arzamas, Nizhegorodskaya oblast, 607220',700012345607),(9,'Колеса ЛенОбл','000000000009','Ulitsa Matrosova, 76, Chkalovsk, Nizhegorodskaya oblast, 606541',700012345608),(10,'КубаньАЗС','000000000010','Ulitsa Askoldovtsev, 26 корпус 2, Murmansk, Murmanskaya oblast, 183040',700012345609);
/*!40000 ALTER TABLE `organization_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 21:08:00
