create database hugeDB;
use hugeDB;

create table person (
	id int unsigned auto_increment primary key,
    nome varchar(30) not null,
    dia1 DATETIME DEFAULT NOW(),
	dia2 DATETIME DEFAULT NOW(),
	dia3 DATETIME DEFAULT NOW(),
	dia4 DATETIME DEFAULT NOW(),
	dia5 DATETIME DEFAULT NOW()
);

--DML:
insert into person (nome) values ("dan"), ("den"), ("din"), ("don"), ("dun");