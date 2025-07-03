DELIMITER $$
CREATE PROCEDURE load_e_wallet_details (
	IN user_payment_id INT,
	IN user_e_wallet_type VARCHAR (50),
    IN user_phone_number VARCHAR (50),
    IN user_balance DEC (7, 2))
BEGIN
	UPDATE payment
    SET e_wallet_type =user_e_wallet_type,
		phone_number= user_phone_number,
        balance = user_balance
	WHERE payment_id = user_payment_id;
END $$
DELIMITER ;

