## Problema
Investigar se um índice criado na coluna vendedor é usado pelo planner numa query com filtro simples.

## Abordagem
Criei o índice, rodei EXPLAIN ANALYZE na query e comparei o plano escolhido.

## Aprendizado
O planner escolheu Seq Scan, não Index Scan, mesmo com o índice existindo. A tabela vendas tem só 20 linhas — rows=5 retornadas, Rows Removed by Filter: 15. Com esse volume, o custo estimado de ler a tabela inteira (cost=0.00..1.25) é menor do que o custo de usar o índice (ir no índice, achar o CTID, voltar na tabela). Execution Time: 0.087 ms confirma que a diferença seria imperceptível de qualquer forma. Isso confirma na prática que índice não é garantia de uso — é decisão de custo, e tabelas pequenas quase sempre favorecem Seq Scan.
