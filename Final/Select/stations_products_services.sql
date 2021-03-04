/**
Выводит список доступных продуктов и услуг по всем точкам продаж
*/

DROP TEMPORARY TABLE IF EXISTS station_products;
CREATE TEMPORARY TABLE station_products
SELECT
	station.id sp_id,
	GROUP_CONCAT(product.`name` ORDER BY product.`name` SEPARATOR ',') products
FROM station_product sp
JOIN station ON sp.station_id = station.id
JOIN product ON sp.product_id = product.id
GROUP BY station.id;
DROP TEMPORARY TABLE IF EXISTS station_products_copy;
CREATE TEMPORARY TABLE station_products_copy AS (SELECT * FROM station_products);

DROP TEMPORARY TABLE IF EXISTS station_services;
CREATE TEMPORARY TABLE station_services
SELECT
	station.id ss_id,
	GROUP_CONCAT(service.`name` ORDER BY service.`name` SEPARATOR ',') services
FROM station_service ss
JOIN station ON ss.station_id = station.id
JOIN service ON ss.service_id = service.id
GROUP BY station.id;
DROP TEMPORARY TABLE IF EXISTS station_services_copy;
CREATE TEMPORARY TABLE station_services_copy AS (SELECT * FROM station_services);

SELECT
	station.address,
	products_services.products,
    products_services.services
FROM (
	SELECT * FROM station_products
	LEFT JOIN station_services
	ON station_products.sp_id = station_services.ss_id
	UNION
	SELECT * FROM station_products_copy
	RIGHT JOIN station_services_copy
	ON station_products_copy.sp_id = station_services_copy.ss_id) products_services
JOIN station
ON station.id = IF(!ISNULL(products_services.sp_id), sp_id, ss_id)
ORDER BY station.address;
