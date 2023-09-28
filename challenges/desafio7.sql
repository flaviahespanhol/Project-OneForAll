SELECT ar.nome AS artista, al.nome_album AS album, COUNT(sa.id_artista) AS pessoas_seguidoras
FROM artistas AS ar
INNER JOIN albuns AS al ON al.id_artista = ar.id_artista
INNER JOIN seguindo_artistas AS sa ON sa.id_artista = ar.id_artista
GROUP BY sa.id_artista, al.nome_album, sa.id_artista
ORDER BY COUNT(sa.id_artista) DESC, ar.nome, al.nome_album
 ;
