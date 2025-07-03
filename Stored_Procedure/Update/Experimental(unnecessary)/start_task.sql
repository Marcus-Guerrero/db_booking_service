DELIMITER $$
CREATE PROCEDURE start_task(IN driver_current_id INT)
BEGIN
	UPDATE driver_info
    SET driver_status = "In Progress"
    WHERE driver_id = driver_current_id AND driver_status = "Active";
END $$
DELIMITER ;