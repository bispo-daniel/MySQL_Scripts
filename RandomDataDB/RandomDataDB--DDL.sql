CREATE DATABASE IF NOT EXISTS randomdatadb;
use randomdatadb;

select * from randomClient;

/*
10:39:45
10:40:39
--54s--

10:51:11
10:52:09
--58s--
*/

CREATE TABLE IF NOT EXISTS randomClient (
  id bigint auto_increment primary key,
  randomName varchar(100) not null,
  randomBalance bigint UNSIGNED not null,
  randomDate date not null,
  randomBank varchar(100) not null,
  insertDateTime datetime DEFAULT NOW()
);

insert into randomClient (randomName, randomBalance, randomDate, randomBank) 
values ('a', 1, '1970-1-6', 'OKOK');

