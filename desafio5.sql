-- Active: 1660770087967@@127.0.0.1@3307@SpotifyClone
SELECT
    son.song_name AS cancao,
    COUNT(his.history_music_id) AS reproducoes
FROM
    SpotifyClone.songs AS son
    INNER JOIN SpotifyClone.history AS his ON son.song_id = his.history_music_id
    GROUP BY his.history_music_id
    ORDER BY
    reproducoes DESC,
    cancao
    LIMIT 2; 
