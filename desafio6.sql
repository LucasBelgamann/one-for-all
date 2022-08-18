-- Active: 1660770087967@@127.0.0.1@3307@SpotifyClone
-- SELECT
--     us.song_name AS cancao,
--     COUNT(his.history_music_id) AS reproducoes
-- FROM
--     SpotifyClone.users AS us
--     INNER JOIN SpotifyClone.history AS his ON son.song_id = his.history_music_id
--     GROUP BY his.history_music_id
--     ORDER BY
--     reproducoes DESC,
--     cancao
--     LIMIT 2; 

SELECT
    MIN(p.plan_value) AS faturamento_minimo,
    MAX(p.plan_value) AS faturamento_maximo,
    ROUND(AVG(p.plan_value), 2) AS faturamento_medio,
    SUM(p.plan_value) AS faturamento_total
    FROM plan AS p
        INNER JOIN SpotifyClone.users AS us ON p.plan_id = us.user_plan_id;