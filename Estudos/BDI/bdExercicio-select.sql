USE bdExercicio
--1) a soma de todos os códigos dos funcionários
SELECT sum(codDadosFunc) AS 'Soma dos códigos dos Funcionários' FROM tbDadosFunc

--2) a soma de todas as idades dos funcionários
SELECT sum(idade) AS 'Soma das idades dos Funcionários' FROM tbDadosFunc

--3) a soma de todos os filhos dos funcionários
SELECT sum(qtde_filhos) AS 'Soma dos filhos dos Funcionários' FROM tbDadosFunc

--4) a soma de todos os salários dos funcionários 
SELECT sum(salario) AS 'Soma dos salários dos Funcionários' FROM tbFunc

--5) a soma do tempo de empresa de todos os funcionários
SELECT sum(tempo_empresa) AS 'Soma do tempo de Empresa dos funcionários' FROM tbFunc

--6) a soma do tempo no cargo de todos os funcionários
SELECT sum(tempo_cargo) AS 'Soma do tempo de cargo dos funcionários' FROM tbFunc

--7) apresente o maior código
SELECT max(codDadosFunc) AS 'Maior Código' FROM tbDadosFunc
SELECT max(codFunc) AS 'Maior Código também' FROM tbFunc
--Achei que podia dar certo esse aqui também
--SELECT count(codDadosFunc) FROM tbDadosFunc

--8) apresente o menor código
SELECT min(codDadosFunc) AS 'Menor Código' FROM tbDadosFunc
SELECT min(codFunc) AS 'Menor Código também' FROM tbFunc

--9) apresente a maior idade
SELECT max(idade) AS 'Maior idade entre os Funcionários' FROM tbDadosFunc

--10) apresente a menor idade 
SELECT min(idade) AS 'Menor idade entre os Funcionários' FROM tbDadosFunc

--11) apresente a maior quantidade de filhos
SELECT max(qtde_filhos) AS 'Maior Quantidade de Filhos' FROM tbDadosFunc

--12) apresente a menor quantidade de filhos
SELECT min(qtde_filhos) AS 'Menor quantidade de filhos' FROM tbDadosFunc

--13) apresente o maior salário
SELECT max(salario) AS 'Maior Salário entre os funcionários' FROM tbFunc

--14) apresente o menor salário
SELECT min(salario) AS 'Menor Salário entre os funcionários' FROM tbFunc

--15) apresente o maior tempo de empresa 
SELECT max(tempo_empresa) AS 'Maior tempo de empresa' FROM tbFunc

--16) apresente o menor tempo de empresa
SELECT min(tempo_empresa) AS 'Menor tempo de empresa' FROM tbFunc

--17) apresente o maior tempo no cargo
SELECT max(tempo_cargo) AS 'Maior tempo no cargo' FROM tbFunc

--18) apresente o menor tempo no cargo
SELECT min(tempo_cargo) AS 'Menor tempo no cargo' FROM tbFunc

--19) a média de todos os códigos dos funcionários
SELECT avg(codDadosFunc) AS 'Média dos codigos dos funcionários' FROM tbFunc
SELECT avg(codDadosFunc) AS 'Média dos codigos dos funcionários' FROM tbDadosFunc

--20) a média da idade dos funcionários
SELECT avg(idade) AS 'Média das idades dos funcionários' FROM tbDadosFunc 

--21) a média de filhos dos funcionários
SELECT avg(qtde_filhos) AS 'Média da quantidade de filhos dos funcinários' FROM tbDadosFunc

--22) a média dos salários dos funcionários
SELECT avg(salario) AS 'Média do salário dos funcionários' FROM tbFunc

--23) a média de tempo na empresa dos funcionários
SELECT avg(tempo_empresa) AS 'Média de tempo na empresa' FROM tbFunc

--24) a média de tempo no cargo dos funcionários
SELECT avg(tempo_cargo) AS 'Média de tempo no cargo' FROM tbFunc

--25) apresente a quantidade de funcionários que ganham mais de 800 reais
SELECT count(codFunc) AS 'Funcionários que ganham mais que R$ 800' FROM tbFunc
WHERE salario > 800

--26) Apresente a quantidade de funcionários que ganham mais de 1000 reais
SELECT count(codFunc) AS 'Funcionários que ganham mais que R$ 1000' FROM tbFunc
WHERE salario > 1000

--27) apresente a quantidade de funcionários que ganham menos que 400 reais
SELECT count(codFunc) AS 'Funcionários que ganham menos que R$ 400' FROM tbFunc
WHERE salario < 400

--28) apresente a quantidade de funcionários que ganham menos de 2000 reais
SELECT count(codFunc) AS 'Funcionários que ganham menos que R$ 2000' FROM tbFunc
WHERE salario < 2000

--29) apresente a quantidade de funcionários que ganham mais de 8000 reais 
SELECT count(codFunc) AS 'Funcionários que ganham mais que R$ 8000' FROM tbFunc
WHERE salario > 8000

--30) apresente a quantidade de funcionários que ganham menos de 1000 reais
SELECT count(codFunc) AS 'Funcionários que ganham mais que R$ 1000' FROM tbFunc
WHERE salario < 1000

--31) apresente a quantidade de funcionários que tenham tempo no cargo igual a 1
SELECT count(codFunc) AS 'Tempo de cargo igual a 1 mês' FROM tbFunc 
WHERE tempo_cargo = 1

--32) apresente a quantidade de funcionários que tenham tempo no cargo igual a 3
SELECT count(codFunc) AS 'Tempo de cargo igual a 3 meses' FROM tbFunc
WHERE tempo_cargo = 3

--33) apresente a quantidade de funcionários que tenham tempo no cargo igual a 4
SELECT count(codFunc) AS 'Tempo de cargo igual a 4 meses' FROM tbFunc
WHERE tempo_cargo = 4

--34) apresente a quantidade de funcionários que tenham tempo no cargo maior que 10
SELECT count(codFunc) AS 'Tempo de cargo maior que 10 meses' FROM tbFunc
WHERE tempo_cargo > 10

--35) apresente a quantidade de funcionários que tenham idade superior a 20
SELECT count(codDadosFunc) AS 'Funcionários maiores de 20 anos' FROM tbDadosFunc
WHERE idade > 20

--36) apresente a quantidade de funcionários que tenham idade superior a 40
SELECT count(codDadosFunc) AS 'Funcionários maiores de 40 anos' FROM tbDadosFunc
WHERE idade > 40 

--37) apresente a quantidade de funcionários que tenham idade inferior a 80
SELECT count(codDadosFunc) AS 'Funcionários menores de 80 anos' FROM tbDadosFunc
WHERE idade < 80

--38) apresente a quantidade de funcionários que tenham idade inferior a 200
SELECT count(codDadosFunc) AS 'Funcionários menores de 200 anos' FROM tbDadosFunc
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
--43) apresente a somatória dos salários dos analistas da empresa
SELECT sum(salario) AS 'Soma dos salários dos Analistas' FROM tbFunc
WHERE cargo LIKE 'Analista'

--44) apresente a somatória dos salários dos gerentes da empresa
SELECT sum(salario) AS 'Soma dos salario dos Gerentes' FROM tbFunc
WHERE cargo LIKE 'Gerente'

--45) apresente o total de funcionários que nasceram em São Paulo
SELECT count(codDadosFunc) AS 'Funcionários que nasceram em São Paulo' FROM tbDadosFunc
WHERE uf LIKE 'SP'

--46) apresente o total de funcionários que nasceram na Bahia
SELECT count(codDadosFunc) AS 'Funcionários que nasceram na Bahia' FROM tbDadosFunc
WHERE uf LIKE 'BH'

--47) apresente o total de funcionários que nasceram no Ceará
SELECT count(codDadosFunc) AS 'Funcionários que nasceram no Ceará' FROM tbDadosFunc
WHERE uf LIKE 'CE'

--48) apresente o total de funcionários que nasceram no Rio de Janeiro
SELECT count(codDadosFunc) AS 'Funcionários que nasceram no Rio de Janeiro' FROM tbDadosFunc
WHERE uf LIKE 'RJ'

--49) apresente o total de funcionários da empresa, exceto os que nasceram no Rio Janeiro
SELECT count(codDadosFunc) AS 'Total de funcionários. Sem contar com o RJ' FROM tbDadosFunc
WHERE uf NOT LIKE 'RJ'

--50) apresente a quantidade de funcionários sindicalizados ( 1 )
SELECT count(codFunc) AS 'Funcionários sindicalizados' FROM tbFunc
WHERE sindicalizado = 1

--51) apresente a quantidade de funcionários não sindicalizados ( 0 )
SELECT count(codFunc) AS 'Funcionários Não sindicalizados' FROM tbFunc
WHERE sindicalizado = 0

--Consultas com group by e order by

--52) apresente a quantidade de funcionários por cargo em ordem alfabética
SELECT count(codFunc) AS 'Quantidade de funcionários no cargo ', cargo  FROM tbFunc
GROUP BY cargo 

--53) apresente a quantidade de funcionários agrupados pelo número de filhos
-- Não entendi direito o que era pra fazer nesse
SELECT count(codDadosFunc) AS 'Funcionários', qtde_filhos  FROM tbDadosFunc
GROUP BY qtde_filhos

--54) apresente a quantidade de funcionários agrupados pela idade em ordem decrescente
SELECT count(codDadosFunc) AS 'Quantidade de Funcionários', idade FROM tbDadosFunc
GROUP BY idade 
ORDER BY idade

--55) apresente o total de funcionários agrupados pelo estado de nascimento em ordem alfabética
SELECT count(codDadosFunc) AS 'Funcionários', uf AS 'Estado de nascimento' FROM tbDadosFunc
GROUP BY uf
ORDER BY uf

--56) apresente o total de funcionários agrupados pela opção de sindicalizado
SELECT count(codFunc) AS 'Funcionários', sindicalizado FROM tbFunc
GROUP BY sindicalizado
ORDER BY sindicalizado desc

--57) apresente a lista de todos os funcionários com cargo e salário em ordem do maior pra o menor salário
SELECT cargo, salario AS 'Salário' FROM tbFunc
ORDER BY salario desc

--58) apresente a lista de funcionários com o cargo, o tempo no cargo e o tempo na empresa ordenando o resultado do funcionário mais antigo na empresa para o mais novo
SELECT cargo, tempo_cargo AS 'Tempo no cargo', tempo_empresa AS 'Tempo na empresa' FROM tbFunc
ORDER BY tempo_empresa desc

--59) apresente a lista de funcionários com o cargo, o tempo no cargo e o tempo na empresa ordenando o resultado do funcionário mais antigo no cargo para o mais novo, no cargo de Analista
SELECT cargo, tempo_cargo AS 'Tempo no cargo', tempo_empresa AS 'Tempo na empresa' FROM tbFunc
WHERE cargo LIKE 'Analista'
ORDER BY tempo_cargo desc

--60) apresente a lista de funcionários com o cargo, o tempo no cargo e o tempo na empresa ordenando o resultado do funcionário mais antigo na empresa para o mais novo dos funcionários que são sindicalizados
SELECT cargo, tempo_cargo AS 'Tempo no cargo', tempo_empresa AS 'Tempo na empresa' FROM tbFunc
WHERE sindicalizado = 1
ORDER BY tempo_empresa desc
