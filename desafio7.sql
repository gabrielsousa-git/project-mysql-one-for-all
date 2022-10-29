SELECT
  art.artist_name AS artista,
  alb.album_name AS album,
  COUNT(f.artist_id) AS seguidores
FROM followers AS f
INNER JOIN artists AS art ON f.artist_id = art.artist_id
INNER JOIN albums AS alb ON art.artist_id = alb.artist_id
GROUP BY art.artist_name, alb.album_name
ORDER BY seguidores DESC, artista ASC, album ASC;