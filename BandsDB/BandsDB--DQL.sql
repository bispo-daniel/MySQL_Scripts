USE BandsDB;

SELECT * FROM band;
SELECT * FROM album;

SELECT * FROM band order by band_birth;

SELECT b.band_name, a.album_name, a.album_birth FROM album a
join band b
on b.band_id = a.band_id_FK
where album_birth < '1970' ORDER BY album_birth;

select album_name, album_birth as 'Released', b.band_name as 'Band' from album a
join band b
on a.band_id_FK = b.band_id;