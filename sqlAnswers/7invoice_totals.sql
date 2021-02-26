-- invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name,
-- Country and Sale Agent name for all invoices and customers.


SELECT 
    i.Invoiceid,
    i.Total,
    c.FirstName,
    c.LastName,
    c.Country,
    e.title


From Invoice i
Join Customer c
    ON (i.customerId = c.CustomerId)
JOIN Employee e
    ON (c.SupportRepId = e.EmployeeId)

