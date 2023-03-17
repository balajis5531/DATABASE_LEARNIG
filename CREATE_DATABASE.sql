CREATE DATABASE IF NOT EXISTS sample_project;

USE sample_project;

/*CREATE TABLE IF NOT EXISTS table-name(
column_1 datatype(size) constraint,
column_2 datatype(size) constraint,
column_3 datatype(size) constraint,

)*/




-- delete a table
-- drop table table name

DROP TABLE user ;

CREATE TABLE IF NOT EXISTS user (

username VARCHAR(50),
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
dob DATE,
phone VARCHAR(20),
Password VARCHAR(50) NOT NULL,
PRIMARY KEY (username, email)
);
/*
ALTER TABLE TABLE_NAME
ADD COLUMN _NAME DATATYPE (SIZE);
*/

ALTER TABLE user ADD whatsapp_num VARCHAR(20);

ALTER TABLE user ADD whatsapp INT;

/*
UPDATE DATATYPE OF COLUMN
modify column name datatype size
*/
ALTER TABLE user
MODIFY  whatsapp_num varchar(30);

ALTER TABLE user
DROP whatsapp_num;     -- this is delete qurey


ALTER TABLE user
RENAME COLUMN dob TO date_of_birth;   -- this is rename to column 

INSERT INTO user (username, first_name, last_name, email, date_of_birth, phone, Password, whatsapp)
VALUES('baljis', 'balji', 's', 'balajis@gmail.co', '2003-07-03', '1234567899', '23456789', '1234567890');

select * from user;


UPDATE user SET password= 'new_pasword' where username ='baljis';
select * from user;


DELETE user from user where username='baljis';
select * from user;



DESCRIBE USER;



