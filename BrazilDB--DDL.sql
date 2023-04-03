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

/*
	Other examples of DDL on this DB

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
