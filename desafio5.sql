SELECT 
	musicas.nome_musica AS cancao,
    COUNT(historico.data_hora) AS reproducoes
FROM SpotifyClone.musicas as musicas
JOIN SpotifyClone.historico AS historico ON historico.musica_id = musicas.musica_id
GROUP BY musicas.nome_musica
ORDER BY `reproducoes` DESC, musicas.nome_musica
LIMIT 2;