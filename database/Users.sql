SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE users (
  id int(11) NOT NULL,
  fullName varchar(255) DEFAULT NULL,
  gender varchar(50) default NULL,
  catagory varchar(255) default NULL,
  department varchar(255) DEFAULT NULL,
  Enrollno varchar(255) NOT NULL,
  userEmail varchar(255) not NULL,
  password varchar(255) NOT  NULL,
  Mobileno bigint(11) DEFAULT NULL,

  regDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updationDate timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  primary key(id)
);

INSERT INTO users ( id, fullName,gender,catagory,department,Enrollno, userEmail, password, Mobileno, regDate, updationDate) VALUES
(1, 'himanshu gupta','male','3rd year','CSE','bt17cse093', '101guptaji@gmail.com', 'himanshu@123', 9988448888, '2019-11-17 11:44:58', '2019-11-18 12:39:44'),
(2, 'Aman Kumar','male','2nd year','ECE','bt18ece012', 'amanalpha@gmail.com', 'amanalpha@123', 9999857860, '2019-11-17 11:44:52', '2019-11-18 12:39:44');

ALTER TABLE users
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;