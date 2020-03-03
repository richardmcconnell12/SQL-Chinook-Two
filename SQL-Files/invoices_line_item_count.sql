-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId, 
COUNT(il.InvoicelineId) AS [InvoiceCount]
FROM InvoiceLine il
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;