DELIMITER $$
CREATE PROCEDURE load_user_info (
	IN user_first_name VARCHAR (50),
    IN user_last_name VARCHAR (50),
    IN user_address VARCHAR  (150),
    IN user_birth_date DATE,
    IN user_email VARCHAR (100),
    IN user_phone_number VARCHAR (50),
    IN user_password VARCHAR (50),
    IN user_payment_type VARCHAR (50))
BEGIN
	INSERT INTO user_account (first_name, last_name, address, birth_date, email, phone_number, password)
    VALUES (user_first_name, user_last_name, user_address, user_birth_date, user_email, user_phone_number, user_password);
    
    SET @user_distinct_id = (SELECT last_insert_id());
    
    INSERT INTO payment(user_id, payment_type)
    VALUES (@user_distinct_id, user_payment_type);
END $$
DELIMITER ;