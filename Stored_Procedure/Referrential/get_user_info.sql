DELIMITER $$
CREATE PROCEDURE get_user_info (
	IN u_user_id INT)
BEGIN
	SELECT user_id, 
		   CONCAT(first_name, " ", last_name) AS name, 
		   address, 
           birth_date, 
           email, 
           phone_number, 
           password
    FROM user_account
    WHERE user_id = u_user_id;
END $$
DELIMITER ;

