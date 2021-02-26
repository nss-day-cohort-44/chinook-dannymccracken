SELECT SUM(total),
    i.Total,
    i.InvoiceDate
FROM Invoice i 
WHERE InvoiceDate LIKE "%2009%" OR InvoiceDate LIKE "%2011%";