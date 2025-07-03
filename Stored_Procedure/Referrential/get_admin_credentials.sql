DELIMITER $$
CREATE PROCEDURE get_admin_credentials(IN a_email VARCHAR (100), IN a_password VARCHAR (50))
BEGIN
	SELECT CASE WHEN COUNT(*) > 0 THEN 1
    ELSE 0 END AS is_valid
    FROM admin
    WHERE email = a_email AND password= a_password;
END $$
DELIMITER ;