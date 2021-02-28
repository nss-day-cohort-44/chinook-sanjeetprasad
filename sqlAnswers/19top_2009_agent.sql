-- top_2009_agent.sql: Which sales
--  agent made the most in sales in 2009?

-- Select
--     e.FirstName,
--     e.LastName,
--     e.title,
--     i.total


-- FROM Employee e
-- Join Customer c
--     On (e.EmployeeId = c.SupportRepId)
-- Join Invoice i
--     On (c.CustomerId = i.CustomerId)
-- Where i.total LIKE "2009%"
-- Order by i.total DESC



-- Select
--     e.FirstName,
--     e.LastName,
--     e.title,
--     Sum(i.total)
    



-- From Employee e
--     Join Customer c
--     On e.EmployeeId = c.SupportRepId
--     Join Invoice i
--     On c.CustomerId = i.customerId
-- Where 
--     i.total= (
--         Select 
--             Max(total)
--         from
--             Invoice
--     )
-- GROUP by
--     e.FirstName
    

SELECT
    EmployeeName,
    Max(TotalSales)
    
From(
    SELECT
        "$" || printf("%2f", sum(i.total)) as TotalSales,
        e.FirstName || ' ' || e.LastName as EmployeeName,
        strftime('%Y', i.InvoiceDate) as InvoiceYear
    From
        Invoice i,
        Employee e,
        Customer c
    Where
        i.customerId=c.customerId
        AND c.SupportRepId=e.EmployeeId
        and InvoiceYear='2009'
    group by
        employeeName,
        InvoiceYear
) as Sales
