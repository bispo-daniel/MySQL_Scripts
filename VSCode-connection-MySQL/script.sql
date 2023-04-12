CREATE USER 'X' IDENTIFIED WITH mysql_native_password BY '0';

SHOW GRANTS FOR 'X';

GRANT ALL 
ON *.* 
TO 'bispo';