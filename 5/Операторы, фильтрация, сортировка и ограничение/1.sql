-- Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

SET SQL_SAFE_UPDATES=0;
UPDATE users SET created_at = NOW(), updated_at = NOW();
SET SQL_SAFE_UPDATES=1;