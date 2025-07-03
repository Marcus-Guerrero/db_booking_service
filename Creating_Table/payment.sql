CREATE TABLE payment (
	payment_id INT NOT NULL AUTO_INCREMENT,
	user_id INT,
    payment_type VARCHAR(50),
    e_wallet_type VARCHAR (50),
    phone_number VARCHAR (50),
    balance DEC (7, 2),
	created_by VARCHAR (100),
    modified_by VARCHAR (100),
    created_datetime DATETIME,
    modified_datetime DATETIME,
    PRIMARY KEY (payment_id)
);