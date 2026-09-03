# Write your MySQL query statement below
select M.name as "Employee" from Employee as E
inner join Employee as M
on E.id = M.managerId
where M.salary > E.salary;
