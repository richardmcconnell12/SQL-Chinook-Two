-- Provide a query that includes the purchased track name with each invoice line item.

SELECT i.InvoiceLineId, i.InvoiceId, t.Name
FROM InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackId
ORDER BY InvoiceId; 