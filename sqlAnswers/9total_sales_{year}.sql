-- total_sales_{year}.sql: What are the respective
-- total sales for each of those years?

Select 
   printf( '%.2f', SUM(i.Total)) Total,
   strftime('%Y', InvoiceYear) InvoiceYear
From Invoice i
Where LIKE InvoiceYear = 2009 OR InvoiceYear = 2011
GROUP By InvoiceYear = 2009