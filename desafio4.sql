SELECT 
	usuarios.nome_usuario as usuario,
    CASE 
		WHEN MAX(YEAR(historico.data_hora)) < 2021 THEN 'Usuário inativo'
        WHEN MAX(YEAR(historico.data_hora)) >= 2021 THEN 'Usuário ativo'
END AS condicao_usuario
FROM SpotifyClone.usuarios as usuarios
JOIN SpotifyClone.historico as historico ON historico.usuario_id = usuarios.usuario_id
GROUP BY usuarios.nome_usuario; 
