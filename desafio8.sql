SELECT 
    artistas.nome_artista AS artista,
    albuns.nome_album AS album
FROM SpotifyClone.albuns AS albuns
JOIN SpotifyClone.artistas AS artistas ON albuns.artista_id = artistas.artista_id
WHERE artistas.nome_artista = 'Walter Phoenix';