SELECT
	COUNT(cancoes.musica_id) as cancoes,
    COUNT(DISTINCT artistas.artista_id) as artistas,
    COUNT(DISTINCT albuns.album_id) as albuns
FROM SpotifyClone.albuns as albuns
JOIN SpotifyClone.artistas as artistas ON albuns.artista_id = artistas.artista_id
JOIN SpotifyClone.musicas as cancoes ON cancoes.album_id = albuns.album_id;
