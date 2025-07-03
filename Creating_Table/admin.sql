CREATE TABLE admin(
	admin_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    address VARCHAR (100),
    birth_date DATE,
    email VARCHAR (100),
    phone_number VARCHAR (50),
    password VARCHAR (50),
    PRIMARY KEY (admin_id));