CREATE TABLE user_account(
	user_id INT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR (50),
	last_name VARCHAR (50),
	address VARCHAR (150),
	birth_date DATE,
	email VARCHAR (100),
	phone_number VARCHAR (50),
    password VARCHAR(50),
    created_by VARCHAR (100),
    modified_by VARCHAR (100),
    created_datetime DATETIME,
    modified_datetime DATETIME,
    PRIMARY KEY (user_id)
);

