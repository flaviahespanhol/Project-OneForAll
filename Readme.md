# Projeto 'One For All'

## Descrição
Neste projeto desenvolvi algumas queries de SQL. O SQL é uma linguagem que tem extrema relevância quando o assunto é manipulação de dados no banco, o que a torna uma ferramenta essencial para diversas áreas da tecnologia.

## Conteúdo
Os principais objetivos desse projeto são:
1. Analisar tabelas não normalizadas.
2. Identificar modificações necessárias para que suas tabelas estejam adequadamente na 1ª, 2ª e 3ª Forma Normais.
3. Criar um banco de dados a partir de uma planilha que contém tabelas e dados.
4. Criar e modelar tabelas.
5. Queries que passam pelos principais comandos SQL.
   
## Desafios desenvolvidos no projeto

`DESAFIO 1` Normalizar as tabelas da planilha para a 3° Forma Normal.
 Depois de feito isso, criar as tabelas no banco de dados.
 
`DESAFIO 2` Criar uma QUERY que exiba três colunas:
1. A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "cancoes".
2. A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "artistas".
3. A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "albuns".

`DESAFIO 3` Criar uma QUERY que deverá exibir apenas três colunas:
1. A primeira coluna deve possuir o alias "pessoa_usuaria" e exibir o nome da pessoa usuária.
2. A segunda coluna deve possuir o alias "musicas_ouvidas" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.
3. A terceira coluna deve possuir o alias "total_minutos" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

`DESAFIO 4` Criar uma QUERY que deve mostrar as pessoas usuárias que estavam ativas a partir do ano de 2021, se baseando na data mais recente no histórico de reprodução.
1. A primeira coluna deve possuir o alias "pessoa_usuaria" e exibir o nome da pessoa usuária.
2. A segunda coluna deve ter o alias "status_pessoa_usuaria" e exibir se a pessoa usuária está ativa ou inativa.

`DESAFIO 5` Criar uma QUERY que exiba duas colunas:
1. A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.
2. A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.
OBS: O resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordenar os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

`DESAFIO 6` Criar uma QUERY que deve exibir quatro dados:
1. A primeira coluna deve ter o alias "faturamento_minimo" e exibir o menor valor de plano existente para uma pessoa usuária.
2. A segunda coluna deve ter o alias "faturamento_maximo" e exibir o maior valor de plano existente para uma pessoa usuária.
3. A terceira coluna deve ter o alias "faturamento_medio" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.
4. Por fim, a quarta coluna deve ter o alias "faturamento_total" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.
OBS: Para cada um desses dados, por se tratarem de valores monetários, deve-se arredondar o faturamento usando apenas duas casas decimais.

`DESAFIO 7` Criar uma QUERY com as seguintes colunas:
1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".
2. A segunda coluna deve exibir o nome do álbum, com o alias "album".
3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "pessoas_seguidoras".
OBS: Os resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordenar os resultados pelo nome da pessoa artista em ordem alfabética e caso existam artistas com o mesmo nome, ordenar os resultados pelo nome do álbum alfabeticamente.

`DESAFIO 8` Criar uma QUERY que deve exibir as seguintes colunas:
1. O nome da pessoa artista, com o alias "artista".
2. O nome do álbum, com o alias "album".
OBS: Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

`DESAFIO 9` Criar uma QUERY que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso se quer saber quantas músicas estão no histórico da usuária "Barbara Liskov" e a consulta deve retornar a seguinte coluna: o valor da quantidade, com o alias "musicas_no_historico".
## Planilha usada para o projeto:
Abaixo você pode visualizar uma planilha com as tabelas que deverão ser normalizadas:
[![Tabela não normalizada "Spotify Clone"](./images/non-normalized-tables.png)](./SpotifyClone-Non-NormalizedTable.xlsx)
[Faça o download dela aqui](./SpotifyClone-Non-NormalizedTable.xlsx)

## Instruções de Instalação

<summary>Início rápido com apenas um container MySQL</summary><br>
> :atenção: **Atenção**: É necessário criar um container MySQL e passar as credenciais através de variáveis de ambiente. 
Veja a [FAQ](./FAQ.md#rodando-o-projeto-localmente) para mais detalhes.
>
> :atenção: O avaliador espera que a versão do `node` utilizada seja a 16.
```bash
npm install
docker run -p 3306:3306 --name mysql_8 -e MYSQL_ROOT_PASSWORD=password --platform=linux/amd64 -d mysql:8.0.23 mysqld --default-authentication-plugin=mysql_native_password
MYSQL_USER=root MYSQL_PASSWORD=password MYSQL_HOSTNAME=localhost npm test # roda todos os testes
MYSQL_USER=root MYSQL_PASSWORD=password MYSQL_HOSTNAME=localhost npm test -- -t "01" # rodando apenas o teste do requisito 01
```
