/**
Создайте представление, которое выводит название name товарной позиции 
из таблицы products и соответствующее название каталога name из таблицы catalogs.
*/

CREATE OR REPLACE VIEW products_catalogs AS
	SELECT
		products.`name`,
		catalogs.`name` `catalog_name`
	FROM products products
	JOIN catalogs
	ON products.catalog_id = catalogs.id;
    
SELECT * FROM products_catalogs;