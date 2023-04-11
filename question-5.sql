-- What was the most purchased track of 2013?
SELECT t.Name as Name, Sum(ii.Quantity) as AmountPurchased, t.TrackId, i.InvoiceDate 
FROM tracks as t JOIN invoice_items as ii on t.TrackId = ii.TrackId JOIN invoices as i on i.InvoiceId = ii.InvoiceId
WHERE i.InvoiceDate LIKE '2013-%' GROUP BY t.Name ORDER BY AmountPurchased DESC;
