# Write your MySQL query statement below
select P.product_name,sum(O.unit) as unit
from Products as P inner join Orders as O
on P.product_id = O.product_id
where O.order_date like '2020-02-%'
group by P.product_name
having sum(O.unit) >= 100;