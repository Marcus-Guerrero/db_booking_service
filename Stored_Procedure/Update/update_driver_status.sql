DELIMITER $$
CREATE PROCEDURE update_driver_status (
	IN u_driver_id INT)
BEGIN
	UPDATE driver_info
    SET driver_status = CASE driver_status
		WHEN "Active" THEN "Booked"
        ELSE "Active"
	END
    WHERE driver_id = u_driver_id AND operating = "Online";
END $$
DELIMITER ;