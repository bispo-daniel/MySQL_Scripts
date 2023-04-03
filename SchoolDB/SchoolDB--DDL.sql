CREATE DATABASE IF NOT EXISTS SchoolDB;
USE SchoolDB;

CREATE TABLE IF NOT EXISTS turma ( 
 idturma BIGINT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 periodo CHAR(1) NOT NULL  
); 

CREATE TABLE IF NOT EXISTS responsavel_financeiro ( 
 idresponsavel_financeiro BIGINT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 cpf BIGINT NOT NULL,  
 nascimento DATE NOT NULL,  
 endereco VARCHAR(100) NOT NULL,  
 telefone BIGINT NOT NULL,  
 email VARCHAR(100) NOT NULL  
); 

CREATE TABLE IF NOT EXISTS responsavel_pedagogico ( 
 idresponsavel_pedagogico BIGINT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 cpf BIGINT NOT NULL,  
 nascimento DATE NOT NULL,  
 endereco VARCHAR(100) NOT NULL,  
 telefone BIGINT NOT NULL,  
 email VARCHAR(100) NOT NULL  
); 

CREATE TABLE IF NOT EXISTS aluno ( 
 ra BIGINT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 cpf BIGINT NOT NULL,  
 nascimento DATE NOT NULL,  
 endereco VARCHAR(100) NOT NULL,  
 telefone BIGINT NOT NULL,  
 email VARCHAR(100) NOT NULL,  
 idresponsavel_pedagogico BIGINT NOT NULL,  
 idresponsavel_financeiro BIGINT NOT NULL,  
 idturma BIGINT NOT NULL  
); 

CREATE TABLE IF NOT EXISTS nota ( 
 idnota BIGINT PRIMARY KEY AUTO_INCREMENT,  
 nota BIGINT NOT NULL,  
 idmateria BIGINT NOT NULL,  
 ra BIGINT NOT NULL  
); 

CREATE TABLE IF NOT EXISTS professor ( 
 idprofessor BIGINT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 cpf BIGINT NOT NULL,  
 valor_hora_aula BIGINT NOT NULL,  
 nascimento DATE NOT NULL,  
 endereco VARCHAR(100) NOT NULL,  
 telefone BIGINT NOT NULL,  
 email VARCHAR(100) NOT NULL  
); 

CREATE TABLE IF NOT EXISTS materia ( 
 idmateria BIGINT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL  
); 

CREATE TABLE IF NOT EXISTS materia_professor (  
 idturma BIGINT NOT NULL,  
 idprofessor BIGINT NOT NULL,  
 idmateria BIGINT NOT NULL,
 CONSTRAINT idmateria_professor PRIMARY KEY (idturma, idprofessor, idmateria)
); 

ALTER TABLE aluno ADD FOREIGN KEY (idresponsavel_pedagogico) REFERENCES responsavel_pedagogico (idresponsavel_pedagogico);
ALTER TABLE aluno ADD FOREIGN KEY (idresponsavel_financeiro) REFERENCES responsavel_financeiro (idresponsavel_financeiro);
ALTER TABLE aluno ADD FOREIGN KEY (idturma) REFERENCES turma (idturma);
ALTER TABLE nota ADD FOREIGN KEY (idmateria) REFERENCES materia (idmateria);
ALTER TABLE nota ADD FOREIGN KEY (ra) REFERENCES aluno (ra);

ALTER TABLE materia_professor ADD FOREIGN KEY (idturma) REFERENCES turma (idturma);
ALTER TABLE materia_professor ADD FOREIGN KEY (idprofessor) REFERENCES professor (idprofessor);
ALTER TABLE materia_professor ADD FOREIGN KEY (idmateria) REFERENCES materia (idmateria);