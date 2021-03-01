-- 15. playlists_track_count.sql: Provide a query that shows the total 
-- number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT 
    COUNT(t.TrackId),
    p.Name
FROM PlaylistTrack t
    JOIN Playlist p
        ON p.PlaylistId = t.PlaylistId
GROUP BY p.PlaylistId