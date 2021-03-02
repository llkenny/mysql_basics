-- product
INSERT INTO `max_oil`.`product` (`name`) VALUES ('ДТ');
INSERT INTO `max_oil`.`product` (`name`) VALUES ('ДТ Зима');
INSERT INTO `max_oil`.`product` (`name`) VALUES ('АИ-92');
INSERT INTO `max_oil`.`product` (`name`) VALUES ('АИ-95');
INSERT INTO `max_oil`.`product` (`name`) VALUES ('АИ-95 Турбо');
INSERT INTO `max_oil`.`product` (`name`) VALUES ('АИ-98');
INSERT INTO `max_oil`.`product` (`name`) VALUES ('АИ-98 Анлим');
INSERT INTO `max_oil`.`product` (`name`) VALUES ('Американо');
INSERT INTO `max_oil`.`product` (`name`) VALUES ('Капучино');
INSERT INTO `max_oil`.`product` (`name`) VALUES ('Хотдог');

-- service
INSERT INTO `max_oil`.`service` (`name`) VALUES ('Мойка стекол');
INSERT INTO `max_oil`.`service` (`name`) VALUES ('Шиномонтаж');
INSERT INTO `max_oil`.`service` (`name`) VALUES ('Аренда прицепов');
INSERT INTO `max_oil`.`service` (`name`) VALUES ('Кафе');
INSERT INTO `max_oil`.`service` (`name`) VALUES ('Туалет');
INSERT INTO `max_oil`.`service` (`name`) VALUES ('Оплата виртуальной картой');
INSERT INTO `max_oil`.`service` (`name`) VALUES ('Магазин');
INSERT INTO `max_oil`.`service` (`name`) VALUES ('Грузовая стоянка');

-- organization_details
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('Макс Нефть', '000000000001', 'Volkovskiy Prospekt, 83, Sankt-Peterburg, 192102', '700012345600');
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('ТукОил', '000000000002', 'Sovetskaya Ulitsa, 15, Tosno, Ленинградская, 187000', '700012345601');
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('РосБензин', '000000000003', 'Ulitsa Krasnaya, 15, Kungur, Perm Krai, 617470', '700012345602');
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('Тат Масла', '000000000004', 'Ulitsa Rodonitovaya, 34, Yekaterinburg, Sverdlovsk Oblast, 620089', '700012345603');
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('Несле', '000000000005', 'Ulitsa Ervye, 24, Tyumen, Tyumen Oblast, 625022', '700012345604');
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('Shock', '000000000006', 'Ulitsa Orekhova, 42, Komsomolsk-on-Amur, Khabarovskiy kray, 681029', '700012345605');
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('Сеть автомоек номер 1', '000000000007', 'Ulitsa Mira, 10, Zhigulevsk, Samara Oblast, 445350', '700012345606');
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('Лучший сервис грузовых автомобилей', '000000000008', 'Prospekt Lenina, 186 корпус 1, Arzamas, Nizhegorodskaya oblast, 607220', '700012345607');
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('Колеса ЛенОбл', '000000000009', 'Ulitsa Matrosova, 76, Chkalovsk, Nizhegorodskaya oblast, 606541', '700012345608');
INSERT INTO `max_oil`.`organization_details` (`name`, `inn`, `address`, `phone`) VALUES ('КубаньАЗС', '000000000010', 'Ulitsa Askoldovtsev, 26 корпус 2, Murmansk, Murmanskaya oblast, 183040', '700012345609');

-- parter
INSERT INTO `max_oil`.`partner` (`organization_details_id`) VALUES ('2');
INSERT INTO `max_oil`.`partner` (`organization_details_id`) VALUES ('4');
INSERT INTO `max_oil`.`partner` (`organization_details_id`) VALUES ('6');
INSERT INTO `max_oil`.`partner` (`organization_details_id`) VALUES ('7');



