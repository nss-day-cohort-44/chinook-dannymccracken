-- 16. tracks_no_id.sql: Provide a query that shows all the Tracks, but displays 
-- no IDs. The result should include the Album name, Media type and Genre.

SELECT 
    t.Name AS track,
    g.name AS Genre, 
    a.Title, 
    m.name AS media
FROM Track t
    JOIN Album a 
        ON t.AlbumId = a.AlbumId
    JOIN  MediaType m
        ON t.MediaTypeId = m.MediaTypeId
    JOIN Genre g 
        ON t.GenreId = g.GenreId