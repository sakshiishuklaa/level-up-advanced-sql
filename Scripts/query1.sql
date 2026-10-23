select e.firstName, e.lastName,e.title, m.firstName as ManagerFirstName, m.lastName as ManagerLastName
from employee e
join employee m
on e.managerId = m.employeeId;