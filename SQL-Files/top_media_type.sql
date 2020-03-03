-- Provide a query that shows the most purchased Media Type.

SELECT TOP 1 m.Name AS MediaType, COUNT(m.MediaTypeId) AS TimesPurchased
FROM Track t
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
GROUP BY m.Name
ORDER BY TimesPurchased DESC;