-- sales_agent_invoices.sql: Provide a query that shows the invoices associated
--  with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT 
e.FirstName,
e.LastName,

FROM Employee e
JOIN 
WHERE Title = 'Sales Support Agent'