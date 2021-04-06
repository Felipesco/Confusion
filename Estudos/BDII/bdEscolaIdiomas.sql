-- Criação do Banco de Dados 
CREATE DATABASE bdEscolaIdiomas
USE bdEscolaIdiomas

-- Criação das tabelas
CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso VARCHAR(25) NOT NULL
	, cargaHoraria INT NOT NULL
	, valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY (1,1)
	, dataNascAluno SMALLDATETIME NOT NULL
	, rgAluno VARCHAR(12) NOT NULL
	, naturalidadeAluno VARCHAR(2) NOT NULL
)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	, nomeTurma VARCHAR(10) NOT NULL
	, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	, horarioTurma TIME NOT NULL
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	, codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)

