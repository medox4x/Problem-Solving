# Write your MySQL query statement below
with total_student as (SELECT class , count(student) as total FROM Courses group by class)
select class
from total_student
where total >=5;