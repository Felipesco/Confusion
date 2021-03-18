CREATE DATABASE bdExercicio
USE bdExercicio

CREATE TABLE tbDadosFunc(
	codDadosFunc INT PRIMARY KEY IDENTITY (1, 1)
	, nome_func VARCHAR (30) NOT NULL
    , uf VARCHAR (2) NOT NULL
    , idade INT NOT NULL
    , qtde_filhos INT NOT NULL
)

CREATE TABLE tbFunc(
    codFunc INT PRIMARY KEY IDENTITY (1, 1)
    , codDadosFunc INT FOREIGN KEY REFERENCES tbDadosFunc(codDadosFunc)
    , cargo VARCHAR (25) NOT NULL
    , salario SMALLMONEY NOT NULL
    , tempo_empresa INT NOT NULL
    , tempo_cargo INT NOT NULL
    , sindicalizado INT NOT NULL
)