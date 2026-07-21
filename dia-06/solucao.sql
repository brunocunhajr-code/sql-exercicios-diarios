-- 1. Criar a tabela vendedores

CREATE TABLE vendedores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

-- 2. Popular com os nomes distintos que já existem em vendas
INSERT INTO vendedores (nome)
SELECT DISTINCT vendedor
FROM vendas
ORDER BY vendedor;

-- 3. Adicionar a coluna de chave estrangeira em vendas
ALTER TABLE vendas
ADD COLUMN id_vendedor INTEGER REFERENCES vendedores(id);


-- 4. Atualizar vendas com o id correspondente de cada vendedor
UPDATE vendas v
SET id_vendedor = ve.id
FROM vendedores ve
WHERE v.vendedor = ve.nome;

Confirmação

SELECT v.id, v.vendedor, v.id_vendedor, ve.nome
FROM vendas v
JOIN vendedores ve ON v.id_vendedor = ve.id
LIMIT 5;
