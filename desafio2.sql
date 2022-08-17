-- Active: 1660770087967@@127.0.0.1@3307@SpotifyClone
SELECT
    COUNT(DISTINCT SpotifyClone.songs.song_id) AS cancoes,
    COUNT(DISTINCT SpotifyClone.artist.artist_id) AS artistas,
    COUNT(DISTINCT SpotifyClone.album.album_id) AS albuns
FROM
    SpotifyClone.songs,
    SpotifyClone.artist,
    SpotifyClone.album;