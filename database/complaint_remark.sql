SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE complaintremark (
  id int(11) NOT NULL,
  complaintNumber int(11) NOT NULL,
  status varchar(255) not null,
  remark mediumtext NOT NULL,
  remarkDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  primary key(id)
);

INSERT INTO complaintremark (id, complaintNumber,status, remark, remarkDate) VALUES
(1, 2, 'in process', 'Ho gya tera to', '2019-11-17 17:29:19'),
(2, 9, 'in process', 'nikal pahli fursat me', '2019-11-17 18:37:59'),
(3, 3, 'in process', 'kyu niklu', '2019-11-18 15:57:43'),
(4, 19, 'closed', 'case solved', '2019-11-19 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2019-11-19 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'beta mange car scooter baap raji', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08');

ALTER TABLE complaintremark
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;