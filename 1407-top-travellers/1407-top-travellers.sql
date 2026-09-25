# Write your MySQL query statement below
select U.name,coalesce(sum(R.distance),0) as travelled_distance
from Users as U left join Rides as R
on U.id = R.user_id
group by R.user_id
order by sum(R.distance) desc, U.name asc;