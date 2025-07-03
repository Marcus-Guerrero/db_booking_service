DELIMITER $$
CREATE PROCEDURE load_driver_details (
	IN driver_first_name VARCHAR (50),
    IN driver_last_name VARCHAR (50),
    IN driver_make VARCHAR (50),
    IN driver_model VARCHAR (50),
    IN driver_year INT,
    IN driver_vehicle_type VARCHAR (50),
    IN driver_plate_number VARCHAR (10),
    IN driver_mv_file_number VARCHAR (50),
    IN driver_contact_number VARCHAR (50),
    IN driver_operating VARCHAR (50),
    IN current_driver_status VARCHAR (20),
    IN current_driver_profile VARCHAR (150))

BEGIN
	INSERT INTO driver_info (
		first_name, 
		last_name, 
		make, 
        model, 
		year, 
		vehicle_type, 
		plate_number, 
		mv_file_number, 
		contact_number, 
		operating, 
		driver_status,
		driver_profile)
    VALUES (
		driver_first_name, 
		driver_last_name, 
		driver_make, 
		driver_model, 
		driver_year, 
		driver_vehicle_type, 
		driver_plate_number, 
		driver_mv_file_number, 
		driver_contact_number, 
		driver_operating, 
		current_driver_status,
		current_driver_profile);
END $$
DELIMITER ;