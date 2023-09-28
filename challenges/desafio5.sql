SELECT can.nome_canção AS cancao, COUNT(hr.id_canção) AS reproducoes
FROM canções AS can
INNER JOIN histórico_reproduções AS hr ON can.id_canção = hr.id_canção
GROUP BY can.nome_canção
ORDER BY COUNT(hr.id_canção) DESC, can.nome_canção 
LIMIT 2;