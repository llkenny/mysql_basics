/**
Создайте хранимую функцию hello(), которая будет возвращать приветствие,
в зависимости от текущего времени суток.
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
с 18:00 до 00:00 — "Добрый вечер",
с 00:00 до 6:00 — "Доброй ночи".
*/

DELIMITER //

DROP FUNCTION IF EXISTS hello;
CREATE FUNCTION hello(`time` TIME)
	RETURNS TEXT DETERMINISTIC
BEGIN
	DECLARE result TEXT;
    IF (`time` between '00:00:00' AND '06:00:00') THEN SET result = 'Доброй ночи';
    ELSEIF (`time` between '06:00:00' AND '12:00:00') THEN SET result = 'Доброе утро';
    ELSEIF (`time` between '12:00:00' AND '18:00:00') THEN SET result = 'Добрый день';
    ELSE SET result = 'Добрый вечер';
	END IF;
	RETURN result;
END//

DELIMITER ;

SELECT hello('00:30:00')