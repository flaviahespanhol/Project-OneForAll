SELECT COUNT(hr.id_usuário) AS musicas_no_historico
FROM histórico_reproduções AS hr
INNER JOIN usuários AS us ON hr.id_usuário = us.id_usuário WHERE us.id_usuário = 1 ;