-- Active: 1660770087967@@127.0.0.1@3307@SpotifyClone
SELECT
    art.artist_name AS artista,
    alb.album_name AS album,
    COUNT(follw.follower_artist_id) AS seguidores
    FROM SpotifyClone.artist AS art
        INNER JOIN SpotifyClone.album AS alb ON alb.album_artist_id = art.artist_id
        INNER JOIN SpotifyClone.follower AS follw ON art.artist_id = follw.follower_artist_id
        GROUP BY artista, album
        ORDER BY seguidores DESC,
        artista,
        album;
