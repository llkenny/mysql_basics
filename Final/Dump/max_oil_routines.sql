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
-- Dumping routines for database 'max_oil'
--
/*!50003 DROP PROCEDURE IF EXISTS `fill_card` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_card`(`count` INT)
BEGIN

	DECLARE i INT DEFAULT 1;
	DECLARE virtual_card_id INT;
	DECLARE card_employee_id INT;
	DECLARE card_contract_id INT;
	DECLARE card_number DOUBLE;
    DECLARE card_active TINYINT;

	START TRANSACTION;

	SELECT COUNT(*) INTO @virtual_card_count from virtual_card;
	SELECT COUNT(*) INTO @employee_count from employee;

	WHILE i < `count` DO
		SET i = i + 1;
		SET virtual_card_id = FLOOR(RAND()*(@virtual_card_count)+1);
		SET card_employee_id = FLOOR(RAND()*(@employee_count)+1);
        SET card_number = 90000000000000 + RAND() * 1000000000000;
        SET card_active = ROUND(RAND());
		SELECT contract_id INTO card_contract_id FROM employee WHERE card_employee_id = id LIMIT 1;
		INSERT IGNORE INTO `card` (`number`, `virtual_card_id`, `employee_id`, `contract_id`, `created_at`, `active`) VALUES (card_number, virtual_card_id, card_employee_id, card_contract_id, NOW(), card_active);
	END WHILE;
    
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fill_station_service_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_station_service_product`(`count` INT)
BEGIN

	DECLARE i INT DEFAULT 1;
	DECLARE station_id INT;
	DECLARE service_id INT;
	DECLARE product_id INT;
	DECLARE price DOUBLE;

	START TRANSACTION;

	SELECT COUNT(*) INTO @station_count from station;
	SELECT COUNT(*) INTO @service_count from service;
	SELECT COUNT(*) INTO @product_count from product;

	WHILE i < `count` DO
		SET i = i + 1;
		SET station_id = FLOOR(RAND()*(@station_count)+1);
		SET service_id = FLOOR(RAND()*(@service_count)+1);
		SET product_id = FLOOR(RAND()*(@product_count)+1);
		SET price = FLOOR(RAND() * 100000) / 100;
		INSERT IGNORE INTO `station_service` (`station_id`, `service_id`, `price`) VALUES (station_id, service_id, price);
		INSERT IGNORE INTO `station_product` (`station_id`, `product_id`, `price`) VALUES (station_id, product_id, price);
	END WHILE;
    
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fill_transaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_transaction`(`count` INT)
BEGIN

	DECLARE i INT DEFAULT 1;
    DECLARE tr_date DATETIME DEFAULT NOW();
	DECLARE tr_price DOUBLE;
	DECLARE tr_count DOUBLE;
	DECLARE tr_card_id INT;
    DECLARE tr_service_id INT;
    DECLARE tr_product_id INT;
    DECLARE tr_station_id INT;

	START TRANSACTION;

	SELECT COUNT(*) INTO @card_count from card;
    SELECT COUNT(*) INTO @service_count from service;
    SELECT COUNT(*) INTO @product_count from product;
    SELECT COUNT(*) INTO @station_count from station;

	WHILE i < `count` DO
		SET i = i + 1;
        
        SET tr_date = DATE_ADD(tr_date, INTERVAL (RAND() * 100) MINUTE);
        SET tr_price = FLOOR(RAND() * 100000) / 100;
        SET tr_count = FLOOR(RAND() * 10000) / 100;
		SET tr_card_id = FLOOR(RAND()*(@card_count)+1);
		SET tr_service_id = FLOOR(RAND()*(@service_count)+1);
		SET tr_product_id = FLOOR(RAND()*(@product_count)+1);
		SET tr_station_id = FLOOR(RAND()*(@station_count)+1);
        
        -- транзакция либо на услугу либо на продукт
        IF ROUND(RAND()) THEN
			INSERT IGNORE INTO `transaction` (`date`, `price`, `count`, `card_id`, `service_id`, `station_id`)
            VALUES (tr_date, tr_price, tr_count, tr_card_id, tr_service_id, tr_station_id);
        ELSE
			INSERT IGNORE INTO `transaction` (`date`, `price`, `count`, `card_id`, `product_id`, `station_id`)
            VALUES (tr_date, tr_price, tr_count, tr_card_id, tr_product_id, tr_station_id);
        END IF;
	END WHILE;
    
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03 21:08:04
