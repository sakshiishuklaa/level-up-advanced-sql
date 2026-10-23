select e.firstName,e.lastName,e.title,e.startDate,s.salesId
from employee e
left join sales s 
on e.employeeId=s.employeeId
where e.title='Sales Person'
and s.salesId is null;
