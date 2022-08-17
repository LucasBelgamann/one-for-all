
SELECT
    u.user_name AS usuario,
    COUNT(his.history_music_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(son.song_duration) / 60,2) AS total_minutos
FROM
    SpotifyClone.users AS u
    INNER JOIN SpotifyClone.history AS his ON u.user_id = his.history_person_id
    INNER JOIN SpotifyClone.songs AS son ON his.history_music_id  = son.song_id
    GROUP BY u.user_name
    ORDER BY u.user_name; 