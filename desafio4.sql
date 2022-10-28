SELECT u.user_name AS usuario, IF (MAX(YEAR(h.listened_date)) < 2021, 'Usuário inativo', 'Usuário ativo') AS status_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.historic AS h ON u.user_id = h.user_id
GROUP BY u.user_name
ORDER BY u.user_name ASC;