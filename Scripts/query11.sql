select strftime('%Y',soldDate)as year,
strftime('%m',soldDate)as month,salesAmount
from sales

select strftime('%Y',soldDate)as year,
strftime('%m',soldDate)as month,salesAmount
from sales
group by year,month
order by year,month

with cte_sales as (
select strftime('%Y', soldDate) AS year, 
  strftime('%m', soldDate) AS month,
  sum(salesAmount) AS salesAmount
from sales
group by year, month
)
select year, month, salesAmount,
  sum(salesAmount) OVER (
    PARTITION BY year 
    ORDER BY year, month) AS AnnualSales_RunningTotal
from cte_sales
order by year, month
