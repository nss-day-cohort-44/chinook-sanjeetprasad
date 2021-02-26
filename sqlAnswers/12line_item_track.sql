-- Provide a query that includes the purchased track
--  name with each invoice line item.

Select 
 t.Name,
 il.InvoiceLineId

From InvoiceLine il
    join Track t
    ON (il.TrackId = t.TrackId)
    -- ON (t.TrackId = il.TrackId)

   

