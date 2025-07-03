DELIMITER $$
CREATE PROCEDURE update_booking (
	IN u_booking_id INT,
    IN u_driver_id INT,
    IN u_matrix_id INT,
    IN u_total DEC (7, 2))
BEGIN
	UPDATE booking_info
    SET driver_id = COALESCE(u_driver_id, driver_id),
        matrix_id = COALESCE(u_matrix_id, matrix_id),
        total = COALESCE(u_total, total),
        status = CASE status
			WHEN "Searching" THEN "Driver Found, On the Way"
            WHEN "Driver Found, On the Way" THEN "Pick-Up"
            WHEN "Pick-Up" THEN "Driving to your destination"
            WHEN "Driving to your destination" THEN "Arrived"
            WHEN "Arrived" THEN "Drop-Off"
            ELSE "Booking Complete"
		END,
        payment_status = CASE status
			WHEN "Driver Found, On the Way" THEN "Pending"
            WHEN "Pick-Up" THEN "Pending"
            WHEN "Driving to your destination" THEN "Pending"
            WHEN "Arrived" THEN "Pending"
            WHEN "Drop-Off" THEN "Pending"
            ELSE "Payed"
		END,
        pick_up_time = CASE status
			WHEN "Driver Found, On the Way" THEN NOW()
            ELSE pick_up_time
		END,
        drop_off_time = CASE status
			WHEN "Driver Found, On the Way" THEN NULL
            WHEN "Pick-Up" THEN NULL
            WHEN "Driving to your destination" THEN NULL
            WHEN "Arrived" THEN NULL
            ELSE NOW()
		END
	WHERE booking_id = u_booking_id AND status != "Cancelled";
END $$
DELIMITER ;
