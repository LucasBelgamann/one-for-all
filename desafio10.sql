-- Active: 1660770087967@@127.0.0.1@3307@SpotifyClone
SELECT
    son.song_name AS nome,
    COUNT(history_music_id) AS reproducoes
    FROM `SpotifyClone`.songs AS son
        INNER JOIN `SpotifyClone`.history AS his ON his.history_music_id = song_id
        INNER JOIN `SpotifyClone`.users AS us ON  us.user_id = his.history_person_id
        WHERE us.user_plan_id = 1 OR us.user_plan_id = 3
    GROUP BY nome
    ORDER BY nome;