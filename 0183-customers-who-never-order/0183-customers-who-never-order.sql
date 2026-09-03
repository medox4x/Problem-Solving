# Write your MySQL query statement below
SELECT Customers.name AS Customers
FROM Customers left join Orders
on Customers.id = Orders.customerId
where Orders.id is null;