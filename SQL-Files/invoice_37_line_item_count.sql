-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(InvoiceLineId) AS [InvoiceLine Items]
FROM InvoiceLine 
WHERE InvoiceLineId = 37;