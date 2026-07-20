## Problema
O time comercial quer identificar quais produtos estão vendendo acima da média geral, para priorizar reposição de estoque e negociação com fornecedores dos itens de melhor desempenho.

## Abordagem
```sql
SELECT produto, SUM(valor) AS total_produto
FROM vendas
GROUP BY produto
HAVING SUM(valor) > (
    SELECT AVG(total_por_produto)
    FROM (
        SELECT SUM(valor) AS total_por_produto
        FROM vendas
        GROUP BY produto
    ) AS sub
);
```
Primeiro calculei o total vendido de cada produto numa subquery interna, depois tirei a média desses totais numa subquery externa — esse valor vira o parâmetro de comparação do HAVING na query principal. Usei HAVING em vez de WHERE porque a comparação é feita sobre um valor agregado (SUM), e WHERE não enxerga agregados.

## Aprendizado
Rodei a subquery da média separadamente antes de encaixar ela no HAVING (resultado: 1.500,89) — isso ajudou a validar o número antes de confiar na query completa. Só 2 de todos os produtos (Notebook e Monitor) ficaram acima da média, o que confirma um padrão comum em dados de vendas: a média é puxada pra cima por poucos produtos de alto volume, então a maioria dos itens fica abaixo dela.
