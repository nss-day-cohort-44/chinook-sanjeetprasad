-- invoice_37_line_item_count.sql: Looking at the InvoiceLine table,
--  provide a query that COUNTs the number of line items for Invoice ID 37.

Select 
    i.invoiceId,
    il.Quantity,
    count(il.Quantity)
From InvoiceLine il
Join Invoice i
    on (il.InvoiceId = i.InvoiceId)
WHERE i.InvoiceId = 37



-- SELECT 
--     i.Invoiceid,
--     i.Total,
--     c.FirstName,
--     c.LastName,
--     c.Country,
--     e.title


-- From Invoice i
-- Join Customer c
--     ON (i.customerId = c.CustomerId)
-- JOIN Employee e
--     ON (c.SupportRepId = e.EmployeeId)