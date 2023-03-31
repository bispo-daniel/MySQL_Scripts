create database hugeDB;

use hugeDB;

create table person (
	id int(9) not null auto_increment,
    nome varchar(30) not null,
    dia1 DATETIME DEFAULT NOW(),
	dia2 DATETIME DEFAULT NOW(),
    primary key(id)
);

ALTER TABLE person ADD dia3 DATETIME DEFAULT NOW();
ALTER TABLE person ADD dia4 DATETIME DEFAULT NOW();
ALTER TABLE person ADD dia5 DATETIME DEFAULT NOW();

insert into person (nome) values ("dan"), ("den"), ("din"), ("don"), ("dun");