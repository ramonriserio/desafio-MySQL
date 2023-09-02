# desafio-MySQL

Este é um projeto lógico de banco de dados para um sistema de comércio eletrônico.
O objetivo deste projeto é criar um banco de dados para gerenciar informações sobre vendedores, fornecedores, clientes, estoque, produtos, pedidos e pagamentos.

Vendedores: A tabela vendedores armazena informações sobre cada vendedor, incluindo razão social, local, nome fantasia, CNPJ e CPF. Cada vendedor é identificado por um ID exclusivo (idVendedor).

Fornecedores: A tabela fornecedores armazena informações sobre cada fornecedor, incluindo razão social, CNPJ e contato. Cada fornecedor é identificado por um ID exclusivo (idFornecedor).

Clientes: A tabela clientes armazena informações sobre cada cliente, incluindo primeiro nome (Pnome), nome do meio (NomeMeio), sobrenome (Sobrenome), CPF, endereço e data de nascimento. Cada cliente é identificado por um ID exclusivo (idCliente).

Estoque: A tabela estoque armazena informações sobre o estoque de produtos em diferentes locais. Cada registro inclui o local (Local) e a quantidade (Quantidade) de produtos disponíveis. Cada registro de estoque é identificado por um ID exclusivo (idEstoque).

Produtos: A tabela produtos armazena informações sobre cada produto, incluindo categoria (Categoria), descrição (Descricao) e valor (Valor). Cada produto é identificado por um ID exclusivo (idProduto).

Produtos_Fornecedor: A tabela produtos_fornecedor armazena informações sobre a relação entre produtos e fornecedores. Cada registro inclui o ID do fornecedor (Fornecedor_idFornecedor), o ID do produto (Produto_idProduto) e a quantidade (Quantidade) de produtos fornecidos pelo fornecedor.

Produtos_Vendedor: A tabela produtos_vendedor armazena informações sobre a relação entre produtos e vendedores. Cada registro inclui o ID do vendedor (idPseller), o ID do produto (Produto_idProduto) e a quantidade (Quantidade) de produtos vendidos pelo vendedor.

Localizacao_Produto: A tabela localizacao_produto armazena informações sobre a localização de cada produto no estoque. Cada registro inclui o ID do produto (Produto_idProduto), o ID do estoque (Estoque_idEstoque) e a localização (Localizacao) do produto no estoque.

Produtos_do_Pedido: A tabela produtos_do_pedido armazena informações sobre os produtos em cada pedido. Cada registro inclui o ID do produto (Produto_idProduto), o ID do pedido (Pedido_idPedido), a quantidade (Quantidade) de produtos no pedido e o status (Status) do produto (disponível ou sem estoque).

Pedidos: A tabela pedidos armazena informações sobre cada pedido, incluindo status (Status), descrição (descricao) e o ID do cliente que fez o pedido (Cliente_idCliente). Cada pedido é identificado por um ID exclusivo (idPedido).

Pagamentos: A tabela pagamentos armazena informações sobre os pagamentos feitos pelos clientes. Cada registro inclui o tipo de pagamento (tipoPagamento), o limite de crédito disponível para o cliente (limite) e o ID do cliente que fez o pagamento (idCliente). Cada pagamento é identificado por um ID exclusivo (idPagamento).
