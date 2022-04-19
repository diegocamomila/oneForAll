SELECT 
	nome_musica AS nome_musica,
	CASE
		WHEN nome_musica like '%Streets' THEN replace(nome_musica, 'Streets', 'Code Review')
        WHEN nome_musica like '%Her Own' THEN replace(nome_musica, 'Her Own', 'Trybe')
        WHEN nome_musica like '%Inner Fire' THEN replace(nome_musica, 'Inner Fire', 'Project')
        WHEN nome_musica like '%Silly' THEN replace(nome_musica, 'Silly', 'Nice')
        WHEN nome_musica like '%Circus' THEN replace(nome_musica, 'Circus', 'Pull Request')
    END AS novo_nome FROM SpotifyClone.musicas 
    WHERE musicas.nome_musica IN 
    ('Dance With Her Own', "Let's Be Silly", 'Magic Circus', 'Troubles Of My Inner Fire', 'Without My Streets')
    ORDER BY nome_musica;