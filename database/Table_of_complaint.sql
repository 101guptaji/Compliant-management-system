SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE tblcomplaints (
  complaintNumber int(11) NOT NULL,
  userId int(11) NOT NULL,
  complaintType varchar(255) DEFAULT 'general',
  complaintDetails mediumtext,
  regDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  status varchar(50) DEFAULT NULL,
  lastUpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  primary key(complaintNumber)
);

INSERT INTO tblcomplaints (complaintNumber, userId, complaintType,complaintDetails, regDate, status, lastUpdationDate ) VALUES
(1, 1, 'academic', 'there is no markals and dusters in class', '2019-11-17 11:29:19','closed', '2019-06-24 10:29:37'),
(2, 1, 'facilities and infrastructure','ye bhi koi camppus h', '2019-06-24 10:29:37',NULL, '2019-10-24 10:29:37'),
(3, 2, 'facilities and infrastructure','ye bhi', '2019-10-24 10:29:37','in progress', '2019-10-12 10:29:37');


ALTER TABLE tblcomplaints
  MODIFY complaintNumber int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;