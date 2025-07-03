DELIMITER $$
CREATE PROCEDURE get_fare_details (
	IN u_matrix_id INT)
BEGIN
	SELECT vehicle_type, currency, base_fare, meter_per_increment, cost_per_increment
    FROM fare_matrix
    WHERE matrix_id = u_matrix_id;
END $$
DELIMITER ;
