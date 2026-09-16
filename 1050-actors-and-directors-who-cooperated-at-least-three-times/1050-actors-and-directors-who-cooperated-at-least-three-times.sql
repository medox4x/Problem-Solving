# Write your MySQL query statement below
with result as (select *,count(timestamp) from ActorDirector group by director_id, actor_id
having count(timestamp) >=3)
select actor_id , director_id
from result;
