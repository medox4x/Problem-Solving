# Write your MySQL query statement below
select P.product_id ,coalesce(round(sum(U.units*P.price)/sum(U.units),2),0) as average_price
from Prices as P left join UnitsSold U
on P.product_id = U.product_id and U.purchase_date between P.start_date and P.end_date
group by P.product_id
# here I learned to use coalesce() func