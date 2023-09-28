SELECT ar.nome AS artista, al.nome_album AS album
FROM artistas AS ar
INNER JOIN albuns AS al ON al.id_artista = ar.id_artista WHERE ar.id_artista = 3
ORDER BY al.nome_album
 ;