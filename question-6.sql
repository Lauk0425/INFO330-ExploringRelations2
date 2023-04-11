-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT i.InvoiceId, i.InvoiceDate, ii.InvoiceLineId, t.TrackId, t.Name, t.AlbumId, t.Composer 
FROM invoices as i JOIN invoice_items as ii on i.InvoiceId = ii.InvoiceId JOIN tracks as t ON ii.TrackId = t.TrackId GROUP BY ii.InvoiceLineId ORDER BY ii.InvoiceLineId;
