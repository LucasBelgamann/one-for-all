-- Active: 1660770087967@@127.0.0.1@3307@SpotifyClone
SELECT
    COUNT(his.history_music_id) AS quantidade_musicas_no_historico
    FROM SpotifyClone.history AS his
        INNER JOIN SpotifyClone.users AS us ON us.user_id = his.history_person_id
        WHERE us.user_name = 'Barbara Liskov';