DELIMITER $$
CREATE PROCEDURE update_balance (IN user_payment_id INT, IN current_balance DEC (7, 2))
BEGIN
	UPDATE payment
    SET balance = current_balance
    WHERE payment_id = user_payment_id;
END $$
DELIMITER ;