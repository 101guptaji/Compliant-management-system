SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE admin (
  id int(11) NOT NULL,
  username varchar(250) NOT NULL,
  password varchar(250) NOT NULL,
  updationDate varchar(255) NOT NULL,
  primary key(id)
);




INSERT INTO admin (id, username, password, updationDate) VALUES
(1, 'himanshu', 'himanshu@123', '17-11-2019 04:18:16');

ALTER TABLE admin
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
commit;

