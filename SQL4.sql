SELECT g.Name,
       COUNT(*)count_genre
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId=il.InvoiceId
JOIN track t ON il.InvoiceLineId=t.TrackId
JOIN Genre g ON g.GenreId=t.GenreId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
