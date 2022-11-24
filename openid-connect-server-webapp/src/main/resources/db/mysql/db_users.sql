CREATE USER 'oicuser'@'localhost' IDENTIFIED WITH mysql_native_password 'oicuser';
CREATE USER 'oicuser'@'%' IDENTIFIED WITH mysql_native_password 'oicuser';

GRANT ALL ON *.* TO 'oicuser'@'localhost';
GRANT ALL ON *.* TO 'oicuser'@'%';
FLUSH PRIVILEGES;
