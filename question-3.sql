-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT t.Name AS TrackName, t.Composer, ii.*
FROM tracks AS t 
JOIN invoice_items AS ii ON t.TrackId = ii.TrackId 
JOIN invoices AS i ON ii.InvoiceId = i.InvoiceId;
