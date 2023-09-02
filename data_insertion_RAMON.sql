-- inserção de dados e queries
use ecommerce;

show tables;
describe clientes;
-- idClient, Fname, Minit, Lname, CPF, Address
insert into clientes (Pnome, NomeMeio, Sobrenome, CPF, endereco, dataNascimento) 
	   values('Maria','M','Silva', 12346789, 'rua silva de prata 29, Carangola','2013-07-06'),
		     ('Matheus','O','Pimentel', 987654321,'rua alemeda 289, Centro','2013-07-06'),
			 ('Ricardo','F','Silva', 45678913,'avenida alemeda vinha 1009','2013-07-06'),
			 ('Julia','S','França', 789123456,'rua lareijras 861','2013-07-06'),
			 ('Roberta','G','Assis', 98745631,'avenidade koller 19','2013-07-06'),
			 ('Isabela','M','Cruz', 654789123,'rua alemeda das flores 28','2013-07-06');
select * from clientes;

describe produtos;
-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'), avaliação, size
insert into produtos (Descricao, Categoria, Valor) values
							  ('Fone de ouvido','Eletrônico','4'),
                              ('Barbie Elsa','Brinquedos','3'),
                              ('Body Carters','Vestimenta','5'),
                              ('Microfone Vedo - Youtuber','Eletrônico','4'),
                              ('Sofá retrátil','Móveis','3'),
                              ('Farinha de arroz','Alimentos','2'),
                              ('Fire Stick Amazon','Eletrônico','3');

select * from produtos;
-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue, paymentCash

delete from orders where idOrderClient in  (1,2,3,4);
describe pedidos;
insert into pedidos (Cliente_idCliente, Status, descricao) values 
							 (1, default,'compra via aplicativo'),
                             (2,default,'compra via aplicativo'),
                             (3,'Confirmado',null),
                             (4,default,'compra via web site');

-- idPOproduct, idPOorder, poQuantity, poStatus
select * from pedidos;
show tables;
describe produtos_do_pedido;
select * from pedidos;
insert into produtos_do_pedido (Produto_idProduto, Pedido_idPedido, Quantidade, Status) values
						 (1,2,2,null),
                         (2,2,1,null),
                         (3,3,1,null);
select * from produtos_do_pedido;
-- storageLocation,quantity
show tables;
describe estoque;
insert into estoque (Local,Quantidade) values 
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('São Paulo',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Brasília',60);
select * from estoque;
-- idLproduct, idLstorage, location
show tables;
describe localizacao_produto;
insert into localizacao_produto (Produto_idProduto, Estoque_idEstoque, Localizacao) values
						 (1,2,3),
                         (2,6,4);
select * from localizacao_produto;

-- idSupplier, SocialName, CNPJ, contact
describe fornecedores;
insert into fornecedores (RazaoSocial, CNPJ, contato) values 
							('Almeida e filhos', 123456789123456,'21985474'),
                            ('Eletrônicos Silva',854519649143457,'21985484'),
                            ('Eletrônicos Valma', 934567893934695,'21975474');
                            
select * from fornecedores;
-- idPsSupplier, idPsProduct, quantity
show tables;
describe produtos_fornecedor;
insert into produtos_fornecedor (Fornecedor_idFornecedor, Produto_idProduto, quantidade) values
						 (1,1,500),
                         (1,2,400),
                         (2,4,633),
                         (3,3,5),
                         (2,5,10);
select * from produtos_fornecedor;

-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
describe vendedores;
insert into vendedores (RazaoSocial, NomeFantasia, CNPJ, CPF, Local) values 
						('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro'),
					    ('Botique Durgas',null,null,123456783,'Rio de Janeiro'),
						('Kids World',null,456789123654485,null,'São Paulo');

select * from vendedores;
-- idPseller, idPproduct, prodQuantity
show tables;
describe produtos_vendedor;
insert into produtos_vendedor (idPseller, Produto_idProduto, Quantidade) values 
						 (1,6,80),
                         (2,7,10);

select * from produtos_vendedor;
