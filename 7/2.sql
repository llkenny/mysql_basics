-- Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT
	p.id,
	p.`name`,
    p.`description`,
	c.`name` catalog
FROM products p
JOIN catalogs c
ON p.catalog_id = c.id
