DROP TABLE IF EXISTS CITIZENS;
CREATE TABLE CITIZENS (
  SSID int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  LastName varchar(225),
  Firstname varchar(225),
  DOB varchar(225),
  SEX varchar(225),
  POB varchar (225),
  STATUS varchar(255),
  PASSWORD varchar(225),
  PERMISSION varchar(225)
);
