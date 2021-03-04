/**
Генерация случайных услуг и продуктов для станций.
Количество записей определяется параметром count.
*/

DROP PROCEDURE IF EXISTS fill_station_service_product;

DELIMITER //

CREATE PROCEDURE fill_station_service_product(`count` INT)
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
END//
DELIMITER ;