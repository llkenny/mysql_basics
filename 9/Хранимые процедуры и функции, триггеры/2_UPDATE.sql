CREATE DEFINER=`root`@`localhost` TRIGGER `products_BEFORE_UPDATE` BEFORE UPDATE ON `products` FOR EACH ROW BEGIN
	IF ISNULL(NEW.`name`) AND ISNULL(NEW.`description`) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Name or description should be not NULL';
    END IF;
END