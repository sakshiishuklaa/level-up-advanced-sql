select * 
from sales s 
join inventory i 
on s.inventoryId=i.inventoryId

select *
from model
limit 10;

select modelId 
from model 
where EngineType='Electric'

select s.soldDate,s.salesAmount,i.colour,i.year
from sales s
join inventory i
on s.inventoryId=i.inventoryId
where i.modelId in(
select modelId 
from model 
where EngineType='Electric'
)