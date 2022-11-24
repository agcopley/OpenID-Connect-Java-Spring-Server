CREATE USER 'oicuser'@'localhost' IDENTIFIED BY 'oicuser';
CREATE USER 'oicuser'@'%' IDENTIFIED BY 'oicuser';

GRANT ALL ON *.* TO 'oicuser'@'localhost';
GRANT ALL ON *.* TO 'oicuser'@'%';
FLUSH PRIVILEGES;


ALTER USER 'oicuser'@'localhost' IDENTIFIED WITH mysql_native_password BY 'oicuser'
