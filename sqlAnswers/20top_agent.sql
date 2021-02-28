-- top_agent.sql: Which sales 
-- agent made the most in sales over all?

-- Select
--     e.FirstName,
--     e.LastName,
--     e.title,
--     Max(total)
    



-- From Employee e
--     Join Customer c
--     On e.EmployeeId = c.SupportRepId
--     Join Invoice i
--     On c.CustomerId = i.customerId


Select
    EmployeeName,
    Max(TotalSales)
    
From(
    Select
        "$" || printf("%.2f", sum(i.total)) as TotalSales,
        e.FirstName || '' || e.LastName as EmployeeName
FROM
    Employee e,
    Customer c,
    Invoice i
WHERE
    e.EmployeeId = c.supportRepId
And c.CustomerId = i.customerId
GROUP BY
    EmployeeName
) as sales;
    
