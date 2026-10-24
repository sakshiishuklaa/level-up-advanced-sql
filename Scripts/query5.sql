-- Find the least and most expensive car sold by each employee this year

select e.employeeId, 
    e.firstName, 
    e.lastName, 
    MIN(salesAmount) AS MinSalesAmount, 
    MAX(salesAmount) as MaxSalesAmount
from sales s
join employee e
    on s.employeeId = e.employeeId
where s.soldDate >= date('now','start of year')
group by e.employeeId, e.firstName, e.lastName;


