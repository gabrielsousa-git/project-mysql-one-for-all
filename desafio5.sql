SELECT s.song_name AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historic AS h ON s.song_id = h.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;