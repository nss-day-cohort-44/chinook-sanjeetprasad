-- playlists_track_count.sql: Provide a query that
-- shows the total number of tracks 
-- in each playlist. The Playlist
-- name should be include on the resulant table.

Select 
    
    p.name,
  
    count(pt.TrackId)

From PlaylistTrack pt
Join Playlist p
    On (p.playlistid = pt.playlistId)
Group by p.name
