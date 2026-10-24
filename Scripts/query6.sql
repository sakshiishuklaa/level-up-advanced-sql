-- Display report for employees who have sold at least 5 cars

select e.employeeId,e.firstName,e.lastName,count(salesId) as carsSold,soldDate
from sales s
join employee e
on s.employeeId=e.employeeId
where s.soldDate >= date('now','start of year')
group by e.employeeId,e.firstName,e.lastName
having carsSold>5;

