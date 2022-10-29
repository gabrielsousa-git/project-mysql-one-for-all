SELECT
  s.song_name AS nome,
  COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.historic AS h
INNER JOIN SpotifyClone.songs s ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users u ON u.user_id = h.user_id
INNER JOIN SpotifyClone.plans p ON p.plan_id = u.plan_id
WHERE p.plan_type = 'gratuito' OR p.plan_type = 'pessoal'
GROUP BY s.song_name
ORDER BY s.song_name ASC;