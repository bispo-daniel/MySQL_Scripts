USE atmDB;

select * from customer;
select * from account;

select a.account_number, a.pass,
a.balance,
c.name
from account a 
join customer c
on c.id = a.customer_id_fk;