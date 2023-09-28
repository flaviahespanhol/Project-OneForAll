SELECT us.nome AS pessoa_usuaria, IF (MAX(hr.data_reprodução) >= '2021-01-01','Ativa', 'Inativa') AS status_pessoa_usuaria
FROM usuários AS us 
INNER JOIN histórico_reproduções AS hr ON hr.id_usuário = us.id_usuário
GROUP BY us.nome
ORDER BY us.nome;