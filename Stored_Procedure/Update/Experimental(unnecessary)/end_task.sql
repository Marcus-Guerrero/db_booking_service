DELIMITER $$
CREATE PROCEDURE end_task(driver_current_id INT)
BEGIN
	UPDATE driver_info
    SET driver_status = "Active"
    WHERE driver_id = driver_current_id AND driver_status = "In Progress";
END $$
DELIMITER ; 