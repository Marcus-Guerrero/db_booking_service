CREATE TABLE fare_matrix(
	matrix_id INT NOT NULL AUTO_INCREMENT,
    vehicle_type VARCHAR (50),
    currency VARCHAR (25),
    base_fare DEC(6, 2),
    meter_per_increment DEC (6, 2),
    cost_per_increment DEC (6, 2),
	created_by VARCHAR (100),
    modified_by VARCHAR (100),
    created_datetime DATETIME,
    modified_datetime DATETIME,
    PRIMARY KEY (matrix_id)
);