/**
по желанию) Пусть имеется таблица с календарным полем created_at.
В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17.
Составьте запрос, который выводит полный список дат за август,
выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.
*/

DELIMITER \\

DROP PROCEDURE IF EXISTS merge_dates\\
CREATE PROCEDURE merge_dates()
BEGIN
    DECLARE cur_date DATE DEFAULT '2018-08-01';
    DROP TEMPORARY TABLE IF EXISTS dates;
	CREATE TEMPORARY TABLE dates(`date` DATE PRIMARY KEY);
    REPEAT
		INSERT INTO dates(`date`) VALUE (cur_date);
        SET cur_date = cur_date + INTERVAL 1 DAY;
    UNTIL cur_date > '2018-08-31'
    END REPEAT;
    SELECT
		`date`,
		IF(EXISTS (SELECT created_at FROM test_created_at WHERE created_at = dates.`date`), '1', '0') `contains`
	FROM dates
    ORDER BY `date`;
END\\

DELIMITER ;

CALL merge_dates();
