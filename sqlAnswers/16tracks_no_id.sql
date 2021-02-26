-- tracks_no_id.sql: Provide a query that shows all the 
-- Tracks, but displays
--  no IDs. The result should include the 
-- Album name, Media type and Genre.

Select
    t.name TrackName,
    a.title,
    m.name MediaType,
    g.name GenreName

From Track t
Join Album a
    On (a.AlbumId = t.AlbumId)
Join MediaType m
    On (m.MediaTypeId = t.MediaTypeId)
Join Genre g
    on (g.GenreId = t.GenreId)