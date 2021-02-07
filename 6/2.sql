/* 
Пусть задан некоторый пользователь. 
Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
*/

-- Например, заданный пользователь с id = 10

SELECT 
	*
FROM
	users
WHERE id = ( 					-- Где id = следующему запросу
    SELECT messager_id FROM ( 	-- Выбор messager_id из (messager_id, count)
		SELECT  				-- Поиск человека, который больше всех общался с нашим пользователем
			IF(from_users_id = 10, to_users_id, from_users_id) messager_id,
			COUNT(*) `count`
		FROM messages
		WHERE 					-- Выбор всех отправителей или получателей сообщений от пользователя с id = 10
			(from_users_id = 10 AND
			to_users_id IN (SELECT IF(from_users_id = 10, to_users_id, from_users_id) FROM friend_requests WHERE (from_users_id = 10 OR to_users_id = 10) AND `status` = 1))
			OR
			(to_users_id = 10 AND
			from_users_id IN (SELECT IF(from_users_id = 10, to_users_id, from_users_id) FROM friend_requests WHERE (from_users_id = 10 OR to_users_id = 10) AND `status` = 1))
		GROUP BY messager_id
		ORDER BY count DESC
		LIMIT 1 				-- Выбор записи с максимальным COUNT
	) tmp
)

-- Пояснения:

-- Выбор id всех друзей заданного пользователя
-- SELECT IF(from_users_id = 10, to_users_id, from_users_id) FROM friend_requests WHERE (from_users_id = 10 OR to_users_id = 10) AND `status` = 1

-- Выбор id человека, с которым чаще всего общался заданный пользователь
-- Учитывается как отправитель, так и получатель сообщений
/*
SELECT 
	IF(from_users_id = 10, to_users_id, from_users_id) AS messager_id,
	COUNT(*) as `count`
FROM messages
WHERE 
	(from_users_id = 10 AND
	to_users_id IN (SELECT IF(from_users_id = 10, to_users_id, from_users_id) FROM friend_requests WHERE (from_users_id = 10 OR to_users_id = 10) AND `status` = 1))
    OR
    (to_users_id = 10 AND
	from_users_id IN (SELECT IF(from_users_id = 10, to_users_id, from_users_id) FROM friend_requests WHERE (from_users_id = 10 OR to_users_id = 10) AND `status` = 1))
GROUP BY messager_id
ORDER BY count DESC
LIMIT 1
*/