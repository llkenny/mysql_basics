/**
Заполняет таблицу карт случайными данными.
Предполагается, что id виртуальных карт и сотрудников заполнены непрерывно, начиная с 1.
id контракта берется из таблицы сотрудника.
*/
DROP PROCEDURE IF EXISTS fill_card;

DELIMITER //

CREATE PROCEDURE fill_card(`count` INT)
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
END//
DELIMITER ;