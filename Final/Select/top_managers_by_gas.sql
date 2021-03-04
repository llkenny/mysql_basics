/**
Выводит имена, телефоны менеджеров и названия трех компаний,
которые пролили больше всего бензина за текущий месяц по активным договорам.
*/

DROP TEMPORARY TABLE IF EXISTS top_org_by_gas;
CREATE TEMPORARY TABLE top_org_by_gas AS
SELECT
	(SELECT organization_id FROM contract WHERE id = (SELECT contract_id FROM card WHERE id = card_id)) organization_id,
	SUM(`count`) `sum`
FROM `transaction`
WHERE
	!ISNULL(product_id)
    AND product_id IN (SELECT id FROM product WHERE `name` LIKE "АИ%")
    AND MONTH(`date`) = MONTH(NOW())
    AND (SELECT `active` FROM contract WHERE id = (SELECT contract_id FROM card WHERE id = card_id)) = TRUE
GROUP BY organization_id
ORDER BY `sum` DESC
LIMIT 3;

SELECT manager.`name`, manager.phone, od.`name` company
FROM top_org_by_gas tog
JOIN manager ON manager.id = (SELECT manager_id FROM `organization` WHERE id = tog.organization_id)
JOIN organization_details od ON od.id = (SELECT organization_details_id FROM `organization` WHERE id = tog.organization_id);