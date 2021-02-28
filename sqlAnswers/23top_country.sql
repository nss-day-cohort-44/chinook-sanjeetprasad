-- top_country.sql: Which country's customers 
-- spent the most?

Select
    c.country,
    sum(i.total) as Total
From Customer c
Join Invoice i
On c.customerId = i.customerId
Group By
    c.country
order BY Total
 DESC
 LIMIT 1;


-- SELECT
-- MAX(Total),
-- Country
-- FROM(
--     SELECT
--     c.Country as Country,
--     Sum(i.total) as Total
--     FROM Customer c
--     JOIN Invoice i ON i.CustomerId = c.CustomerId
--     Group By c.country
-- )