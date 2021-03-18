--Felipe Santos de Almeida N: 09

-- Cria��o do Banco de Dados 
CREATE DATABASE bdRecursosHumanos
USE bdRecursosHumanos

CREATE TABLE tbDepartamento(
	codDepartamento INT PRIMARY KEY IDENTITY (1,1)
	, nomeDepartamento VARCHAR(50) NOT NULL
)

CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY (1,1)
	, nomeFuncionario VARCHAR (40) NOT NULL
	, cpfFuncionario VARCHAR (14) NOT NULL
	, sexoFuncionario VARCHAR (10) NOT NULL
	, dataNascimentoFuncionario VARCHAR(10) NOT NULL
	, salarioFuncionario SMALLMONEY NOT NULL
	, codDepartamento INT FOREIGN KEY REFERENCES tbDepartamento(codDepartamento)
)

CREATE TABLE tbDependente(
	codDependente INT PRIMARY KEY IDENTITY (1,1)
	, nomeDependente VARCHAR (40) NOT NULL
	, dataNascimentoDependente VARCHAR(10) NOT NULL 
	, sexoDependente VARCHAR (10) NOT NULL
	, codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
)


-- Inser��o de Dados 

INSERT INTO tbDepartamento(nomeDepartamento)
VALUES ('Ger�ncia')
	, ('Administra��o')
	, ('Financeiro')
	, ('Recursos Humanos')
	, ('Operacional')
	, ('Comercial')
	, ('TI')
	, ('Infraestrutura')
	, ('Banco de Dados')
	, ('CEO')

INSERT INTO tbFuncionario(nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascimentoFuncionario, salarioFuncionario, codDepartamento)
VALUES ('Maria Victoria Nunes', '840.655.200-02', 'Feminino', '17/01/1972', 5500, 1)
	, ('Jo�o Ant�nio Edgar Junior', '864.786.330-55', 'Masculino', '03/08/1975', 5500, 1)
	, ('Leonor Teixeira de Vaz', '828.065.900-51', 'Feminino', '02/01/1988', 4500, 2)
	, ('Santiago Mello Lopes', '137.441.210-46', 'Masculino', '19/03/1997', 4500, 2)
	, ('Matilde Ribeiro', '877.971.940-68', 'Feminino', '19/06/1975', 4500, 3)
	, ('Martim Luter Rei', '788.071.370-03', 'Masculino', '02/10/1976', 4500, 3)
	, ('Beatriz Gon�alves de Oliveira', '091.346.690-51', 'Feminino', '28/01/1978', 4000, 4)
	, ('Rodrigo Carvalho da Costa', '764.579.870-01', 'Masculino', '18/12/1997', 4000, 4)
	, ('Ana Julia Rodrigues Carvalho', '176.249.380-22', 'Feminino', '09/06/1966', 3750, 5)
	, ('Afonso Alencar dos Santos', '778.075.990-30', 'Masculino', '21/05/1973', 3750, 5)
	, ('Mariana Sousa de Jesus', '297.815.980-42', 'Feminino', '13/11/1995', 4000, 6)
	, ('Francisco Antonelli Romero', '003.655.870-28', 'Masculino', '19/06/1994', 4000,6)
	, ('Madalena Silva Correia', '899.090.440-48', 'Feminino', '23/12/1983', 3500, 7)
	, ('Tiago Dinz Jesus', '295.389.460-81', 'Masculino', '02/12/1967', 3500, 7)
	, ('Catarina dos Santos Fagundes', '775.460.040-47', 'Feminino', '03/07/1970', 3250, 8)
	, ('Diogo Lopes Ferrera', '576.250.500-68', 'Masculino', '09/12/2002', 3250, 8)
	, ('Carolina Santana Castro', '799.901.810-47', 'Feminino', '04/02/1964', 4750, 9)
	, ('Miguel Almeida Espinosa', '463.627.420-28', 'Masculino', '21/08/1989', 4750, 9)
	, ('Francisca Antonelli', '625.491.430-19', 'Feminino', '08/10/1996', 7500, 10)
	, ('Tom�s de V�s Conc�lo', '210.399.850-25', 'Masculino', '26/07/1970', 7500, 10)

INSERT INTO tbDependente(nomeDependente, dataNascimentoDependente, sexoDependente, codFuncionario)
VALUES ('Valentina Nunes Martins', '05/06/2000', 'Feminino', 1)
	, ('Adam Nunes Martins', '05/06/2000', 'Masculino', 1)
	, ('Miguel Edgar Ramos', '29/12/1999', 'Masculino', 2)
	, ('Helena de Vaz', '03/01/2016', 'Feminino', 3)


-- ATIVIDADE

--a) O total de dependentes do funcion�rio de c�digo 01
SELECT COUNT(codDependente) FROM tbDependente
WHERE codFuncionario = 1

--b) A m�dia dos sal�rios agrupados pelo c�digo do departamento excluindo o departamento de c�digo 10
SELECT codDepartamento, AVG(salarioFuncionario) FROM tbFuncionario
WHERE codDepartamento < 10
GROUP BY codDepartamento

--c) A soma dos sal�rios do departamento de c�digo 09
SELECT SUM(salarioFuncionario) AS 'Soma do sal�rio do departamento de BD' FROM tbFuncionario
WHERE codDepartamento = 9

--d) A quantidade de dependentes do sexo masculino
SELECT COUNT(sexoDependente) FROM tbDependente
WHERE sexoDependente LIKE 'M%'

--e) A quantidade de dependentes que nasceram no ano de 2000
SELECT COUNT(codDependente) FROM tbDependente
WHERE DATEPART(YEAR, dataNascimentoDependente) = 2000

--f) A quantidade de funcion�rios do departamento 03
SELECT COUNT(codDepartamento) FROM tbFuncionario
WHERE codDepartamento = 3

--g) A m�dia dos sal�rios do departamento 02
SELECT AVG(salarioFuncionario) FROM tbFuncionario
WHERE codDepartamento = 2

--h) O total de dependentes nascidos em junho que sejam do funcion�rio 01 ou 02
SELECT COUNT(codFuncionario) FROM tbDependente	
WHERE DATEPART(MONTH, dataNascimentoDependente) = 06 AND codFuncionario = 1 OR codFuncionario = 2

--i) O total de dependentes do sexo masculino que tenham nascido antes do ano 2000
SELECT COUNT(codDependente) FROM tbDependente
WHERE  DATEPART(YEAR, dataNascimentoDependente) < 2000 AND sexoDependente = 'Masculino'

--j) A quantidade de dependentes do sexo feminino e que n�o sejam do funcion�rio de c�digo 02
SELECT COUNT(codDependente) FROM tbDependente
WHERE codFuncionario != 2

--k) A quantidade de dependentes do funcion�rio de c�digo 3
SELECT COUNT(codDependente) FROM tbDependente 
WHERE codFuncionario = 3

--l) A soma dos sal�rios agrupados pelo c�digo do departamento
SELECT codDepartamento, SUM(salarioFuncionario) FROM tbFuncionario
GROUP BY codDepartamento

--m) A m�dia de sal�rios agrupados pelo c�digo do departamento
SELECT codDepartamento, AVG(salarioFuncionario) AS 'M�dia de sal�rios de cada departamento' FROM tbFuncionario
GROUP BY codDepartamento

--n) A quantidade de funcion�rios do departamento de 03
SELECT COUNT(codFuncionario) AS 'Quantidade de funcion�rios do Financeiro' FROM tbFuncionario
WHERE codDepartamento = 3

--o) O nome dos funcion�rios (em ordem alfab�tica) e a data de nascimento dos funcion�rios no formato DD/MM/AAAA
-- SOCORROOOO DEUS!!!!!!!!!!!!!!
-- J� tentei de tudo(ou quase tudo) pra poder apracer no formato DD/MM/AAAA
-- Ok Ok... "Consegui"... Peguei esse script, colei no txt, apaguei o banco, colei o script e mudei de SMALLDATETIME pra VARCHAR... Foi KKKK
SELECT nomeFuncionario, dataNascimentoFuncionario FROM tbFuncionario
ORDER BY nomeFuncionario

--p) O maior sal�rio
SELECT MAX(salarioFuncionario) AS 'Maior Sal�rio' FROM tbFuncionario

--q) O menor sal�rio
SELECT MIN(salarioFuncionario) AS 'Menor Sal�rio' FROM tbFuncionario