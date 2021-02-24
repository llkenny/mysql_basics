/**
Создайте таблицу logs типа Archive.
Пусть при каждом создании записи в таблицах users,
catalogs и products в таблицу logs помещается время и дата создания записи,
название таблицы, идентификатор первичного ключа и содержимое поля name.
*/

CREATE TABLE `logs` (
	`date` DATETIME,
	`tablename` VARCHAR(8),
	id BIGINT,
	`name` VARCHAR(255))
ENGINE = 'ARCHIVE';