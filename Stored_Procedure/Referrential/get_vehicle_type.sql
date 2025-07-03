DELIMITER $$
CREATE PROCEDURE get_vehicle_type (
	IN u_driver_id INT)
BEGIN
	SELECT vehicle_type,
		   CONCAT(make, " ", model) AS vehicle_description,
           plate_number
	FROM driver_info
    WHERE driver_id = u_driver_id;
END $$
DELIMITER ; 

