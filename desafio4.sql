-- Active: 1660770087967@@127.0.0.1@3307@SpotifyClone
SELECT
    SpotifyClone.user_name,
    
FROM  SpotifyClone.history AS his
    INNER JOIN 
;

SELECT
    u.user_name AS usuario,
    IF(MAX(YEAR(his.history_reproduction_date) >= 2021), 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM
    SpotifyClone.users AS u
    INNER JOIN SpotifyClone.history AS his ON u.user_id = his.history_person_id
    GROUP BY u.user_name
    ORDER BY u.user_name; 