CREATE DATABASE IF NOT EXISTS atmDB;
USE atmDB;

/*
describe account;
drop database atmDB;
*/

CREATE TABLE IF NOT EXISTS customer (
    id int not null PRIMARY KEY,
    name varchar(100) not null
);

CREATE TABLE IF NOT EXISTS account (
     id int not null PRIMARY KEY,
     balance double not null,
     pass varchar(8) not null,
     customer_id_fk int not null,
     foreign key (customer_id_fk) references customer(id)
 )	
