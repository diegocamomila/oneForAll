SELECT 
    artistas.nome_artista  AS artista,
    album.nome_album AS album,
    COUNT(seguidores.usuario_id) AS seguidores
FROM SpotifyClone.seguidores AS seguidores
JOIN SpotifyClone.artistas AS artistas ON seguidores.artista_id = artistas.artista_id
JOIN SpotifyClone.albuns AS album ON artistas.artista_id = album.artista_id
GROUP BY album.nome_album, artistas.nome_artista
ORDER BY `seguidores` DESC, `artista`, `album`;