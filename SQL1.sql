SELECT a.name,
       SUM(il.UnitPrice*il.Quantity) sum_price
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId=il.InvoiceId
JOIN track t ON il.InvoiceLineId=t.TrackId
JOIN Genre g ON g.GenreId=t.GenreId
JOIN Album ar ON ar.AlbumId=t.AlbumId
JOIN Artist a ON a.ArtistId=ar.ArtistId
WHERE g.name='Rock'
  AND i.BillingCountry='Germany'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
