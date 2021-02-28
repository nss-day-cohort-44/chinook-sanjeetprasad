-- sales_per_country.sql: Provide a query that 
-- shows the total sales per country.

Select
    c.country,
    Sum(i.total) as TotalSales
From Customer c
    Join Invoice i
    On c.customerId = i.customerId
GROUP BY
    c.country;