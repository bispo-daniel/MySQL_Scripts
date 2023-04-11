CREATE DATABASE IF NOT EXISTS randomdatadb;
use randomdatadb;

CREATE TABLE IF NOT EXISTS randomData (
  id int auto_increment primary key,
  randomNumber bigint UNSIGNED not null,
  randomString longtext not null,
  randomDate date not null
);

/*
  randomNumber limits: 0 - 18,446,744,073,709,551,615
  randomString limits: 4,294,967,295 characters
  randomDate limits: '1000-01-01' to '9999-12-31'
*/

insert into randomData (randomNumber, randomString, randomDate) 
values (0, 'o', '1000-01-01');

select * from randomData;