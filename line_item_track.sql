-- 12.line_item_track.sql: Provide a query that includes 
-- the purchased track name with each invoice line item.

SELECT 
    t.Name,
    l.InvoiceLineId
FROM Track t
JOIN InvoiceLine l 
    ON l.TrackId= t.TrackId