CREATE DATABASE IF NOT EXISTS wordpress ;
CREATE USER IF NOT EXISTS 'ie-laabb'@'%' IDENTIFIED BY 'Ilias' ;
GRANT ALL PRIVILEGES ON wordpress.* TO 'ie-laabb'@'%' ;
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;