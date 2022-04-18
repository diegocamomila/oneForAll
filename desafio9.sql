SELECT 
	COUNT(historico.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS historico
JOIN SpotifyClone.usuarios AS usuario ON historico.usuario_id = usuario.usuario_id
WHERE usuario.nome_usuario = 'Bill'
GROUP BY historico.usuario_id;