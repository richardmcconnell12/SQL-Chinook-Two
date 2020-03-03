-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.

SELECT t.[Name] AS TrackName, 
al.Title AS Album, 
m.Name AS MediaType,
g.Name AS Genre
FROM Track t
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId
ORDER BY t.TrackId;