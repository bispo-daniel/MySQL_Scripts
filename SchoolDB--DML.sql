/* DML: Inserting values into tables: */
INSERT INTO turma (nome, periodo) VALUES ('7b', 'm'), ('7c', 'm');

INSERT INTO responsavel_financeiro (nome, cpf, nascimento, endereco, telefone, email) VALUES ('A', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com');

INSERT INTO responsavel_pedagogico (nome, cpf, nascimento, endereco, telefone, email) VALUES ('B', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com');

INSERT INTO aluno (nome, cpf, nascimento, endereco, telefone, email, idresponsavel_pedagogico, idresponsavel_financeiro, idturma) VALUES
    ('Maria', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Marcela', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Maitê', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Milena', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Mariana', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Mirela', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Marcia', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Monica', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Manuela', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Madalena', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Marisa', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Matilde', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Manoela', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Melinda', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Monalisa', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Marilene', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Mafalda', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Magda', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Mariele', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Marinalva', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Gabriel', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Gael', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Guilherme', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Gustavo', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Giovanni', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Gilberto', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Geraldo', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Galileu', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Gilson', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Gleison', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Gaspar', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Germano', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Guido', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Genilson', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Gregory', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Getúlio', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Giuseppe', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Genival', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Godofredo', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Gláucio', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 1),
    ('Daniel', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Douglas', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Davi', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Diego', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Diogo', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Danilo', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Dante', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('David', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Dom', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Denis', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Donald', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Denilson', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Domingos', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Donizete', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Dylan', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Dimas', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Dorival', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Donatelo', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Donatelo', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Damião', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Beatriz', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Bruna', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Bianca', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Bárbara', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Brenda', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Betina', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Beatrice', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Betânia', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Bernadete', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Berenice', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Branca', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Beth', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Berta', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Bernarda', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Betsy', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Bambina', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Bernice', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Britânia', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Barbela', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2),
    ('Belmira', 0, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com', 1, 1, 2);

INSERT INTO professor (nome, cpf, valor_hora_aula, nascimento, endereco, telefone, email) VALUES 
    ('Maria', 0, 35, '1999-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Antonio', 0, 37, '1968-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Edwiges', 0, 39, '1972-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Gilberto', 0, 32, '1964-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Cristiano', 0, 39, '1975-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),

    ('Cláudio', 0, 31, '1961-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Valéria', 0, 30, '1994-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Patricia', 0, 25, '1992-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Odilia', 0, 22, '1975-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Felipe', 0, 39, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),

    ('Sandro', 0, 35, '2001-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Sara', 0, 33, '1985-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Rafael', 0, 32, '1984-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Rogério', 0, 34, '1975-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),
    ('Summer', 0, 37, '1980-01-01', 'Rua', 11900000000, 'xyz@xyz.com'),

    ('Autumn', 0, 36, '1990-01-01', 'Rua', 11900000000, 'xyz@xyz.com');

INSERT INTO materia (nome) VALUES 
    ('Português'),
    ('Matemática'),
    ('História'),
    ('Ciências'),
    ('Geografia'),
    ('Artes'),
    ('Educação Física'),
    ('Inglês');

INSERT INTO materia_professor (idturma, idprofessor, idmateria) VALUES 
    (1, 1, 1), 
    (1, 3, 2),
    (1, 5, 3),
    (1, 7, 4),
    (1, 9, 5),
    (1, 11, 6),
    (1, 13, 7),
    (1, 15, 8),

    (2, 2, 1),
    (2, 4, 2),
    (2, 6, 3),
    (2, 8, 4),
    (2, 10, 5),
    (2, 12, 6),
    (2, 14, 7),
    (2, 16, 8);

/*
delete from aluno where ra > 80;
delete from professor where idprofessor > 16;
delete from materia where idmateria > 8;
delete from responsavel_financeiro where idresponsavel_financeiro = 2;
delete from turma where idturma > 2;
delete from responsavel_pedagogico where idresponsavel_pedagogico = 2;
*/