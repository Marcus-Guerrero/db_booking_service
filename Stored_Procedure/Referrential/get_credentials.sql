DELIMITER $$
CREATE PROCEDURE get_credentials(IN mail VARCHAR (100), IN passwd VARCHAR (50))
BEGIN
	SELECT CASE WHEN COUNT(*) > 0 THEN 1
    ELSE 0 END AS is_valid
    FROM user_account
    WHERE email = mail AND password= passwd;
END $$
DELIMITER ;

