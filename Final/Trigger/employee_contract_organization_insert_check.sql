/**
Защита от создания пользователя с контрактом, не принадлежащим организации.
*/

DROP TRIGGER IF EXISTS `employee_BEFORE_INSERT`;

DELIMITER $$
CREATE DEFINER = CURRENT_USER TRIGGER `employee_BEFORE_INSERT` BEFORE INSERT ON `employee` FOR EACH ROW
BEGIN
	DECLARE org_id INT;
    SELECT id INTO org_id FROM contract WHERE id = NEW.contract_id AND organization_id = NEW.organization_id LIMIT 1;
	IF ISNULL(org_id) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid contract for the organization';
    END IF;
END$$
DELIMITER ;
