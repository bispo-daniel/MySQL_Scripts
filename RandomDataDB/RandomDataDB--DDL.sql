CREATE DATABASE IF NOT EXISTS randomdatadb;
use randomdatadb;

CREATE TABLE IF NOT EXISTS randomClient (
  id bigint auto_increment primary key,
  randomName varchar(100) not null,
  randomBalance bigint UNSIGNED not null,
  randomDate date not null,
  randomBank varchar(100) not null,
  insertDateTime datetime DEFAULT NOW()
);

select * from randomClient;

select sum(randomBalance) from randomClient;

select id, randomBalance from randomClient ORDER BY randomBalance;

/*

drop database randomdatadb;

*/