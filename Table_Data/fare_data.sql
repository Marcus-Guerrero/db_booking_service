INSERT INTO fare_matrix (vehicle_type, currency, base_fare, meter_per_increment, cost_per_increment, created_by, modified_by, created_datetime, modified_datetime)
VALUES ("Car", "Pesos", 45, 250, 3.75, "Admin", NULL, "2025-07-01 17:37:59", NULL),
	   ("Motorcycle", "Pesos", 30, 250, 2.75, "Admin", NULL, "2025-07-01 17:37:59", NULL),
       ("E-Bike", "Pesos", 25, 250, 2.50, "Admin", NULL, "2025-07-01 17:37:59", NULL),
       ("Tricycle", "Pesos", 20, 250, 2, "Admin", NULL, "2025-07-01 17:37:59", NULL),
       ("Van", "Pesos", 55, 250, 5, "Admin", NULL, "2025-07-01 17:37:59", NULL),
       ("Jeep", "Pesos", 35, 250, 3, "Admin", NULL, "2025-07-01 17:37:59", NULL);
	
SELECT * FROM booking.fare_matrix;
