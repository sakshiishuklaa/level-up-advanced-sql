select e.firstName,e.lastName,model,s.salesId
from sales s
join employee e
on s.employeeId=e.employeeId
join inventory i 
on s.inventoryId=i.inventoryId
join model m 
on i.modelId=m.modelId

select e.firstName,e.lastName,count(model)as ModelSold,s.salesId
from sales s
join employee e
on s.employeeId=e.employeeId
join inventory i 
on s.inventoryId=i.inventoryId
join model m 
on i.modelId=m.modelId
group by e.firstName,e.lastName,m.model

select e.firstName,e.lastName,m.model,s.salesId,count(model) AS NumberSold,dense_rank() OVER (PARTITION BY s.employeeId 
              ORDER BY count(model) desc) AS Rank
from sales s
join employee e
on s.employeeId=e.employeeId
join inventory i 
on s.inventoryId=i.inventoryId
join model m 
on i.modelId=m.modelId
group by e.firstName,e.lastName,m.model