USE bdExercicio
--1) a soma de todos os c�digos dos funcion�rios
SELECT sum(codDadosFunc) AS 'Soma dos c�digos dos Funcion�rios' FROM tbDadosFunc

--2) a soma de todas as idades dos funcion�rios
SELECT sum(idade) AS 'Soma das idades dos Funcion�rios' FROM tbDadosFunc

--3) a soma de todos os filhos dos funcion�rios
SELECT sum(qtde_filhos) AS 'Soma dos filhos dos Funcion�rios' FROM tbDadosFunc

--4) a soma de todos os sal�rios dos funcion�rios 
SELECT sum(salario) AS 'Soma dos sal�rios dos Funcion�rios' FROM tbFunc

--5) a soma do tempo de empresa de todos os funcion�rios
SELECT sum(tempo_empresa) AS 'Soma do tempo de Empresa dos funcion�rios' FROM tbFunc

--6) a soma do tempo no cargo de todos os funcion�rios
SELECT sum(tempo_cargo) AS 'Soma do tempo de cargo dos funcion�rios' FROM tbFunc

--7) apresente o maior c�digo
SELECT max(codDadosFunc) AS 'Maior C�digo' FROM tbDadosFunc
SELECT max(codFunc) AS 'Maior C�digo tamb�m' FROM tbFunc
--Achei que podia dar certo esse aqui tamb�m
--SELECT count(codDadosFunc) FROM tbDadosFunc

--8) apresente o menor c�digo
SELECT min(codDadosFunc) AS 'Menor C�digo' FROM tbDadosFunc
SELECT min(codFunc) AS 'Menor C�digo tamb�m' FROM tbFunc

--9) apresente a maior idade
SELECT max(idade) AS 'Maior idade entre os Funcion�rios' FROM tbDadosFunc

--10) apresente a menor idade 
SELECT min(idade) AS 'Menor idade entre os Funcion�rios' FROM tbDadosFunc

--11) apresente a maior quantidade de filhos
SELECT max(qtde_filhos) AS 'Maior Quantidade de Filhos' FROM tbDadosFunc

--12) apresente a menor quantidade de filhos
SELECT min(qtde_filhos) AS 'Menor quantidade de filhos' FROM tbDadosFunc

--13) apresente o maior sal�rio
SELECT max(salario) AS 'Maior Sal�rio entre os funcion�rios' FROM tbFunc

--14) apresente o menor sal�rio
SELECT min(salario) AS 'Menor Sal�rio entre os funcion�rios' FROM tbFunc

--15) apresente o maior tempo de empresa 
SELECT max(tempo_empresa) AS 'Maior tempo de empresa' FROM tbFunc

--16) apresente o menor tempo de empresa
SELECT min(tempo_empresa) AS 'Menor tempo de empresa' FROM tbFunc

--17) apresente o maior tempo no cargo
SELECT max(tempo_cargo) AS 'Maior tempo no cargo' FROM tbFunc

--18) apresente o menor tempo no cargo
SELECT min(tempo_cargo) AS 'Menor tempo no cargo' FROM tbFunc

--19) a m�dia de todos os c�digos dos funcion�rios
SELECT avg(codDadosFunc) AS 'M�dia dos codigos dos funcion�rios' FROM tbFunc
SELECT avg(codDadosFunc) AS 'M�dia dos codigos dos funcion�rios' FROM tbDadosFunc

--20) a m�dia da idade dos funcion�rios
SELECT avg(idade) AS 'M�dia das idades dos funcion�rios' FROM tbDadosFunc 

--21) a m�dia de filhos dos funcion�rios
SELECT avg(qtde_filhos) AS 'M�dia da quantidade de filhos dos funcin�rios' FROM tbDadosFunc

--22) a m�dia dos sal�rios dos funcion�rios
SELECT avg(salario) AS 'M�dia do sal�rio dos funcion�rios' FROM tbFunc

--23) a m�dia de tempo na empresa dos funcion�rios
SELECT avg(tempo_empresa) AS 'M�dia de tempo na empresa' FROM tbFunc

--24) a m�dia de tempo no cargo dos funcion�rios
SELECT avg(tempo_cargo) AS 'M�dia de tempo no cargo' FROM tbFunc

--25) apresente a quantidade de funcion�rios que ganham mais de 800 reais
SELECT count(codFunc) AS 'Funcion�rios que ganham mais que R$ 800' FROM tbFunc
WHERE salario > 800

--26) Apresente a quantidade de funcion�rios que ganham mais de 1000 reais
SELECT count(codFunc) AS 'Funcion�rios que ganham mais que R$ 1000' FROM tbFunc
WHERE salario > 1000

--27) apresente a quantidade de funcion�rios que ganham menos que 400 reais
SELECT count(codFunc) AS 'Funcion�rios que ganham menos que R$ 400' FROM tbFunc
WHERE salario < 400

--28) apresente a quantidade de funcion�rios que ganham menos de 2000 reais
SELECT count(codFunc) AS 'Funcion�rios que ganham menos que R$ 2000' FROM tbFunc
WHERE salario < 2000

--29) apresente a quantidade de funcion�rios que ganham mais de 8000 reais 
SELECT count(codFunc) AS 'Funcion�rios que ganham mais que R$ 8000' FROM tbFunc
WHERE salario > 8000

--30) apresente a quantidade de funcion�rios que ganham menos de 1000 reais
SELECT count(codFunc) AS 'Funcion�rios que ganham mais que R$ 1000' FROM tbFunc
WHERE salario < 1000

--31) apresente a quantidade de funcion�rios que tenham tempo no cargo igual a 1
SELECT count(codFunc) AS 'Tempo de cargo igual a 1 m�s' FROM tbFunc 
WHERE tempo_cargo = 1

--32) apresente a quantidade de funcion�rios que tenham tempo no cargo igual a 3
SELECT count(codFunc) AS 'Tempo de cargo igual a 3 meses' FROM tbFunc
WHERE tempo_cargo = 3

--33) apresente a quantidade de funcion�rios que tenham tempo no cargo igual a 4
SELECT count(codFunc) AS 'Tempo de cargo igual a 4 meses' FROM tbFunc
WHERE tempo_cargo = 4

--34) apresente a quantidade de funcion�rios que tenham tempo no cargo maior que 10
SELECT count(codFunc) AS 'Tempo de cargo maior que 10 meses' FROM tbFunc
WHERE tempo_cargo > 10

--35) apresente a quantidade de funcion�rios que tenham idade superior a 20
SELECT count(codDadosFunc) AS 'Funcion�rios maiores de 20 anos' FROM tbDadosFunc
WHERE idade > 20

--36) apresente a quantidade de funcion�rios que tenham idade superior a 40
SELECT count(codDadosFunc) AS 'Funcion�rios maiores de 40 anos' FROM tbDadosFunc
WHERE idade > 40 

--37) apresente a quantidade de funcion�rios que tenham idade inferior a 80
SELECT count(codDadosFunc) AS 'Funcion�rios menores de 80 anos' FROM tbDadosFunc
WHERE idade < 80

--38) apresente a quantidade de funcion�rios que tenham idade inferior a 200
SELECT count(codDadosFunc) AS 'Funcion�rios menores de 200 anos' FROM tbDadosFunc
WHERE idade < 200

--39) apresente a quantidade de gerentes da empresa
--SELECT cargo FROM tbFunc
SELECT count(codFunc) AS 'Quantidade de gerentes da empresa' FROM tbFunc
WHERE cargo LIKE 'Gerente'

--40) apresente a quantidade de analista da empresa
SELECT count(codFunc) AS 'Quantidade de Analistas' FROM tbFunc
WHERE cargo LIKE 'Analista'

--41) apresente a quantidade de designer da empresa
SELECT count(codFunc) AS 'Quantidade de Designers' FROM tbFunc
WHERE cargo LIKE 'Designer'

--42) apresente a quantidade de programadores da empresa
SELECT count(codFunc) AS 'Quantidade de Programadores' FROM tbFunc
WHERE cargo LIKE 'Programador'

--SUM_____________________________________________________________
--43) apresente a somat�ria dos sal�rios dos analistas da empresa
SELECT sum(salario) AS 'Soma dos sal�rios dos Analistas' FROM tbFunc
WHERE cargo LIKE 'Analista'

--44) apresente a somat�ria dos sal�rios dos gerentes da empresa
SELECT sum(salario) AS 'Soma dos salario dos Gerentes' FROM tbFunc
WHERE cargo LIKE 'Gerente'

--45) apresente o total de funcion�rios que nasceram em S�o Paulo
SELECT count(codDadosFunc) AS 'Funcion�rios que nasceram em S�o Paulo' FROM tbDadosFunc
WHERE uf LIKE 'SP'

--46) apresente o total de funcion�rios que nasceram na Bahia
SELECT count(codDadosFunc) AS 'Funcion�rios que nasceram na Bahia' FROM tbDadosFunc
WHERE uf LIKE 'BH'

--47) apresente o total de funcion�rios que nasceram no Cear�
SELECT count(codDadosFunc) AS 'Funcion�rios que nasceram no Cear�' FROM tbDadosFunc
WHERE uf LIKE 'CE'

--48) apresente o total de funcion�rios que nasceram no Rio de Janeiro
SELECT count(codDadosFunc) AS 'Funcion�rios que nasceram no Rio de Janeiro' FROM tbDadosFunc
WHERE uf LIKE 'RJ'

--49) apresente o total de funcion�rios da empresa, exceto os que nasceram no Rio Janeiro
SELECT count(codDadosFunc) AS 'Total de funcion�rios. Sem contar com o RJ' FROM tbDadosFunc
WHERE uf NOT LIKE 'RJ'

--50) apresente a quantidade de funcion�rios sindicalizados ( 1 )
SELECT count(codFunc) AS 'Funcion�rios sindicalizados' FROM tbFunc
WHERE sindicalizado = 1

--51) apresente a quantidade de funcion�rios n�o sindicalizados ( 0 )
SELECT count(codFunc) AS 'Funcion�rios N�o sindicalizados' FROM tbFunc
WHERE sindicalizado = 0

--Consultas com group by e order by

--52) apresente a quantidade de funcion�rios por cargo em ordem alfab�tica
SELECT count(codFunc) AS 'Quantidade de funcion�rios no cargo ', cargo  FROM tbFunc
GROUP BY cargo 

--53) apresente a quantidade de funcion�rios agrupados pelo n�mero de filhos
-- N�o entendi direito o que era pra fazer nesse
SELECT count(codDadosFunc) AS 'Funcion�rios', qtde_filhos  FROM tbDadosFunc
GROUP BY qtde_filhos

--54) apresente a quantidade de funcion�rios agrupados pela idade em ordem decrescente
SELECT count(codDadosFunc) AS 'Quantidade de Funcion�rios', idade FROM tbDadosFunc
GROUP BY idade 
ORDER BY idade

--55) apresente o total de funcion�rios agrupados pelo estado de nascimento em ordem alfab�tica
SELECT count(codDadosFunc) AS 'Funcion�rios', uf AS 'Estado de nascimento' FROM tbDadosFunc
GROUP BY uf
ORDER BY uf

--56) apresente o total de funcion�rios agrupados pela op��o de sindicalizado
SELECT count(codFunc) AS 'Funcion�rios', sindicalizado FROM tbFunc
GROUP BY sindicalizado
ORDER BY sindicalizado desc

--57) apresente a lista de todos os funcion�rios com cargo e sal�rio em ordem do maior pra o menor sal�rio
SELECT cargo, salario AS 'Sal�rio' FROM tbFunc
ORDER BY salario desc

--58) apresente a lista de funcion�rios com o cargo, o tempo no cargo e o tempo na empresa ordenando o resultado do funcion�rio mais antigo na empresa para o mais novo
SELECT cargo, tempo_cargo AS 'Tempo no cargo', tempo_empresa AS 'Tempo na empresa' FROM tbFunc
ORDER BY tempo_empresa desc

--59) apresente a lista de funcion�rios com o cargo, o tempo no cargo e o tempo na empresa ordenando o resultado do funcion�rio mais antigo no cargo para o mais novo, no cargo de Analista
SELECT cargo, tempo_cargo AS 'Tempo no cargo', tempo_empresa AS 'Tempo na empresa' FROM tbFunc
WHERE cargo LIKE 'Analista'
ORDER BY tempo_cargo desc

--60) apresente a lista de funcion�rios com o cargo, o tempo no cargo e o tempo na empresa ordenando o resultado do funcion�rio mais antigo na empresa para o mais novo dos funcion�rios que s�o sindicalizados
SELECT cargo, tempo_cargo AS 'Tempo no cargo', tempo_empresa AS 'Tempo na empresa' FROM tbFunc
WHERE sindicalizado = 1
ORDER BY tempo_empresa desc
