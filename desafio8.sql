-- Active: 1660770087967@@127.0.0.1@3307@SpotifyClone
SELECT
    art.artist_name AS artista,
    alb.album_name AS album
    FROM SpotifyClone.artist AS art
        INNER JOIN SpotifyClone.album AS alb ON alb.album_artist_id = art.artist_id
        HAVING artista = 'Elis Regina';