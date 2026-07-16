## Problema

Mostrar o total vendido (SUM) por vendedor, considerando apenas os
vendedores cujo total ultrapassa 500, ordenado do maior para o menor total.

## Abordagem

```sql
SELECT vendedor, SUM(valor) AS total_vendido
FROM vendas
GROUP BY vendedor
HAVING SUM(valor) > 500
ORDER BY SUM(valor) DESC;
```

## Aprendizado

HAVING filtra grupos após o GROUP BY, não linhas individuais — por isso
não posso usar a coluna crua (valor) na condição, só o agregado
(SUM(valor)). Também vi na prática que HAVING remove silenciosamente
quem não passa no filtro (ex: vendedor com total abaixo de 500 simplesmente
desaparece do resultado, sem erro e sem aviso).
