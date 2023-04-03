use brasil;
select nome as 'Estado', FORMAT(populacao, 'N') as 'População' from estado order by populacao desc;

select * from cidade;
select nome as 'Cidade', FORMAT(populacao, 'N') as 'População' from cidade order by populacao desc limit 3;

select e.sigla as 'State', c.nome as 'City', c.populacao as 'Population'
from estado e
inner join cidade c
on e.id = c.estado_id
order by c.populacao desc;
    
SELECT id, nome AS nome_do_estado FROM estado;
SELECT id, nome AS city_name FROM cidade;

SELECT nome FROM estado ORDER BY name;
    
SELECT * from estado
INNER JOIN cidade
ON estado.id = cidade.estado_id;