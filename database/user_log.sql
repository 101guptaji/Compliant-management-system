
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE userlog (
  id int(11) NOT NULL,
  userId int(11) not null,
  username varchar(255) NOT NULL,
  userip varchar(255) DEFAULT NULL,
  loginTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  primary key(id)
);

INSERT INTO userlog (id, userId, username, userIp, loginTime) VALUES
(1, 1, '101guptaji@gmail.com','192.125.18.51','2019-11-17 15:02:26'),
(2, 2, 'amanalpha@gmail.com','192.168.15.11', '2019-11-19 15:02:26');

ALTER TABLE userlog
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;