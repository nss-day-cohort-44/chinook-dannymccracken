-- 13 line_item_track_artist.sql: Provide a query that includes the purchased 
-- track name AND artist name with each invoice line item.

SELECT 
    t.Name AS track,
    r.Name AS artist,
    l.InvoiceLineId
FROM Track t
JOIN InvoiceLine l 
    ON l.TrackId= t.TrackId
JOIN Album a  
    ON a.AlbumId = t.AlbumId
JOIN Artist r  
    ON r.ArtistId = a.ArtistId