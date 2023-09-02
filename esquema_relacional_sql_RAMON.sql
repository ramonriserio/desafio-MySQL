show databases;
create database ecommerce;
show databases;
use ecommerce;
show tables;

drop table vendedores;
create table vendedores (
	idVendedor INT auto_increment,
    RazaoSocial VARCHAR(45) NOT NULL,
    Local VARCHAR(45),
    NomeFantasia VARCHAR(45),
    CNPJ CHAR(15),
    CPF CHAR(11),
    PRIMARY KEY (idVendedor),
    CONSTRAINT Razão_Social_UNIQUE UNIQUE (RazaoSocial),
    CONSTRAINT CNPJ_UNIQUE UNIQUE (CNPJ),
    CONSTRAINT CPF_UNIQUE UNIQUE (CPF)
);
show tables;
describe vendedores;

drop table fornecedores;
create table fornecedores (
	idFornecedor INT auto_increment PRIMARY KEY,
    RazaoSocial VARCHAR(45),
    CNPJ CHAR(15) UNIQUE,
    contato VARCHAR(45)
);
show tables;
describe fornecedores;

drop table clientes;
create table clientes (
	idCliente INT auto_increment,
    Pnome VARCHAR(10) NOT NULL,
    NomeMeio VARCHAR(3),
    Sobrenome VARCHAR(20),
    CPF CHAR(11) NOT NULL UNIQUE,
    endereco VARCHAR(45),
    dataNascimento DATE NOT NULL,
    PRIMARY KEY (idCliente)
);
show tables;
describe clientes;

create table estoque (
	idEstoque INT auto_increment PRIMARY KEY,
    Local VARCHAR(45) NOT NULL,
    Quantidade INT NOT NULL default 1
);
show tables;
describe estoque;

drop table Produtos;
create table produtos (
	idProduto INT auto_increment PRIMARY KEY,
    Categoria VARCHAR(45) NOT NULL,
    Descricao VARCHAR(45),
    Valor FLOAT
);
show tables;
describe produtos;

create table produtos_fornecedor (
	Fornecedor_idFornecedor INT,
    Produto_idProduto INT,
    Quantidade INT default 1,
    PRIMARY KEY (Fornecedor_idFornecedor, Produto_idProduto),
    FOREIGN KEY (Fornecedor_idFornecedor) references Fornecedores(idFornecedor),
    FOREIGN KEY (Produto_idProduto) references Produtos(idProduto)
);
show tables;
describe produtos_fornecedor;

create table produtos_vendedor (
	idPseller INT,
    Produto_idProduto INT,
    Quantidade INT default 1,
    -- PRIMARY KEY (idPseller, Produto_idProduto)
    FOREIGN KEY (idPseller) references vendedores(idVendedor),
    FOREIGN KEY (Produto_idProduto) references produtos(idProduto)
);
show tables;
describe produtos_vendedor;

create table localizacao_produto (
	Produto_idProduto INT,
    Estoque_idEstoque INT,
    Localizacao INT,
    PRIMARY KEY(Produto_idProduto, Estoque_idEstoque),
    FOREIGN KEY(Produto_idProduto) references produtos(idProduto),
    FOREIGN KEY(Estoque_idEstoque) references estoque(idEstoque)
);
show tables;
describe localizacao_produto;

drop table produtos_do_pedido;
create table produtos_do_pedido (
	Produto_idProduto INT,
    Pedido_idPedido INT,
    Quantidade INT NOT NULL,
    Status ENUM ('disponível', 'sem estoque') DEFAULT 'disponível',
    PRIMARY KEY (Produto_idProduto, Pedido_idPedido),
    FOREIGN KEY (Produto_idProduto) references produtos(idProduto),
    FOREIGN KEY (Pedido_idPedido) references pedidos(idPedido)
);
show tables;
describe produtos_do_pedido;

create table pedidos (
	idPedido INT PRIMARY KEY,
    Status ENUM ('Cancelado', 'Confirmado', 'Em processamento'),
    descricao VARCHAR(45),
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) references clientes(idCliente)
);
show tables;
describe pedidos;

create table pagamentos (
	idPagamento INT PRIMARY KEY auto_increment,
    idCliente INT,
    tipoPagamento ENUM ('Boleto', 'Cartão de Crédito', 'Dois cartões'),
    limite FLOAT,
    FOREIGN KEY (idCliente) references clientes(idCliente)
);
show tables;
describe pagamentos;
