use BandDB;

insert into band (band_name, band_birth) values 
('Black Sabbath', 1968),
('Led Zeppelin', 1968),
('The Beatles', 1968),
('Deep purple', 1968),
('The Doors', 00),
('Pink Floyd', 00),
('Metallica', 00),
('Iron Maiden', 00),
('Pantera', 00),
('Megadeth', 00),
('Guns n Roses', 00),
('Red Hot Chili Peppers', 00),
('The Rolling Stones', 00),
('AC/DC', 00),
('Cream', 00),
('Creedence Clearwater Revival', 00);

insert into album (album_name, album_birth, band_id_FK) values
('Black Sabbath', 1970, 1);

