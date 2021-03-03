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
-- Table structure for table `station_product`
--

DROP TABLE IF EXISTS `station_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_product` (
  `product_id` int unsigned NOT NULL,
  `station_id` int unsigned NOT NULL,
  `price` double DEFAULT NULL COMMENT 'Цена продукта на станции',
  PRIMARY KEY (`product_id`,`station_id`),
  KEY `fk_station_product_station1_idx` (`station_id`),
  KEY `fk_station_product_product1_idx` (`product_id`),
  CONSTRAINT `fk_station_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_station_product_station1` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Доступные продукты на станциях';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_product`
--

LOCK TABLES `station_product` WRITE;
/*!40000 ALTER TABLE `station_product` DISABLE KEYS */;
INSERT INTO `station_product` VALUES (1,2,483.67),(1,3,586.01),(1,4,399.01),(1,5,566.96),(1,7,78.58),(1,9,812.99),(1,10,36.41),(1,11,900.09),(1,12,510.03),(1,13,883.77),(1,16,978.62),(1,18,333.53),(1,19,851.43),(1,21,986.31),(2,4,604.62),(2,6,775.79),(2,8,298.18),(2,9,221.87),(2,10,141.92),(2,11,28.98),(2,12,15.22),(2,13,157.86),(2,14,428.09),(2,15,363.22),(2,17,870.97),(2,19,598.63),(3,8,450.39),(3,9,433.56),(3,10,435.32),(3,11,814.76),(3,12,755.62),(3,13,480.03),(3,15,598.67),(3,18,448.28),(3,19,733.05),(3,21,562.23),(4,1,350.3),(4,7,168.54),(4,8,149.31),(4,10,687.67),(4,11,964.01),(4,16,315.57),(4,17,97.75),(4,18,433.7),(4,21,700.09),(5,3,255.36),(5,4,433.94),(5,5,751.52),(5,6,252.85),(5,7,308.94),(5,8,770.31),(5,9,207.45),(5,11,262.37),(5,12,192.93),(5,14,468.88),(5,17,348.68),(5,18,320.38),(5,19,618.19),(6,1,626.76),(6,3,955.58),(6,4,812.62),(6,5,119.83),(6,6,150.77),(6,7,211.2),(6,11,561.15),(6,12,606.38),(6,13,609.65),(6,15,345.91),(6,16,546.86),(6,17,44.3),(6,20,547.21),(7,2,911.05),(7,3,814.64),(7,4,857.8),(7,5,851.73),(7,6,572.89),(7,8,108.73),(7,11,590.07),(7,13,406.7),(7,14,440),(7,15,435.28),(7,16,147.47),(7,18,765.86),(7,19,273.99),(7,20,580.19),(8,2,984.52),(8,3,926.37),(8,4,829.05),(8,5,746.94),(8,12,271.9),(8,13,657.66),(8,14,855.08),(8,15,625.94),(8,16,719.9),(8,17,789.88),(8,18,201.57),(8,20,961.77),(9,1,263.08),(9,6,632.55),(9,7,946.2),(9,9,229.51),(9,10,628.99),(9,11,440.01),(9,12,837.51),(9,14,749.93),(9,15,168.91),(9,16,103.1),(9,17,61.66),(9,18,761.45),(9,20,74.56),(9,21,262.14),(10,3,907.51),(10,4,42.5),(10,6,0.9),(10,7,891.21),(10,10,537.9),(10,12,887.69),(10,13,590.59),(10,15,799.12),(10,16,526.68),(10,17,28.76),(10,18,49.09),(10,19,748.21),(10,21,297.41);
/*!40000 ALTER TABLE `station_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 21:07:58
