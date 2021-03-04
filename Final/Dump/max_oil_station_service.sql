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
-- Table structure for table `station_service`
--

DROP TABLE IF EXISTS `station_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_service` (
  `station_id` int unsigned NOT NULL,
  `service_id` int unsigned NOT NULL,
  `price` double DEFAULT NULL COMMENT 'Цена услуги на станции',
  PRIMARY KEY (`station_id`,`service_id`),
  KEY `fk_station_service_station1_idx` (`station_id`),
  KEY `fk_station_service_service1_idx` (`service_id`),
  CONSTRAINT `fk_station_service_service1` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_station_service_station1` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Доступные услуги на станциях';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_service`
--

LOCK TABLES `station_service` WRITE;
/*!40000 ALTER TABLE `station_service` DISABLE KEYS */;
INSERT INTO `station_service` VALUES (1,3,626.76),(1,4,263.08),(1,5,350.3),(1,6,671.22),(2,3,566.21),(2,5,984.52),(2,6,483.67),(2,7,433.74),(3,2,19.65),(3,3,907.51),(3,5,955.58),(3,6,870.78),(3,7,814.64),(4,1,366.77),(4,3,829.05),(4,4,857.8),(4,5,433.94),(4,7,15.9),(4,8,42.5),(5,1,870.53),(5,2,119.83),(5,6,746.94),(5,7,851.73),(5,8,566.96),(6,1,252.85),(6,3,857.84),(6,4,150.77),(6,5,775.79),(6,6,181.34),(6,7,599.55),(6,8,632.55),(7,2,946.2),(7,3,168.54),(7,4,78.58),(7,6,308.94),(7,7,313.22),(7,8,891.21),(8,1,756.17),(8,3,258.32),(8,4,149.31),(8,5,770.31),(8,7,108.73),(9,1,229.51),(9,2,336.37),(9,3,433.56),(9,4,221.87),(9,7,812.99),(9,8,207.45),(10,1,398.91),(10,4,537.9),(10,6,687.67),(10,7,628.99),(10,8,435.32),(11,1,900.09),(11,2,590.07),(11,4,748.12),(11,5,28.98),(11,6,814.76),(11,7,753.42),(11,8,964.01),(12,1,715.63),(12,3,887.69),(12,4,606.38),(12,5,510.03),(12,7,755.62),(12,8,271.9),(13,1,357.08),(13,2,157.86),(13,3,657.66),(13,4,256.92),(13,6,590.59),(13,7,406.7),(13,8,200.27),(14,2,749.93),(14,3,855.08),(14,4,428.09),(15,1,363.22),(15,2,266.77),(15,3,625.94),(15,5,435.28),(15,6,209.52),(15,7,598.67),(15,8,168.91),(16,1,315.57),(16,2,423.67),(16,3,933.87),(16,4,103.1),(16,6,546.86),(16,7,270.74),(16,8,147.47),(17,1,789.88),(17,3,28.76),(17,4,61.66),(17,5,97.75),(17,6,708.92),(17,7,728.06),(17,8,348.68),(18,3,363.78),(18,4,49.09),(18,5,437.3),(18,6,333.53),(18,7,433.7),(18,8,448.28),(19,1,241.14),(19,2,273.99),(19,3,598.63),(19,5,733.05),(19,6,748.21),(20,1,547.21),(20,2,74.56),(20,3,961.77),(20,6,917.64),(20,8,482.75),(21,1,700.09),(21,2,514.95),(21,3,399.81),(21,4,824.6),(21,7,562.23),(21,8,262.14);
/*!40000 ALTER TABLE `station_service` ENABLE KEYS */;
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
