DELIMITER $$
CREATE PROCEDURE create_booking (
	IN u_user_id INT,
    IN u_booking_type VARCHAR (25),
    IN u_booking_date DATETIME,
    IN u_status VARCHAR (100),
    IN u_origin VARCHAR (1000),
    IN u_destination VARCHAR (1000),
    IN u_travel_length DEC (6, 2),
    IN u_payment_id INT,
    IN u_payment_status VARCHAR(50))
BEGIN
	INSERT INTO booking_info (
		user_id, 
		booking_type, 
		booking_date, 
		status, 
        origin, 
        destination,
        travel_length,
        payment_id, 
		payment_status)
	VALUES (
		u_user_id, 
		u_booking_type, 
		u_booking_date, 
		u_status, 
        u_origin, 
        u_destination, 
        u_travel_length,
        u_payment_id, 
		u_payment_status);
END $$
DELIMITER ;