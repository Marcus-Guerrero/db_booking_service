DELIMITER $$
CREATE PROCEDURE change_payment_type (
	IN user_payment_id INT,
    IN user_payment_type VARCHAR (50))
BEGIN
	UPDATE payment
    SET payment_type = user_payment_type,
		e_wallet_type = NULL,
		phone_number = NULL,
        balance = NULL
    WHERE payment_id = user_payment_id;
    
END $$
DELIMITER ;

