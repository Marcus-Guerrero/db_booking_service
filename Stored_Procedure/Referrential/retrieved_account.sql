DELIMITER $$
CREATE PROCEDURE retrieved_account(
	IN u_user_id INT,
    IN u_first_name VARCHAR (50),
    IN u_last_name VARCHAR (50),
    IN u_birth_date DATE)
BEGIN
	SELECT CASE WHEN COUNT(*) > 0 THEN 1
    ELSE 0 END AS is_retrieved
    FROM user_account
    WHERE user_id = u_user_id 
		  AND first_name = u_first_name 
          AND last_name = u_first_name 
          AND birth_date = u_birth_date;
END $$
DELIMITER ;