-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- Для упрощения, определяю по трем полям: количество отправленных сообщений, отправленных запросов в друзья и количество лайков

SELECT
	id as user_id,
	((SELECT COUNT(*) FROM messages WHERE user_id = from_users_id) +
    (SELECT COUNT(*) FROM friend_requests WHERE user_id = from_users_id) +
    (SELECT COUNT(*) FROM likes WHERE user_id = users_id)) activity
FROM users
ORDER BY activity
LIMIT 10