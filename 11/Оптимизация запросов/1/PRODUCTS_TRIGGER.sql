CREATE DEFINER=`root`@`localhost` TRIGGER `products_AFTER_INSERT` AFTER INSERT ON `products` FOR EACH ROW BEGIN
	INSERT INTO `logs` (`date`, `tablename`, id , `name` ) VALUES (NOW(), 'products', NEW.id, NEW.`name`);
END