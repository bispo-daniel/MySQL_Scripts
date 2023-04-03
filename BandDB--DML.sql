use BandDB;

insert into band (band_name, band_birth) values 
('Black Sabbath', 1968),
('Led Zeppelin', 1968),
('The Beatles', 1960),
('Deep purple', 1968),
('The Doors', 1965),
('Pink Floyd', 1965),
('Metallica', 1981),
('Iron Maiden', 1975),
('Pantera', 1981),
('Megadeth', 1983),
('Guns n Roses', 1985),
('Red Hot Chili Peppers', 1983),
('The Rolling Stones', 1962),
('AC/DC', 1973),
('Cream', 1966),
('Creedence Clearwater Revival', 1958);

insert into album (album_name, album_birth, band_id_FK) values
('Black Sabbath', 1970, 1);

