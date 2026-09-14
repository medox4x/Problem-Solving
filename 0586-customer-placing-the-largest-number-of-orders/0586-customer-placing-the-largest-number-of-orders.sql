# Write your MySQL query statement below
with num_total as (
    select count(order_number)as total, customer_number from Orders
    group by customer_number
)
select customer_number
from num_total
order by total desc
limit 1;