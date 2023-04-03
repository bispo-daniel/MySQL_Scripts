select * from customer;
select * from product;
select * from sale;
select * from sale_product;

select sum(unit_price) from product;

select 
s.sale_date as 'Sale Date',
p.name  as 'Product',
p.unit_price as 'Price',
c.name as 'Customer'
from sale_product sp
join sale s
on s.id = sp.saleid_FK
join product p 
on p.id = sp.productid_FK
join customer c
on c.id = s.customerid_FK;

select sum(p.unit_price) as 'Total sale value' from product p
join sale_product sp
on p.id = sp.productid_FK;