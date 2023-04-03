CREATE DATABASE IF NOT EXISTS BandsDB;
use BandsDB;

CREATE TABLE IF NOT EXISTS band (
    band_id INT PRIMARY KEY AUTO_INCREMENT,
    band_name VARCHAR(100) NOT NULL,
    band_birth YEAR NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(100) NOT NULL, 
    album_birth YEAR NOT NULL,
    band_id_FK int NOT NULL,
    FOREIGN KEY (band_id_FK) REFERENCES band (band_id)
);

/*
To check the table's columns:
	describe band;
	describe album;

To delete the database:
	drop database BandsDB;
    
To delete tables:
	drop table band;
	drop table album;
*/