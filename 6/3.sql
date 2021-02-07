-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT GROUP_CONCAT(users_id), COUNT(*)
FROM likes
WHERE users_id IN (
		SELECT users_id FROM (
			SELECT users_id, birthday
			FROM `profiles`
			ORDER BY birthday DESC
			LIMIT 10
		) tmp
	)