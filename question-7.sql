-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT t.TrackId, t.Name, t.Composer
FROM tracks as t 
LEFT JOIN invoice_items as ii on t.TrackId = ii.TrackId 
WHERE ii.InvoiceId IS NULL
ORDER BY t.TrackId;
