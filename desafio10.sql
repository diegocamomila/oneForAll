SELECT 
	musica.nome_musica as nome,
	COUNT(historico.usuario_id) AS reproducoes
FROM SpotifyClone.historico AS historico
JOIN SpotifyClone.musicas AS musica ON historico.musica_id = musica.musica_id
JOIN SpotifyClone.usuarios AS usuario ON historico.usuario_id = usuario.usuario_id
WHERE usuario.plano_id IN (1,3)
GROUP BY `nome`;