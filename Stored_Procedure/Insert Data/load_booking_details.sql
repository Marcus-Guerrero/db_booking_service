DELIMITER $$
CREATE PROCEDURE load_booking_details (
	IN u_user_id INT,
	IN u_booking_type VARCHAR (25),
    IN u_booking_date DATETIME,
    IN u_status VARCHAR (100),
    IN u_driver_id INT,
    IN u_origin VARCHAR (1000),
    IN u_pick_up_time DATETIME,
    IN u_destination VARCHAR (1000),
    IN u_drop_off_time DATETIME,
    IN u_travel_length DEC (6, 2),
    IN u_matrix_id INT,
    IN u_total DEC (7, 2),
    IN u_payment_id INT,
    IN u_payment_status VARCHAR (50))
BEGIN
	INSERT INTO booking_info (
		user_id, 
		booking_type, 
		booking_date, 
		status, 
		driver_id, 
		origin, 
		pick_up_time, 
		destination, 
		drop_off_time, 
		travel_length, 
		matrix_id, 
		total, 
		payment_id, 
		payment_status)
    VALUES (
		u_user_id, 
		u_booking_type, 
		u_booking_date, 
		u_status, 
		u_driver_id, 
		u_origin, 
		u_pick_up_time, 
		u_destination, 
		u_drop_off_time, 
		u_travel_length, 
		u_matrix_id, 
		u_total, 
		u_payment_id, 
		u_payment_status);
END $$
DELIMITER ;
    
    