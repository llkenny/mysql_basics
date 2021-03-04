/**
Представление по названиям компаний и их телефонам. 
*/

CREATE OR REPLACE VIEW organization_name_phone AS
SELECT `name`, `phone` FROM organization_details ORDER BY `name`;

SELECT * FROM organization_name_phone;