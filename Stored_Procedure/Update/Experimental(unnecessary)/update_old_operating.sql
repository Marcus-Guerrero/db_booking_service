DELIMITER $$
DROP PROCEDURE update_operating_status (
	IN u_driver_id INT)
BEGIN
	UPDATE driver_info
    SET operating = CASE operating
		WHEN "Offline" THEN "Online"
        ELSE "Offline"
	END
    WHERE driver_id = u_driver_id;
END $$
DELIMITER ;

CALL update_operating_status (1);
SELECT * FROM driver_info WHERE driver_id = 1