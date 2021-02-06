/*
Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
Следует учесть, что необходимы дни недели текущего года, а не года рождения
*/

SELECT
	DATE_FORMAT(STR_TO_DATE(CONCAT(YEAR(CURRENT_DATE), DATE_FORMAT(birthday_at, '-%m-%d')), '%Y-%m-%d'), '%W') as week_day,
	COUNT(*)
FROM
	users
GROUP BY
	week_day
