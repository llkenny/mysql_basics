/** 
(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
Поля from, to и label содержат английские названия городов, поле name — русское.
Выведите список рейсов flights с русскими названиями городов.
*/

SELECT
	id,
	from_ru `from`,
    to_ru `to`
FROM (
	SELECT
		*,
		(SELECT `name` FROM cities WHERE label = flights.`from`) from_ru,
		(SELECT `name` FROM cities WHERE label = flights.`to`) to_ru
	FROM flights
	) tmp
