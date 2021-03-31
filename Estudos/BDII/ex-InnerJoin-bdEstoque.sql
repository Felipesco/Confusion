USE bdEstoque

-- a) Listar as descrições dos produtos ao lado do nome dos fabricantes;
SELECT descricaoProduto AS 'Produto', nomeFabricante AS 'Fabricante' FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			ORDER BY nomeFabricante

-- b) Listar as descrições dos produtos ao lado do nome dos fornecedores;
SELECT descricaoProduto AS 'Produto', nomeFornecedor AS 'Fornecedor' FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
			ORDER BY nomeFornecedor

-- c) Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante;
SELECT COUNT(quantidadeProduto) AS 'Quant. Produtos', nomeFabricante AS 'Fabricante' FROM tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.idFabricante = tbFabricante.idFabricante
			GROUP BY nomeFabricante

-- d) Listar o total das vendas ao lado do nome do cliente;
SELECT COUNT(idVenda) AS 'Vendas', nomeCliente AS 'Cliente' FROM tbVenda
	INNER JOIN tbCliente 
		ON tbCliente.idCliente = tbVenda.idCliente
			GROUP BY nomeCliente

-- e) Listar a média dos preços dos produtos agrupados pelo nome do fornecedor;
SELECT AVG(valorProduto) AS 'Preço Médio', nomeFornecedor AS 'Fornecedor' FROM tbProduto 
	INNER JOIN tbFornecedor
		ON tbFornecedor.idFornecedor = tbProduto.idFornecedor
			GROUP BY nomeFornecedor

-- f) Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfabética;
SELECT SUM(valorTotalVenda) AS 'Soma das vendas', nomeCliente AS 'Cliente' FROM tbVenda
	INNER JOIN tbCliente
		ON tbCliente.idCliente = tbVenda.idCliente
			GROUP BY nomeCliente 
				ORDER BY nomeCliente 

-- g) Listar a soma dos preços dos produtos agrupados pelo nome do fabricante;
SELECT SUM(valorProduto) AS 'Preço Produtos', nomeFabricante AS 'Fabricante' FROM tbProduto
	INNER JOIN tbFabricante
		ON tbFabricante.idFabricante = tbProduto.idFabricante
			GROUP BY nomeFabricante

-- h) Listar a média dos preços dos produtos agrupados pelo nome do fornecedor;
SELECT AVG(valorProduto) AS 'Preço Médio', nomeFornecedor AS 'Fornecedor' FROM tbProduto
	INNER JOIN tbFornecedor
		ON tbFornecedor.idFornecedor = tbProduto.idFornecedor
			GROUP BY nomeFornecedor

-- i) Listar a soma das vendas agrupadas pelo nome do produto;
SELECT SUM(valorTotalVenda) AS 'Soma das vendas', descricaoProduto AS 'Produto'  FROM tbVenda
	INNER JOIN tbItensVenda ON tbVenda.idVenda = tbItensVenda.idVenda
		INNER JOIN tbProduto ON tbItensVenda.idProduto = tbProduto.idProduto
			GROUP BY descricaoProduto
 
-- j) Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014.
SELECT SUM(valorTotalVenda) AS 'Soma das vendas', nomeCliente AS 'Cliente' FROM tbVenda
	INNER JOIN tbCliente 
		ON tbCliente.idCliente = tbVenda.idCliente
			WHERE MONTH(dataVenda) = 2 AND YEAR(dataVenda) = 2014
				GROUP BY nomeCliente

-- Teste:
-- Só para aprensentar a data formatada :)
SELECT CONVERT(VARCHAR, dataVenda, 103) AS 'Data da venda' FROM tbVenda
	ORDER BY dataVenda

-- AAAEEEEEEEE!!!!!!!!!!! FOOOOIIIIII!!! Vlw prof's <3 