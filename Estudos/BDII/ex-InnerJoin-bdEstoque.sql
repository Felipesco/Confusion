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

-- e) Listar a média dos preços dos produtos agrupados pelo nome do fornecedor;

-- f) Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfabética;

-- g) Listar a soma dos preços dos produtos agrupados pelo nome do fabricante;

-- h) Listar a média dos preços dos produtos agrupados pelo nome do fornecedor

-- i) Listar a soma das vendas agrupadas pelo nome do produto

-- j) Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
