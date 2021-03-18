--Não entendi como era a entrega, ai tô mandando tudo junto no mesmo arquivo

--Criação do Banco de Dados
CREATE DATABASE  bdLivrariaBrasileira

USE bdLivrariaBrasileira

CREATE TABLE tbAutor(
    codAutor INT PRIMARY KEY IDENTITY (1,1)
    , nomeAutor VARCHAR(40) NOT NULL
)

CREATE TABLE tbEditora(
     codEditora INT PRIMARY KEY IDENTITY (1,1)
     , nomeEditora VARCHAR(30) NOT NULL
)

CREATE TABLE tbGenero(
    codGenero INT PRIMARY KEY IDENTITY (1,1)
    , nomeGenero VARCHAR(30)
)

CREATE TABLE tbLivro(
    codLivro INT PRIMARY KEY IDENTITY (1,1)
    , nomeLivro VARCHAR(50) NOT NULL
    , numPaginas INT NOT NULL
    , codGenero INT FOREIGN KEY REFERENCES tbGenero(codGenero)
    , codAutor INT FOREIGN KEY REFERENCES tbAutor(codAutor)
    , codEditora INT FOREIGN KEY REFERENCES tbEditora(codEditora)
)


-- INSERÇÃO DE DADOS

INSERT INTO tbAutor(nomeAutor)
VALUES ('Machado de Assis')
    , ('Cora Coralina')
    , ('Graciliano Ramos')
    , ('Clarice Lispector')
    , ('Erico Verissimo')

INSERT INTO tbEditora(nomeEditora)
VALUES ('Cia das Letras')
    , ('Atica')
    , ('Saraiva')

INSERT INTO tbGenero(nomeGenero)
VALUES ('Romance')
    , ('Poesia')
    , ('Literatura Brasileira')

INSERT INTO tbLivro(nomeLivro, numPaginas, codGenero, codAutor, codEditora)
VALUES ('Falenas', 296, 2, 1, 1) --Machado
    , ('Crisálidas', 338, 2, 1, 1) --Machado
    , ('Memórias Póstumas de Brás Cubas', 248, 1, 1, 1) --Machado 
    , ('Poemas dos Becos de Goiás e Estórias Mais', 240, 2, 2, 1) --Cora
    , ('Estórias da Casa Velha da Ponte', 112, 2, 2, 1) --Cora
    , ('Vintém de cobre: meias confissões de Aninha', 240, 2, 2, 2) --Cora
    , ('Vidas Secas', 155, 1, 3, 2) --Ramos
    , ('S. Bernardo', 288, 1, 3, 2) --Ramos
    , ('Angústia', 368, 1, 3, 2) --Ramos
    , ('A Hora da Estrela', 90, 1, 4, 2) --Clarice
    , ('Perto do Coração Selvagem', 179, 3, 4, 3) --Clarice
    , ('Laços de Família', 133, 3, 4, 3) --Clarice
    , ('O Continente - Vol. 1 e 2', 656, 3, 5, 3) --Erico
    , ('Olhai os Lírios do Campo', 263, 3, 5, 3) --Erico
    , ('Clarissa', 162, 3, 5, 3)

-- ATIVIDADE

--a) O total de livros que começam com a letra P
SELECT nomeLivro FROM tbLivro
	WHERE nomeLivro LIKE 'P%'

--b) O maior número de páginas entre todos os livros
SELECT MAX(numPaginas) AS 'Maior número de páginas' FROM tblivro

--c) O menor número de páginas entre todos os livros
SELECT MIN(numPaginas) AS 'Menor númeor de páginas' FROM tbLivro

--d) A média de páginas entre todos os livros
SELECT AVG(numPaginas) AS 'Média de páginas' FROM tbLivro

--e) A soma do número de páginas dos livros de editora código 01
SELECT SUM(numPaginas) AS 'Soma das páginas - Cia das Letras' FROM tbLivro
	WHERE codEditora = 1

--f) A soma dos números de páginas dos livros que começam com a letra A
SELECT SUM(numPaginas) AS 'Soma das páginas - A' FROM tbLivro
	WHERE nomeLivro LIKE 'A%'

--g) A média dos números de páginas dos livros que sejam do autor código 03
SELECT AVG(numPaginas) AS 'Média do num. de páginas - Graciliano' FROM tbLivro
	WHERE codAutor = 3 

--h) A quantidade de livros da editora de código 04
--SELECT codEditora FROM tbEditora
SELECT codLivro AS 'Editora desconhecida' FROM tbLivro
	WHERE codEditora = 4

--i) A média do número de páginas dos livros que tenham a palavra “estrela” em seu nome
SELECT AVG(numPaginas) AS 'Média de pags com o nome Estrla' FROM tbLivro
	WHERE nomeLivro LIKE '%Estrela%'

--j) A quantidade de livros que tenham a palavra “poema” em seu nome
--SELECT nomeLivro AS 'Livros de Poemas' FROM tbLivro
--	WHERE nomeLivro LIKE '%Poema%'
SELECT codLivro FROM tbLivro
	WHERE nomeLivro LIKE '%Poema%'