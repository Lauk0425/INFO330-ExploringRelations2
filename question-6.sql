-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT DISTINCT t.TrackId, t.Name, t.Composer, ii.*
FROM invoices as i JOIN invoice_items as ii on i.InvoiceId = ii.InvoiceId
JOIN tracks as t ON ii.TrackId = t.TrackId 
WHERE t.TrackId IS NOT NULL AND t.Name IS NOT NULL AND t.Composer IS NOT NULL ORDER BY t.TrackID;
