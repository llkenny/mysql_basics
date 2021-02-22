/** (по желанию) Пусть имеется любая таблица с календарным полем created_at.
Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
*/

/** Вариант 1
START TRANSACTION;
CREATE TEMPORARY TABLE tmp_copy LIKE test_created_at;
INSERT INTO tmp_copy
SELECT *
FROM test_created_at
ORDER BY created_at DESC LIMIT 5;

DROP TABLE test_created_at;
ALTER TABLE tmp_copy RENAME test_created_at;

DROP PROCEDURE IF EXISTS clean;
*/

-- Вариант 2

DELIMITER \\

CREATE PROCEDURE clean()
BEGIN
	DECLARE total INT;
    START TRANSACTION;
    SET total = (SELECT COUNT(*) FROM test_created_at);
    WHILE total > 5 DO
		DELETE FROM test_created_at ORDER BY created_at LIMIT 1;
        SET total = total - 1;
    END WHILE;
    COMMIT;
END\\

DELIMITER ;

CALL clean();
