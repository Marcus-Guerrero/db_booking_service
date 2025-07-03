DELIMITER $$
CREATE PROCEDURE get_driver_info (
	IN u_driver_id INT)
BEGIN
	SELECT CONCAT (first_name, " ", last_name) AS name,
		   mv_file_number,
           contact_number,
           driver_status,
           driver_profile
	FROM driver_info
    WHERE driver_id = u_driver_id;
END $$
DELIMITER ;
