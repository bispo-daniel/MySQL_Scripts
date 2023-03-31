CREATE DATABASE spotify;
use spotify;

CREATE TABLE band (
    band_id INT(2) NOT NULL AUTO_INCREMENT,
    band_name VARCHAR(30) NOT NULL,
    band_birth YEAR NOT NULL,
    PRIMARY KEY (band_id)
);

CREATE TABLE album (
    album_id INT(2) NOT NULL AUTO_INCREMENT,
    album_name VARCHAR(30) NOT NULL,
    album_birth YEAR NOT NULL,
    band_id_FK int,
    PRIMARY KEY (album_id),
    FOREIGN KEY (band_id_FK)
        REFERENCES band (band_id)
);

insert into band (band_name, band_birth) values 
("Black Sabbath", 1968);

insert into album (album_name, album_birth, band_id_FK) values
("Black Sabbath", 1970, 1);