select t.nome as 'Turma', p.nome as 'Professor(a)', p.valor_hora_aula , m.nome as 'Materia' from turma t
join materia_professor mp on t.id_turma = mp.fk_id_turma
join professor p on mp.fk_id_professor = p.id_professor
join materia m on m.id_materia = mp.fk_id_materia
where mp.fk_id_turma = 2
order by p.valor_hora_aula desc;

select id_professor, nome, valor_hora_aula from professor
order by valor_hora_aula desc
limit 3;

select * from professor where nascimento < '1970-01-01';

select avg(valor_hora_aula) as 'Media Valor hora/aula' from professor;

SELECT count(RA) from aluno;
select count(id_professor) from professor;
select count(id_materia) from materia;

select * from turma;

select count(fk_id_turma) from materia_professor;

SELECT count(fk_id_professor) as 'Número de professores', t.nome as 'Turma' from materia_professor mp
inner join turma t 
on mp.fk_id_turma = t.id_turma
where mp.fk_id_turma = 1;