/**
В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users.
Используйте транзакции.
*/
START TRANSACTION;
SET @id := 1;
SELECT * FROM shop.users WHERE id = @id;
DELETE FROM sample.users WHERE id = @id;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = @id;
DELETE FROM shop.users WHERE id = @id;
COMMIT;
