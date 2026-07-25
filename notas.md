## Problema
O time de vendas quer saber: (1) quais vendas de Eletrônicos passaram de R$500,
(2) quais produtos somaram mais de R$300 em vendas, e (3) quais vendas
individuais ficaram acima da média geral de valor da tabela toda.

## Abordagem
Nas duas primeiras, o filtro é direto: a Pergunta 1 usa WHERE porque compara
linha por linha contra um valor fixo (500) sem precisar resumir nada. A
Pergunta 2 precisa agrupar por produto primeiro (GROUP BY) e só depois filtrar
o grupo já resumido, por isso usa HAVING em vez de WHERE — HAVING existe
justamente pra filtrar depois da agregação.

A Pergunta 3 é a mais delicada: "média geral" é um número único e fixo da
tabela inteira, não algo que muda por grupo. Por isso não dá pra resolver com
GROUP BY + HAVING — cada grupo teria sua própria média, o que não é o que foi
pedido. A solução foi separar em duas partes: uma subquery isolada calcula a
média geral sozinha (sem agrupar nada), e o WHERE da query principal compara
cada linha individual contra esse número fixo.

## Aprendizado
HAVING só faz sentido quando existe GROUP BY antes — ele filtra grupos já
resumidos, nunca linhas individuais. Quando o filtro precisa comparar contra
um valor fixo (uma média, um total, um máximo da tabela toda), o caminho é
WHERE + subquery, não GROUP BY + HAVING. Foi o mesmo padrão do dia-05, agora
aplicado sem agrupamento nenhum.
