select e.employeeId,e.firstName,count(s.employeeId) as carssold
from employee e
left join sales s
  on e.employeeId=s.employeeId
group by e.employeeId,e.firstName
order by carssold desc;
