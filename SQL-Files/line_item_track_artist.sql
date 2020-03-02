-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT  il.InvoiceLineId, 
t.Name AS TrackName, 
il.TrackId, 
al.Title AS AlbumName, 
ar.Name AS ArtistName 
FROM InvoiceLine il 
JOIN Track t 
ON il.TrackId=t.TrackId 
JOIN Album al 
ON al.AlbumId = t.AlbumId 
JOIN Artist ar 
ON ar.ArtistId = al.ArtistId
ORDER BY InvoiceLineId;