-- line_item_track_artist.sql: Provide a query that includes the purchased track
--  name AND artist name with each invoice line item.

 Select
    t.name TrackName,
    a.name ArtistName,
    il.InvoiceLineId


From Artist a
Join Album al
    ON (a.ArtistId = al.artistId)
Join Track t
    ON (al.AlbumId = t.TrackId)
Join InvoiceLine il
    On (il.TrackId = t.TrackId)
Order by il.InvoiceLineId

   

