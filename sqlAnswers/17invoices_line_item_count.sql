-- invoices_line_item_count.sql:
--  Provide a query that shows
--  all Invoices but includes
--  the # of invoice line items.

Select
    i.InvoiceId,
    i.InvoiceDate,
    i.Total,
    count(il.InvoiceLineId) InvoiceItemCount

From InvoiceLine il
Join Invoice i
    On (il.InvoiceId = i.InvoiceId)
Group by i.InvoiceId

