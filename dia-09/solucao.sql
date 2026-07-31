-- Cria o índice numa coluna de filtro, por exemplo "vendedor"
CREATE INDEX idx_vendedor ON vendas (vendedor);

-- Roda o EXPLAIN ANALYZE numa query que filtra por essa coluna
EXPLAIN ANALYZE
SELECT * FROM vendas WHERE vendedor = 'Bruno';
