DELIMITER $$
CREATE PROCEDURE get_booking_history (
	IN u_booking_id INT)
BEGIN
	SELECT b.booking_id AS booking_id, 
		   b.booking_type AS booking_type,
		   b.booking_date AS booking_date,
           CONCAT(d.first_name, " ", d.last_name) AS driver_name,
           CONCAT(d.make, " ", d.model, " ", d.year) AS vehicle,
           d.plate_number AS plate_number,
           b.status AS status,
           b.origin AS origin,
           b.pick_up_time AS pick_up_time,
           b.destination AS destination,
           b.drop_off_time AS drop_off_time,
           b.travel_length AS travel_length,
           d.vehicle_type AS vehicle_type,
           b.total AS total_amount,
           p.payment_type AS payment_type,
           b.payment_status AS payment_status
	FROM booking_info b
		INNER JOIN driver_info d ON b.driver_id = d.driver_id
        INNER JOIN payment p ON b.payment_id = p.payment_id
	WHERE booking_id = u_booking_id
	ORDER BY b.booking_id;
END $$
DELIMITER ;
