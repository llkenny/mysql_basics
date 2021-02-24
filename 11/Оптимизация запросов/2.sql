/**
(по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
*/

DROP PROCEDURE IF EXISTS fill;

DELIMITER \\

CREATE PROCEDURE fill()
BEGIN
	DECLARE i INT DEFAULT 0;
	START TRANSACTION;
    REPEAT
		INSERT INTO `users` (`name`) VALUE (CONCAT('Тест-', i));
		SET i = i + 1;
    UNTIL i = 1000000
    END REPEAT;
    COMMIT;
END\\

DELIMITER ;

CALL fill();