-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT t.name AS TrackName, artists.name AS ArtistName, ii.*
FROM invoice_items as ii
JOIN tracks as t on ii.TrackId = t.TrackId
JOIN albums ON t.AlbumId = albums.AlbumId 
JOIN artists on albums.ArtistId = artists.ArtistId;
