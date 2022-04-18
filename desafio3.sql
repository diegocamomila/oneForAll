SELECT 
	usuarios.nome_usuario as usuario,
    COUNT(historico.musica_id) as qtde_musicas_ouvidas,
    ROUND(SUM(musicas.duracao_segundos)/60,2) as total_minutos
FROM SpotifyClone.usuarios as usuarios
JOIN SpotifyClone.historico as historico ON historico.usuario_id = usuarios.usuario_id
JOIN SpotifyClone.musicas as musicas ON musicas.musica_id = historico.musica_id
GROUP BY usuarios.nome_usuario;