
CREATE TABLE users (
  id int(11) AUTO_INCREMENT primary key NOT NULL ,
  email varchar(20) NOT NULL,
  username varchar(20) NOT NULL,
  role varchar(10) NOT NULL,
  password text NOT NULL,
  created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO users (id, email, username, role, password, created, updated) VALUE
(1, 'test1@mail.com', 'test1', 'user', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00'),
(2, 'test2@mail.com', 'test2', 'admin', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00'),
(3, 'test3@mail.com', 'test3', 'user', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00'),
(4, 'test4@mail.com', 'test4', 'admin', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00'),
(5, 'test5@mail.com', 'test5', 'user', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00'),
(6, 'test6@mail.com', 'test6', 'user', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00'),
(7, 'test7@mail.com', 'test7', 'user', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00'),
(8, 'test8@mail.com', 'test8', 'user', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00'),
(9, 'test9@mail.com', 'test9', 'user', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00'),
(10, 'test10@mail.com', 'test10', 'user', 'test_password', '2020-03-31 00:00:00', '2020-03-31 00:00:00');