
Primeiro criei a tabela vazia, depois populei com `SELECT DISTINCT` pra pegar só os nomes únicos sem duplicar. Só então mexi em `vendas`: adicionei a coluna `id_vendedor` como chave estrangeira, e usei `UPDATE ... FROM` pra fazer o de-para — pra cada linha de vendas, busquei o vendedor com nome igual na tabela nova e preenchi o id correspondente.

## Aprendizado

Rodei a query de confirmação com JOIN entre `vendas` e `vendedores` e bateu certinho em todas as linhas conferidas: os 4 vendedores (Ana, Bruno, Carla, Diego) ficaram cada um com seu próprio `id`, e o `id_vendedor` em `vendas` corresponde exatamente ao nome antigo em texto — nenhuma linha ficou com `NULL` ou id errado. Isso confirma que o `UPDATE ... FROM` é o jeito certo de popular uma coluna nova usando dado de outra tabela via comparação de texto, e que fazer esse tipo de "de-para" antes de apagar a coluna original é uma forma segura de validar visualmente que a normalização não perdeu nem trocou nenhum dado..
=======
Normalizar a tabela vendas, extraindo vendedor pra uma tabela própria (1ª etapa de um exercício maior de JOIN múltiplo + subquery correlacionada).

## Abordagem
CREATE TABLE + INSERT DISTINCT pra popular; ALTER TABLE pra criar a FK; UPDATE com JOIN implícito (FROM) pra fazer o de-para nome → id.

## Aprendizado
- Erro comum: colocar valores em vez de nomes de coluna no INSERT INTO tabela (coluna).
- UPDATE ... FROM é o jeito certo de atualizar uma tabela usando dados de outra.
>>>>>>> 5a3ee6191cf34fbc02039f9ed228cb5613a5f323
