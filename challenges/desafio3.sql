SELECT us.nome AS pessoa_usuaria, COUNT(can.id_canção) AS musicas_ouvidas, ROUND(SUM(can.duração_segundos) / 60, 2) AS total_minutos
FROM usuários AS us
INNER JOIN histórico_reproduções AS hr ON hr.id_usuário = us.id_usuário
INNER JOIN canções AS can ON can.id_canção = hr.id_canção
GROUP BY us.nome
ORDER BY us.nome;