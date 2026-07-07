-- Exercício 1: SELECT e WHERE

-- 1. Todas as colunas, todos os registros
SELECT * FROM vendas;

-- 2. Apenas produto, valor e data
SELECT produto, valor, data FROM vendas;

-- 3. Vendas com status concluída
SELECT * FROM vendas WHERE status = 'Concluída';

-- 4. Vendas com valor maior que 100
SELECT * FROM vendas WHERE valor > 100;

-- 5. Categoria eletrônicos E quantidade > 1
SELECT * FROM vendas WHERE categoria = 'Eletrônicos' AND quantidade > 1;
