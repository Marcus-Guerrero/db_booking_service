DELIMITER $$
CREATE PROCEDURE update_payment_status (
	IN u_booking_id INT, IN current_payment_status VARCHAR (50))
BEGIN 
	UPDATE booking_info
    SET payment_status = current_payment_status
    WHERE booking_id = u_booking_id;
END $$
DELIMITER ;
