--N�o entendi como era a entrega, ai t� mandando tudo junto no mesmo arquivo

--Cria��o do Banco de Dados
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


-- INSER��O DE DADOS

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
    , ('Cris�lidas', 338, 2, 1, 1) --Machado
    , ('Mem�rias P�stumas de Br�s Cubas', 248, 1, 1, 1) --Machado 
    , ('Poemas dos Becos de Goi�s e Est�rias Mais', 240, 2, 2, 1) --Cora
    , ('Est�rias da Casa Velha da Ponte', 112, 2, 2, 1) --Cora
    , ('Vint�m de cobre: meias confiss�es de Aninha', 240, 2, 2, 2) --Cora
    , ('Vidas Secas', 155, 1, 3, 2) --Ramos
    , ('S. Bernardo', 288, 1, 3, 2) --Ramos
    , ('Ang�stia', 368, 1, 3, 2) --Ramos
    , ('A Hora da Estrela', 90, 1, 4, 2) --Clarice
    , ('Perto do Cora��o Selvagem', 179, 3, 4, 3) --Clarice
    , ('La�os de Fam�lia', 133, 3, 4, 3) --Clarice
    , ('O Continente - Vol. 1 e 2', 656, 3, 5, 3) --Erico
    , ('Olhai os L�rios do Campo', 263, 3, 5, 3) --Erico
    , ('Clarissa', 162, 3, 5, 3)

-- ATIVIDADE

--a) O total de livros que come�am com a letra P
SELECT nomeLivro FROM tbLivro
	WHERE nomeLivro LIKE 'P%'

--b) O maior n�mero de p�ginas entre todos os livros
SELECT MAX(numPaginas) AS 'Maior n�mero de p�ginas' FROM tblivro

--c) O menor n�mero de p�ginas entre todos os livros
SELECT MIN(numPaginas) AS 'Menor n�meor de p�ginas' FROM tbLivro

--d) A m�dia de p�ginas entre todos os livros
SELECT AVG(numPaginas) AS 'M�dia de p�ginas' FROM tbLivro

--e) A soma do n�mero de p�ginas dos livros de editora c�digo 01
SELECT SUM(numPaginas) AS 'Soma das p�ginas - Cia das Letras' FROM tbLivro
	WHERE codEditora = 1

--f) A soma dos n�meros de p�ginas dos livros que come�am com a letra A
SELECT SUM(numPaginas) AS 'Soma das p�ginas - A' FROM tbLivro
	WHERE nomeLivro LIKE 'A%'

--g) A m�dia dos n�meros de p�ginas dos livros que sejam do autor c�digo 03
SELECT AVG(numPaginas) AS 'M�dia do num. de p�ginas - Graciliano' FROM tbLivro
	WHERE codAutor = 3 

--h) A quantidade de livros da editora de c�digo 04
--SELECT codEditora FROM tbEditora
SELECT codLivro AS 'Editora desconhecida' FROM tbLivro
	WHERE codEditora = 4

--i) A m�dia do n�mero de p�ginas dos livros que tenham a palavra �estrela� em seu nome
SELECT AVG(numPaginas) AS 'M�dia de pags com o nome Estrla' FROM tbLivro
	WHERE nomeLivro LIKE '%Estrela%'

--j) A quantidade de livros que tenham a palavra �poema� em seu nome
--SELECT nomeLivro AS 'Livros de Poemas' FROM tbLivro
--	WHERE nomeLivro LIKE '%Poema%'
SELECT codLivro FROM tbLivro
	WHERE nomeLivro LIKE '%Poema%'