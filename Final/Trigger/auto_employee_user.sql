/**
Создание автоматической учетной записи для нового пользователя.
*/

DROP TRIGGER IF EXISTS `employee_AFTER_INSERT`;

DELIMITER $$
USE `max_oil`$$
CREATE DEFINER = CURRENT_USER TRIGGER `employee_AFTER_INSERT` AFTER INSERT ON `employee` FOR EACH ROW
BEGIN
	INSERT INTO `user` (`username`, `employee_id`) VALUES (CONCAT('auto_', new.`id`), new.`id`);
END$$
DELIMITER ;
