DELIMITER $$
CREATE PROCEDURE get_payment_details (
	IN u_payment_id INT)
BEGIN
	SELECT payment_type, 
		   e_wallet_type,
           phone_number,
           balance
	FROM payment
    WHERE payment_id = u_payment_id;
END $$
DELIMITER ;
