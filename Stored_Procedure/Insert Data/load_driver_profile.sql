DELIMITER $$
CREATE PROCEDURE load_driver_profile (
	IN u_driver_id INT,
    IN u_driver_profile VARCHAR (150))
BEGIN
	UPDATE driver_info
    SET driver_profile = u_driver_profile 
    WHERE driver_id = u_driver_id;
END $$
DELIMITER ; 