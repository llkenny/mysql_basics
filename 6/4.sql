-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT
	gender,
    COUNT(*) `count`
FROM (
	-- "Подтягивание" пола пользователя лайка
	SELECT
		users_id id,
		(SELECT gender FROM `profiles` WHERE id = users_id) gender
	FROM likes
) tmp
GROUP BY gender
ORDER BY `count` DESC
LIMIT 1
