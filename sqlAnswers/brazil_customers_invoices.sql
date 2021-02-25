--  Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.


SELECT 
 c.FirstName,
 c.LastName,
 i.Invoiceid,
 i.Invoicedate,
 i.BillingCountry

 FROM Customer c
 JOIN Invoice i
    ON (i.CustomerId = c.CustomerId)
 WHERE Country = 'Brazil'