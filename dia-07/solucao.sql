Quais são as vendas da categoria "Eletrônicos" com valor acima de R$500?

select * from vendas v 
where categoria = 'Eletrônicos' and valor > 500

Agrupando por produto, quais produtos têm soma total vendida (SUM(valor))
maior que R$300?

select produto, sum(valor) as  total 
from vendas v
group by produto 
having sum(valor) > 300

Quais vendas têm valor acima da média geral de todas as vendas da tabela?

select avg(valor) from vendas

SELECT *
FROM vendas
WHERE valor > (SELECT AVG(valor) FROM vendas)
