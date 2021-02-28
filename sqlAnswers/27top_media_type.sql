-- top_media_type.sql: Provide a query that 
-- shows the most purchased Media Type.

select
    m.name as MediaType,
    count(il.invoiceId) as Units
From MediaType m
JOIN Track t
    on m.MediaTypeId = t.mediaTypeId
Join InvoiceLine il
    On t.TrackId = il.trackId
Join Invoice i
    on i.invoiceId=il.invoiceId
GROUP By MediaType
Order by Units Desc
Limit 1
