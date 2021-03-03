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

-- manager
INSERT INTO `max_oil`.`manager` (`name`, `personnel_number`, `phone`, `email`) VALUES ('Василий Иванов', 'XXXXXYYYY1', '72001237800', 'v.ivanov@maxoil.com');
INSERT INTO `max_oil`.`manager` (`name`, `personnel_number`, `phone`, `email`) VALUES ('Дмитрий Петров', 'XXXXXYYYY2', '72001237801', 'd.petrov@maxoil.com');
INSERT INTO `max_oil`.`manager` (`name`, `personnel_number`, `phone`, `email`) VALUES ('Иван Кузнецов', 'XXXXXYYYY3', '72001237802', 'i.kuznecov@maxoil.com');
INSERT INTO `max_oil`.`manager` (`name`, `personnel_number`, `phone`, `email`) VALUES ('Алексей Сидоров', 'XXXXXYYYY4', '72001237803', 'a.sidorov@maxoil.com');

-- organization
INSERT INTO `max_oil`.`organization` (`discount_multiplier`, `organization_details_id`, `manager_id`) VALUES ('1', '1', '1');
INSERT INTO `max_oil`.`organization` (`discount_multiplier`, `organization_details_id`, `manager_id`) VALUES ('0.98', '3', '1');
INSERT INTO `max_oil`.`organization` (`discount_multiplier`, `organization_details_id`, `manager_id`) VALUES ('0.98', '5', '2');
INSERT INTO `max_oil`.`organization` (`discount_multiplier`, `organization_details_id`, `manager_id`) VALUES ('0.95', '8', '3');
INSERT INTO `max_oil`.`organization` (`discount_multiplier`, `organization_details_id`, `manager_id`) VALUES ('1', '9', '3');
INSERT INTO `max_oil`.`organization` (`discount_multiplier`, `organization_details_id`, `manager_id`) VALUES ('1.01', '10', '4');

-- station
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Московская область г.Сергиев-Посад Скобяное шоссе', '58.283834', '36.142853', '1', '1');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Белоруссия Гродненская область Лидинский район M-6, 159-й км, 1', '56.285134', '33.232853', '1', '1');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Свердловская область Билимбай Ленина', '54.285234', '36.133823', '1', '1');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Бресткая область Брест ул.Лейтенанта Рябцева', '55.281834', '38.132453', '1', '2');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Калужская область Жиздринский р-н, 300 км трассы М-3 (справа)', '58.289934', '37.135853', '1', '2');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия ХМАО г. Нижневартовск ул. Интернациональная', '55.289714', '37.130953', '1', '2');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Республика Мордовия с. Новое Зубарево Р-180, 91 км', '56.289124', '32.132153', '1', '2');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Москва Каширское шоссе', '59.280334', '31.132143', '0', '3');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Мурманская область Мончегорск Металлургов пр-т', '55.231234', '33.228853', '0', '3');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Нижегородская область г. Нижний Новгород Долгополова', '59.208834', '32.102053', '1', '3');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Челябинская область г. Кыштым ул. Ленина', '57.289124', '33.131353', '1', '4');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Москва Москва Сормовский', '54.209834', '39.100353', '1', '4');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Московская область Щелково Фрунзе', '56.289332', '32.139053', '1', '4');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Свердловская область Талица ул. Луначарского', '58.289084', '34.131953', '1', '4');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Пермский край Пермь Гашкова', '54.289834', '39.137153', '1', '2');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Волгоградская область Урюпинск Репина', '55.287634', '37.131753', '0', '3');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Волгоградская область Урюпинск Штеменко', '58.227834', '34.139853', '1', '1');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Челябинская область г. Куса ул. 3 Интернационала', '53.285134', '37.135253', '1', '4');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Нижегородская область с. Сеченово ул. Советская', '54.319834', '33.132723', '1', '2');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Волгоградская область Новоаннинский Рабочая', '55.287634', '35.132913', '1', '1');
INSERT INTO `max_oil`.`station` (`address`, `latitude`, `longitude`, `active`, `partner_id`) VALUES ('Россия Забайкальский край г. Чита', '59.289534', '36.132283', '1', '3');
