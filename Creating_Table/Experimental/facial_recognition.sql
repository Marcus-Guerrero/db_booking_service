CREATE TABLE facial_recognition(
	biometric_id INT NOT NULL AUTO_INCREMENT,
    user_id INT,
    face_verification VARCHAR (250),
    created_by VARCHAR (100),
    modified_by VARCHAR (100),
    created_datetime DATETIME,
    modified_datetime DATETIME,
    PRIMARY KEY (biometric_id)
);