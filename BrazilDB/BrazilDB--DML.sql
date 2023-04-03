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
Other examples of DML on this DB:

UPDATE estado SET nome = 'ACRE' WHERE nome = 'Acre' AND id = 1;
UPDATE cidade SET nome = 'RIO BRANCO' WHERE nome = 'Rio Branco';

DELETE FROM estado WHERE nome = 'Acre' AND sigla = 'AC' AND ID = 1;
DELETE FROM cidade WHERE nome = 'Rio Branco';  
DELETE FROM estado; DELETES EVERY ROW FROM estado.
DELETE FROM cidade; DELETES EVERY ROW FROM cidade...
*/
