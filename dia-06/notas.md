## Problema
Normalizar a tabela vendas, extraindo vendedor pra uma tabela própria (1ª etapa de um exercício maior de JOIN múltiplo + subquery correlacionada).

## Abordagem
CREATE TABLE + INSERT DISTINCT pra popular; ALTER TABLE pra criar a FK; UPDATE com JOIN implícito (FROM) pra fazer o de-para nome → id.

## Aprendizado
- Erro comum: colocar valores em vez de nomes de coluna no INSERT INTO tabela (coluna).
- UPDATE ... FROM é o jeito certo de atualizar uma tabela usando dados de outra.
