## Problema

O time de vendas quer analisar o desempenho por vendedor separadamente do produto vendido, mas hoje o nome do vendedor está solto dentro da própria tabela `vendas`, repetido em cada linha. Antes de conseguir cruzar "quem vendeu" com "o que vendeu" de forma confiável (ex: comparar performance de vendedor contra a média da categoria do produto), é preciso normalizar: extrair vendedor pra uma tabela própria, ligada a `vendas` por chave estrangeira.

## Abordagem

```sql
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

-- Confirmação
SELECT v.id, v.vendedor, v.id_vendedor, ve.nome
FROM vendas v
JOIN vendedores ve ON v.id_vendedor = ve.id
LIMIT 5;
```

Primeiro criei a tabela vazia, depois populei com `SELECT DISTINCT` pra pegar só os nomes únicos sem duplicar. Só então mexi em `vendas`: adicionei a coluna `id_vendedor` como chave estrangeira, e usei `UPDATE ... FROM` pra fazer o de-para — pra cada linha de vendas, busquei o vendedor com nome igual na tabela nova e preenchi o id correspondente.

## Aprendizado

Rodei a query de confirmação com JOIN entre `vendas` e `vendedores` e bateu certinho em todas as linhas conferidas: os 4 vendedores (Ana, Bruno, Carla, Diego) ficaram cada um com seu próprio `id`, e o `id_vendedor` em `vendas` corresponde exatamente ao nome antigo em texto — nenhuma linha ficou com `NULL` ou id errado. Isso confirma que o `UPDATE ... FROM` é o jeito certo de popular uma coluna nova usando dado de outra tabela via comparação de texto, e que fazer esse tipo de "de-para" antes de apagar a coluna original é uma forma segura de validar visualmente que a normalização não perdeu nem trocou nenhum dado..
