-- sales_agent_invoices.sql: Provide a query that shows the invoices associated
--  with each sales agent. The resultant 
-- table should include the Sales Agent's full name

SELECT 
    i.InvoiceId,
    i.Invoicedate,
    e.Title,
    e.FirstName,
    e.LastName
FROM Invoice i
JOIN Employee e ON 
    (e.EmployeeId = c.SupportRepId)
Join Customer c ON
    (c.CustomerId = i.CustomerId)

