CREATE DATABASE IF NOT EXISTS SchoolDB;
USE SchoolDB;

CREATE TABLE IF NOT EXISTS turma ( 
 id_turma INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 periodo CHAR(1) NOT NULL  
);

CREATE TABLE IF NOT EXISTS aluno ( 
 RA INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 cpf INT NOT NULL,  
 nascimento DATE NOT NULL,  
 endereco VARCHAR(100) NOT NULL,  
 telefone INT NOT NULL,  
 email VARCHAR(100) NOT NULL,  
 fk_id_turma INT UNSIGNED NOT NULL,
 FOREIGN KEY (fk_id_turma) REFERENCES turma(id_turma)
);

CREATE TABLE IF NOT EXISTS materia ( 
 id_materia INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL
 ); 

CREATE TABLE IF NOT EXISTS nota ( 
 id_nota INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,  
 nota INT UNSIGNED NOT NULL,  
 fk_id_materia INT UNSIGNED NOT NULL,  
 fk_RA_aluno INT UNSIGNED NOT NULL,
 FOREIGN KEY (fk_id_materia) REFERENCES materia (id_materia),
 FOREIGN KEY (fk_RA_aluno) REFERENCES aluno (RA)
);

CREATE TABLE IF NOT EXISTS professor ( 
 id_professor INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 cpf INT NOT NULL,  
 valor_hora_aula INT NOT NULL,  
 nascimento DATE NOT NULL,  
 endereco VARCHAR(100) NOT NULL,  
 telefone INT NOT NULL,  
 email VARCHAR(100) NOT NULL  
); 

CREATE TABLE IF NOT EXISTS materia_professor (  
 id_turma INT UNSIGNED NOT NULL,  
 id_professor INT UNSIGNED NOT NULL,  
 id_materia INT UNSIGNED NOT NULL,
 CONSTRAINT id_materia_professor PRIMARY KEY (id_turma, id_professor, id_materia)
); 

ALTER TABLE materia_professor ADD FOREIGN KEY (id_turma) REFERENCES turma (id_turma);
ALTER TABLE materia_professor ADD FOREIGN KEY (id_professor) REFERENCES professor (id_professor);
ALTER TABLE materia_professor ADD FOREIGN KEY (id_materia) REFERENCES materia (id_materia);