-- total_invoices_{year}.sql: How many Invoices were there 
-- in 2009 and 2011?

Select 
 i.InvoiceDate,
 count(i.invoiceId) yearlyInvoice
 
from Invoice i
where (i.InvoiceDate LIKE "2009%" OR i.invoicedate LIKE "2011%")
GROUP BY i.invoicedate Like "2009%"