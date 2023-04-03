select t.nome as 'Turma', p.nome as 'Professor(a)', p.valor_hora_aula , m.nome as 'Materia' from turma t
join materia_professor mp on t.idturma = mp.idturma
join professor p on mp.idprofessor = p.idprofessor
join materia m on m.idmateria = mp.idmateria
where mp.idturma = 2
order by p.valor_hora_aula desc;

select idprofessor, nome, valor_hora_aula from professor
order by valor_hora_aula desc
limit 3;

select * from professor where nascimento < '1970-01-01';

select avg(valor_hora_aula) as 'Media Valor hora/aula' from professor;

SELECT count(ra) from aluno;
select count(idprofessor) from professor;
select count(idmateria) from materia;

select * from responsavel_financeiro;

select * from responsavel_pedagogico;

select * from turma;

select count(idturma) from materia_professor;

SELECT count(idprofessor) as 'Número de professores', t.nome as 'Turma' from materia_professor mp
inner join turma t 
on mp.idturma = t.idturma
where mp.idturma = 1;