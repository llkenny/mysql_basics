-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT *
FROM users
WHERE EXISTS (SELECT user_id FROM orders WHERE users.id = orders.user_id)
