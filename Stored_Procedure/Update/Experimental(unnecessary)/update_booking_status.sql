DELIMITER $$
CREATE PROCEDURE update_booking_status (
	IN u_booking_id INT, 
    IN current_status VARCHAR (100))
BEGIN
	UPDATE booking_info
    SET status = current_status
    WHERE booking_id = u_booking_id;
END $$
DELIMITER ;

