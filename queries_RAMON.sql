-- Quantos pedidos foram feitos?
describe clientes;
describe pedidos;
select * from pedidos;
select count(*) from pedidos, clientes where idCliente = Cliente_idCliente;

-- Quantos pedidos foram feitos por cada cliente?
select Cliente_idCliente, count(*) from pedidos group by Cliente_idCliente;

-- Algum vendedor também é fornecedor?
describe vendedores;
describe fornecedores;
select idVendedor from vendedores as v, fornecedores as f where v.CNPJ = f.CNPJ;

-- Relação de produtos, forncededores e estoque
describe fornecedores;
-- idFornecedor
describe produtos;
-- idProduto
describe estoque;
-- Quantidade
select idProduto, idFornecedor, Quantidade from fornecedores, produtos, estoque order by idProduto;

-- Relação de nomes dos forncedores e nomes dos produtos
describe fornecedores;
describe produtos;
show tables;
describe produtos_fornecedor;
select RazaoSocial, Descricao from 
	(select DISTINCT RazaoSocial from fornecedores JOIN produtos_fornecedor as pf where pf.Quantidade > 0) as t
	JOIN produtos
		ORDER BY RazaoSocial;