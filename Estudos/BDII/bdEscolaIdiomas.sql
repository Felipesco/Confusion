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
	, nomeAluno VARCHAR(50) NOT NULL
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

-- Inserção de Dados
INSERT INTO tbCurso(nomeCurso, cargaHoraria, valorCurso)
VALUES ('Inglês', 2000, 356.00)
	, ('Alemão', 3000, 478.00)
	, ('Espanhol', 4000, 500.00)

INSERT INTO tbAluno(nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES ('Paulo Santos', '10/03/2000', '82.282.122-0', 'SP')
	, ('Maria da Gloria', '03/10/1999', '45.233.123-0', 'SP')
	, ('Pedro Nogueira da Silva', '04/04/1998', '23.533.211-9', 'SP')
	, ('Gilson Barros Silva', '09/09/1995', '34.221.111-x', 'PE')
	, ('Mariana Barbosa Santos', '10/10/2001', '54.222.122-9', 'RJ') 
	, ('Alessandro Pereira', '11/10/2003', '24.402.454-9', 'ES')
	, ('Aline Melo', '08/10/2001', '88.365.012-3', 'RJ')

INSERT INTO tbTurma(nomeTurma, codCurso, horarioTurma)
VALUES ('1|A', 1, '12:00:00')
	, ('1|C', 3, '18:00:00')
	, ('1|B', 1, '18:00:00')
	, ('1AA', 2, '19:00:00')

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES ('03/10/2015', 1, 1)
	, ('04/05/2014', 2, 1)
	, ('04/05/2014', 2, 4)
	, ('03/05/2012', 3, 2)
	, ('03/03/2016', 1, 3)
	, ('07/05/2015', 4, 2)
	, ('05/07/2015', 4, 3)


-- Atividade
--1)Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem;
SELECT nomeAluno AS 'Nome dos Alunos', nomeCurso AS 'Cursos' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso

--2)Apresentar a quantidade de alunos matriculados por nome do curso;
SELECT COUNT(tbAluno.codAluno) AS 'Qtnd. de alunos', nomeCurso AS 'Cursos' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
				GROUP BY nomeCurso 

--3)Apresentar a quantidade de alunos matriculados por nome da turma;
SELECT COUNT(tbAluno.codAluno) AS 'Qtnd. de alunos', nomeTurma AS 'Turma' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
		GROUP BY nomeTurma

--4)Apresentar a quantidade de alunos que fizeram matricula em maio de 2016;
SELECT COUNT(codAluno) AS 'Alunos matriculados em maio de 2016' FROM tbMatricula
	WHERE MONTH(dataMatricula) = 5 AND YEAR(dataMatricula) = 2016

--5)Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas e os nomes dos cursos em que estão matriculados;

--6)Apresentar o nome dos cursos e os horários em que eles são oferecidos;

--7)Apresentar a quantidade de alunos nascidos por estado que estejam matriculados no curso de ingles;

--8)Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa;

--9)Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês;

--10)Apresentar a quantidade de matriculas feitas no ano de 2016;
SELECT COUNT(codMatricula) AS 'Data das matriculas' FROM tbMatricula
	WHERE YEAR(dataMatricula) = 2016 

--11)Apresentar a quantidade de matriculas por nome do curso;

--12)Apresentar a quantidade de alunos que fazem os cursos que custam mais de R$300,00;

--13)Apresentar os nomes dos alunos que fazem o curso de alemão.
