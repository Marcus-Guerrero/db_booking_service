DELIMITER $$
CREATE PROCEDURE cancel_booking (
	IN u_booking_id INT)
BEGIN
	UPDATE booking_info
    SET status = CASE status
		WHEN "Driver Found, On the Way" THEN "Cancelled"
        ELSE "Cancelled"
	END,
    payment_status = CASE status
		WHEN "Cancelled" THEN  "Cancelled"
		ELSE "Cancelled"
	END,
    drop_off_time = CASE status 
		WHEN "Cancelled" THEN NULL
        ELSE NULL
	END
    WHERE booking_id = u_booking_id;
END $$
DELIMITER ; 