-- sales_agent_customer_count.sql: Provide a query 
-- that shows the count of 
-- customers assigned to each sales agent.

Select
    e.title,
    e.firstName,
    e.lastName,
    c.CustomerId,
    Count(c.CustomerId)
From Employee e
    Join Customer c
    On e.EmployeeId = c.supportRepId
GROUP by
    e.firstName;

-- SELECT
--     EmployeeName,
--     Max(NumberOfCustomers)
    
-- from(
--     SELECT
--         e.firstName || ' ' || e.lastName as EmployeeName,
--         count(c.CustomerId) as NumberOfCustomers
-- FROM Employee e
--     Join Customer c
--     On e.EmployeeId = c.supportRepId
--     Group BY
--     e.firstName

-- )
