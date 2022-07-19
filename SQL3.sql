SELECT c.Email,
       c.FirstName,
       c.LastName,
       COUNT(*) count_nu_roc
FROM Customer c
JOIN Invoice i ON i.CustomerId=c.CustomerId
JOIN InvoiceLine il ON i.InvoiceId=il.InvoiceId
JOIN track t ON il.InvoiceLineId=t.TrackId
JOIN Genre g ON g.GenreId=t.GenreId
WHERE g.name='Rock'
  AND c.Country='Germany'
GROUP BY 1,
         2,
         3
ORDER BY 4 DESC
