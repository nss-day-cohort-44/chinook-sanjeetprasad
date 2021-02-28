-- top_2013_track.sql: Provide a query
--  that shows the most purchased track of 2013.

Select
    TrackName,
    Max(NumberOfPurchasedTrack) as PurchasecdTrack
From(
    Select
        t.name as TrackName,
        strftime("%Y", i.invoiceDate) as Year,
        count(t.trackId) as NumberOfPurchasedTrack
    From Track t
    Join InvoiceLine il
        On t.TrackId = il.trackId
    Join Invoice i
        On il.InvoiceId = i.InvoiceId
    WHERE Year = "2013"
    Group By TrackName
)