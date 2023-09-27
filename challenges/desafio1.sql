DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE artistas(
    id_artista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

INSERT INTO artistas (nome)
VALUES ('Beyoncé'), 
('Queen'), 
('Elis Regina'), 
('Baco Exu do Blues'), 
('Blind Guardian'), 
('Nina Simone');

CREATE TABLE planos(
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(55) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL
);

INSERT INTO planos (tipo, valor)
VALUES ('gratuito', 0), 
('universitário', 5.99), 
('pessoal', 6.99), 
('familiar', 7.99);

CREATE TABLE usuários(
    id_usuário INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    idade INT NOT NULL,
    id_plano INT NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY (id_plano) REFERENCES planos(id_plano)
);

INSERT INTO usuários (nome, idade, id_plano, data_assinatura)
VALUES ('Barbara Liskov', 82, 1, '2019-10-20'),
('Robert Cecil Martin', 58, 1, '2017-01-06'),
('Ada Lovelace', 37, 4, '2017-12-30'),
('Martin Fowler', 46, 4, '2017-01-17'),
('Sandi Metz', 58, 4, '2018-04-29'),
('Paulo Freire', 19, 2, '2018-02-14'),
('Bell Hooks', 26, 2, '2018-01-05'),
('Christopher Alexander', 85, 3, '2019-06-05'),
('Judith Butler', 45, 3, '2020-05-13'),
('Jorge Amado', 58, 3, '2017-02-17');

CREATE TABLE albuns (
    id_album INT PRIMARY KEY AUTO_INCREMENT,
    nome_album VARCHAR(200) NOT NULL,
    nome_artista VARCHAR(200),
    id_artista INT NOT NULL,
    ano_lançamento INT NOT NULL,
    FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
);

INSERT INTO albuns (nome_album, nome_artista, id_artista, ano_lançamento)
VALUES ('Renaissance', 'Beyoncé', 1, 2022),
('Jazz', 'Queen', 2, 1978),
('Hot Space', 'Queen', 2, 1982), 
('Falso Brilhante', 'Elis Regina', 3, 1998), 
('Vento de Maio', 'Elis Regina', 3, 2001), 
('QVVJFA?', 'Baco Exu do Blues', 4, 2003), 
('Somewhere Far Beyond', 'Blind Guardian', 5, 2007), 
('I Put A Spell On You', 'Nina Simone', 6, 2012);

CREATE TABLE canções(
    id_canção INT PRIMARY KEY AUTO_INCREMENT,
    nome_canção VARCHAR(200) NOT NULL,
    nome_artista VARCHAR(200),
    id_album INT NOT NULL,
    duração_segundos INT NOT NULL,
    FOREIGN KEY (id_album) REFERENCES albuns(id_album)
);

INSERT INTO canções (nome_canção, nome_artista, id_album, duração_segundos)
VALUES ("BREAK MY SOUL", "Beyoncé", 1, 279),
("VIRGO'S GROOVE", "Beyoncé", 1, 369),
("ALIEN SUPERSTAR", "Beyoncé", 1, 116),
("Don't Stop Me Now", "Queen", 2, 203),
("Under Pressure", "Queen", 3, 152),
("Como Nossos Pais", "Elis Regina", 4, 105),
("O Medo de Amar é o Medo de Ser Livre", "Elis Regina", 5, 207),
("Samba em Paris", "Baco Exu do Blues", 6, 267),
("The Bard's Song", "Blind Guardian", 7, 244),
("Feeling Good", "Nina Simone", 8, 100);

CREATE TABLE histórico_reproduções(
  id_usuário INT,
  id_canção INT,
  data_reprodução DATETIME,
  PRIMARY KEY (id_usuário, id_canção),
  FOREIGN KEY (id_usuário) REFERENCES usuários(id_usuário),
  FOREIGN KEY (id_canção) REFERENCES canções(id_canção)
);

INSERT INTO histórico_reproduções (id_usuário, id_canção, data_reprodução)
VALUES
  ( 1, 8, '2022-02-28 10:45:55'),
  ( 1, 2, '2020-05-02 05:30:35'),
  ( 1, 10, '2020-03-06 11:22:33'),
  ( 2, 10, '2022-08-05 08:05:17'),
  ( 2, 7, '2020-01-02 07:40:33'),
  ( 3, 10, '2020-11-13 16:55:13'),
  ( 3, 2, '2020-12-05 18:38:30'),
  ( 4, 8, '2021-08-15 17:10:10'),
  ( 5, 8, '2022-01-09 01:44:33'),
  ( 5, 5, '2020-08-06 15:23:43'),
  ( 6, 7, '2017-01-24 00:31:17'),
  ( 6, 1, '2017-10-12 12:35:20'),
  ( 7, 4, '2011-12-15 22:30:49'),
  ( 8, 4, '2012-03-17 14:56:41'),
  ( 9, 9, '2022-02-24 21:14:22'),
  ( 10, 3, '2015-12-13 08:30:22');

CREATE TABLE seguindo_artistas(
    id_usuário INT,
    nome_artista VARCHAR(255),
    id_artista INT,
    PRIMARY KEY (id_usuário, id_artista),
    FOREIGN KEY (id_usuário) REFERENCES usuários(id_usuário),
    FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
);

INSERT INTO seguindo_artistas (id_usuário, nome_artista, id_artista)
VALUES (1, 'Beyoncé', 1),
(1, 'Queen', 2),
(1, 'Elis Regina', 3),
(2, 'Beyoncé', 1),
(2, 'Elis Regina', 3),
(3, 'Queen', 2),
(4, 'Baco Exu do Blues', 4),
(5, 'Blind Guardian', 5),
(5, 'Nina Simone', 6),
(6, 'Nina Simone', 6),
(6, 'Beyoncé', 1),
(7, 'Nina Simone', 6),
(9, 'Elis Regina', 3),
(10, 'Queen', 2);