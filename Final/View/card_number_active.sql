/**
Представление по номерам карт и статусу их активности. 
*/

CREATE OR REPLACE VIEW card_number_active AS
SELECT `number`, `active` FROM card ORDER BY `number`;

SELECT * FROM card_number_active;