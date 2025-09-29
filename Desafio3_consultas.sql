-- Desafio 3: SQL

-- 1. Consulta para retornar nome, preço do produto e nome do fornecedor
SELECT 
    p.nome AS produto,
    p.preco AS preco,
    f.nome AS fornecedor
FROM produto p
INNER JOIN fornecedores f 
    ON p.fornecedores_id = f.id;


-- 2. Consulta para retornar nome e telefone do cliente, nome do vendedor e forma de pagamento
SELECT 
    c.nome AS cliente,
    c.telefone AS telefone,
    v.nome AS vendedor,
    pg.forma_pagamento AS forma_pagamento
FROM venda vd
INNER JOIN cliente c 
    ON vd.cliente_id = c.id
INNER JOIN vendedor v 
    ON vd.vendedor_id = v.id
INNER JOIN pagamento pg 
    ON vd.pagamento_id = pg.id;
