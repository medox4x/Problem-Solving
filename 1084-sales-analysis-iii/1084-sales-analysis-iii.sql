# Write your MySQL query statement below
select distinct P.product_id, P.product_name
from Product as P inner join Sales as S
on P.product_id = S.product_id
where P.product_id not in (select product_id as id from Sales where sale_date not between '2019-01-01' and '2019-03-31');