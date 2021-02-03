/*
(по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.
Месяцы заданы в виде списка английских названий (may, august)
*/

SELECT
	*
FROM 
	users
WHERE
	CASE
		WHEN DATE_FORMAT(birthday_at, '%m') = 5 THEN 'may'
        WHEN DATE_FORMAT(birthday_at, '%m') = 8 THEN 'august'
	END IN ('may', 'august')