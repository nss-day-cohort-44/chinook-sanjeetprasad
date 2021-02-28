-- top_5_tracks.sql: Provide a query that
--  shows the top 5 most purchased tracks over all.

Select
    t.name as TrackName,
    count(il.trackId) as MostPurchasedTrack 
From Track t
    JOIN InvoiceLine il
        On t.TrackId = il.trackId
    group BY
        TrackName
    ORDER By MostPurchasedTrack Desc
    LIMIT 5
