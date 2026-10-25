WITH MonthlySales AS (
    SELECT strftime('%Y-%m', soldDate) AS MonthSold,
           COUNT(*) AS NumberCarsSold
    FROM sales
    GROUP BY strftime('%Y-%m', soldDate)
)
SELECT MonthSold,
       NumberCarsSold,
       LAG(NumberCarsSold, 1, 0) OVER (ORDER BY MonthSold) AS LastMonthCarsSold
FROM MonthlySales
ORDER BY MonthSold;