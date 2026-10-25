with year as(
select strftime('%Y',soldDate)as soldYear,
salesAmount
from sales
)
select soldYear, format("$%.2f",sum(salesAmount)) as AnnualSales
from year 
group by soldYear
order by soldYear;