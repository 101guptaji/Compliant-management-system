SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE complaintType (
  id int(11) NOT NULL,
  complaint_type varchar(255) DEFAULT NULL,
  Description longtext,
  creationDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  updationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  primary key(id)
);

INSERT INTO complaintType (id, complaint_type, Description, creationDate, updationDate) VALUES
(1, 'Academic', 'complaints regarding faculty behaviors and teaching, course etc.', '2019-11-17 07:10:55', '2019-11-17 07:26:04'),
(2, 'Facilities and Infrastructure', 'complaint regarding classroom cleaning, in-availability of furniture in rooms, water and electricity issues etc. ', '2017-11-17 10:54:06', '0000-00-00 00:00:00'),
(3, 'general', 'other ','2017-11-17 10:54:06', '0000-00-00 00:00:00');

ALTER TABLE complaintType
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;