-- country_invoices.sql: Provide a query that shows 
-- the # of invoices per country
--  HINT: GROUP BY


Select 
    i.billingCountry,
    i.invoiceId,
    count(i.InvoiceId)

From Invoice i
GROUP By i.billingCountry
Order by i.invoiceId

