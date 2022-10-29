SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historic AS h
INNER JOIN SpotifyClone.users AS u ON h.user_id = u.user_id
WHERE u.user_name = 'Barbara Liskov';