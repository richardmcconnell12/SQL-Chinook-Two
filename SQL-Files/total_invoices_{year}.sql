-- How many Invoices were there in 2009 and 2011?
-- What are the respective total sales for each of those years?

SELECT COUNT(InvoiceId) AS Invoice09, Sum(Total) AS Total
FROM Invoice
WHERE InvoiceDate LIKE '%2009%';

SELECT COUNT(InvoiceId) AS Invoice13, SUM(Total) AS Total
FROM Invoice
WHERE InvoiceDate LIKE '%2013%';