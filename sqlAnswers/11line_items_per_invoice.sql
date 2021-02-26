-- line_items_per_invoice.sql: Looking at the InvoiceLine table, 
-- provide a query that COUNTs the number of line items for each Invoice.

Select
i.InvoiceId,
il.Quantity,
count(il.quantity)
From InvoiceLine il
    Join Invoice i
     on (il.InvoiceId = i.InvoiceId)
GROUP By i.InvoiceId
