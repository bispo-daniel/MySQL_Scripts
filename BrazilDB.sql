/*Creating the database brasil*/
CREATE DATABASE IF NOT EXISTS brasil;

/*Setting brasil to be manipulated*/
USE brasil;

/*Creating the table estado DDL*/ 
CREATE TABLE IF NOT EXISTS estado (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') NOT NULL,
    populacao INT NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (nome),
    UNIQUE KEY (sigla)   
);

/*Creating the table cidade DDL*/ 
CREATE TABLE IF NOT EXISTS cidade (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    estado_id INT UNSIGNED NOT NULL,
    populacao INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(estado_id) REFERENCES estado(id)
);

/*Inserting data in the table estado DML*/
INSERT INTO estado (nome, sigla, regiao, populacao) VALUES ('Rio de Janeiro', 'RJ', 'Sudeste', 17463349);
INSERT INTO estado (nome, sigla, regiao, populacao) VALUES ('Minas Gerais', 'MG', 'Sudeste', 21411923);
INSERT INTO estado (nome, sigla, regiao, populacao) VALUES ('São Paulo', 'SP', 'Sudeste', 46649132);
INSERT INTO estado (nome, sigla, regiao, populacao) VALUES ('Santa Catarina', 'SC', 'Sul', 7338473);

/*Inserting data in the table cidade DML*/
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Pomerode', 4, 34561);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Balneário Camboriú', 4, 149227);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Bombinhas', 4, 20889);

INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Holambra', 3, 15605);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Ubatuba', 3, 92819);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Campos do Jordão', 3, 52713);

INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Ouro Preto', 2, 74824);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('São João Del Rei', 2, 90897);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Ipatinga', 2, 267333);

INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Paraty', 1, 44175);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Arraial do Cabo', 1, 30827);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Angra dos Reis', 1, 210171);

/*Inserting ERRONEOUS data in the table cidade DML (The city name is incorrect)*/
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Rio Branco', 1, 307144);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Rio Branco', 2, 47924);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Rio Branco', 3, 63310);
INSERT INTO cidade (nome, estado_id, populacao) VALUES ('Rio Branco', 4, 11311);

/*Updating the row inserted, correcting the name DML*/
UPDATE cidade SET nome = 'Petrópolis' WHERE nome = 'Rio Branco' AND estado_id = 1; 
UPDATE cidade SET nome = 'Diamantina' WHERE nome = 'Rio Branco' AND estado_id = 2; 
UPDATE cidade SET nome = 'Boituva' WHERE nome = 'Rio Branco' AND estado_id = 3; 
UPDATE cidade SET nome = 'Urubici' WHERE nome = 'Rio Branco' AND estado_id = 4; 

/*
select * from estado;
select * from cidade;
*/

select e.sigla as 'State', c.nome as 'City', c.populacao as 'Population'
from estado e
inner join cidade c
on e.id = c.estado_id
order by c.populacao desc;

/* Manipulation now must be done with Python :) */

/*Other examples of DDL on this DB*/
/*
ALTER TABLE estado ADD populacao DECIMAL(10, 2); THIS INSERTS A NEW COLUMN NAMED populacao IN estado;
ALTER TABLE cidade ADD populacao INT(9) NOT NULL; THIS INSERT A NEW COLUMN NAMED populacao IN cidade;

Renaming columns:
ALTER TABLE estado RENAME COLUMN populacao TO populacao_estado; 
ALTER TABLE cidade RENAME COLUMN populacao TO populacao_cidade;

Changing column data type:
ALTER TABLE estado MODIFY COLUMN nome VARCHAR(100) NOT NULL; 
ALTER TABLE estado MODIFY COLUMN nome VARCHAR(100) NOT NULL; 
ALTER TABLE cidade MODIFY COLUMN populacao INT(100) NOT NULL;
ALTER TABLE cidade MODIFY COLUMN populacao INT(100) NOT NULL;

Deleting columns:
ALTER TABLE estado DROP COLUMN populacao; 
ALTER TABLE cidade DROP COLUMN populacao; 

Deleting from Brasil:
DROP TABLE estado;
DROP TABLE cidade;

Deleting brasil DB:
DROP DATABASE brasil;
*/

/*
Other examples of DML on this DB:

UPDATE estado SET nome = 'ACRE' WHERE nome = 'Acre' AND id = 1;
UPDATE cidade SET nome = 'RIO BRANCO' WHERE nome = 'Rio Branco';

DELETE FROM estado WHERE nome = 'Acre' AND sigla = 'AC' AND ID = 1;
DELETE FROM cidade WHERE nome = 'Rio Branco';  
DELETE FROM estado; DELETES EVERY ROW FROM estado.
DELETE FROM cidade; DELETES EVERY ROW FROM cidade...
*/

/*
DQL Examples:
    
SELECT id, nome AS nome_do_estado FROM estado;
SELECT id, nome AS city_name FROM cidade;

SELECT nome FROM estado ORDER BY name;
    
SELECT * from estado
INNER JOIN cidade
ON estado.id = cidade.estado_id;
*/