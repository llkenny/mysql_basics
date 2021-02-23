CREATE DEFINER=`root`@`localhost` TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
	INSERT INTO `logs` (`date`, `tablename`, id , `name` ) VALUES (NOW(), 'users', NEW.id, NEW.`name`);
END