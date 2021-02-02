/*
Таблица users была неудачно спроектирована.
Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10.
Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
*/

CREATE TABLE `users_copy` LIKE `users`;

ALTER TABLE `users_copy`
CHANGE COLUMN `created_at` `created_at` DATETIME NOT NULL DEFAULT NOW(),
CHANGE COLUMN `updated_at` `updated_at` DATETIME NOT NULL DEFAULT NOW();

INSERT INTO
	`users_copy`
SELECT
	`id`,
    `name`,
    `birthday_at`,
    STR_TO_DATE(`created_at`, '%d.%m.%Y %H:%i') AS `created_at`,
    STR_TO_DATE(`updated_at`, '%d.%m.%Y %H:%i') AS `updated_at`
FROM
	`users`;
    
DROP TABLE `users`;
ALTER TABLE `users_copy` RENAME `users`;
