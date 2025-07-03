DELIMITER $$
CREATE PROCEDURE update_operating_status(
	IN u_driver_id INT)
BEGIN
	UPDATE driver_info
    SET operating = CASE operating
		WHEN "Offline" THEN "Online"
        ELSE "Offline"
	END,
		driver_status = CASE operating
		WHEN "Offline" THEN NULL
        ELSE "Active"
	END
    WHERE driver_id = u_driver_id;
END $$
DELIMITER ;