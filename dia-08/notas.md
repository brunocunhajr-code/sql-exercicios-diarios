Problema

Cruzar a tabela vendedores (id, nome) com a tabela vendas (id, vendedor, categoria, produto, valor, quantidade, data, status, id_vendedor) para trazer, de cada venda concluída, o nome do vendedor vindo de vendedores junto com produto, valor e status, ordenado por nome do vendedor.

Abordagem

Passos até a query final:

Corrigido id.vendas / id.vendedores para a ordem certa tabela.coluna.
Definidos apelidos (T1 para vendas, T2 para vendedores) e ajustado o ON para usar os apelidos de forma consistente, em vez dos nomes originais das tabelas.
Corrigida a lista de colunas do SELECT, que precisa vírgula separando cada uma, não só quebra de linha.
Adicionado o WHERE para filtrar só status Concluída e o ORDER BY para ordenar por nome, conforme pedido no exercício.
Aprendizado

A relação entre as tabelas é via vendas.id_vendedor apontando para vendedores.id, não pelo vendas.id (que identifica a venda em si).
Depois que uma tabela recebe um apelido no FROM/JOIN, esse apelido precisa ser usado em todo o resto da query, inclusive no ON; usar o nome original da tabela ali quebra a query.
INNER JOIN traz interseção: só aparecem vendedores que têm pelo menos uma venda batendo com o filtro. Sem correspondência, a linha simplesmente não aparece.
LEFT JOIN mantém todas as linhas da tabela da esquerda e preenche com NULL as colunas da direita quando não há correspondência, comportamento que será testado na prática no próximo passo.
