/**
Заполняет таблицу транзакций случайными записями.
Предполгается, что id данных в связанных таблицах начинаются с 1 и непрерывны.
Транзакция случайным образом создается либо на услугу либо на продукт.
*/
DROP PROCEDURE IF EXISTS fill_transaction;

DELIMITER //

CREATE PROCEDURE fill_transaction(`count` INT)
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
END//
DELIMITER ;