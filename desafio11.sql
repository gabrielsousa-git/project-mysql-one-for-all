SELECT s.song_name AS nome_musica,
CASE 
  WHEN sng.song_name LIKE '%bard%' THEN REPLACE(sng.song_name, 'Bard', 'QA')
  WHEN sng.song_name LIKE '%Amar%' THEN REPLACE(sng.song_name, 'Amar', 'Code Review')
  WHEN sng.song_name LIKE '%Pais%' THEN REPLACE(sng.song_name, 'Pais', 'Pull Requests')
  WHEN sng.song_name LIKE '%SOUL%' THEN REPLACE(sng.song_name, 'SOUL', 'CODE')
  WHEN sng.song_name LIKE '%SUPERSTAR%' THEN REPLACE(sng.song_name, 'SUPERSTAR', 'SUPERDEV')
  END AS novo_nome
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.songs AS sng ON s.song_id = sng.song_id
GROUP BY s.song_id HAVING novo_nome IS NOT NULL
ORDER BY nome_musica DESC;