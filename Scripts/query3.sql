-- List all customers & their sales, even if some data is gone
select c.firstName,c.lastName,c.email,s.salesAmount,s.soldDate
from customer c
inner join sales s
  on c.customerId=s.customerId
union
-- UNION WITH CUSTOMERS WHO HAVE NO SALES
select c.firstName,c.lastName,c.email,s.salesAmount,s.soldDate
from customer c
left join sales s
  on c.customerId=s.customerId
  where s.salesId is null
union
-- UNION WITH SALES MISSING CUSTOMER DATA
select c.firstName,c.lastName,c.email,s.salesAmount,s.soldDate
from sales s
left join customer c
  on c.customerId=s.customerId
where s.salesId is null;