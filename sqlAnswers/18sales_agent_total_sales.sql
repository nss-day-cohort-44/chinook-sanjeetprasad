-- sales_agent_total_sales.sql: Provide 
-- a query that shows total sales made by 
-- each sales agent.

Select 
e.FirstName,
e.LastName,
e.Title,

Sum(i.total)


From Employee e
Join Customer c
    On (e.EmployeeId = c.SupportRepId)
Join Invoice i
    on (c.CustomerId = i.CustomerId)
Group by e.FirstName

