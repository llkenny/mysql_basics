CREATE DEFINER=`root`@`localhost` TRIGGER `catalogs_AFTER_INSERT` AFTER INSERT ON `catalogs` FOR EACH ROW BEGIN
	INSERT INTO `logs` (`date`, `tablename`, id , `name` ) VALUES (NOW(), 'catalogs', NEW.id, NEW.`name`);
END