SELECT MIN(p.valor) AS faturamento_minimo, 
MAX(p.valor) AS faturamento_maximo,
ROUND(AVG(p.valor), 2) AS faturamento_medio,
SUM(p.valor) AS faturamento_total
 FROM planos AS p
 INNER JOIN usuários AS us ON us.id_plano = p.id_plano;
