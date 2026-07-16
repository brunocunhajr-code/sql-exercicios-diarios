## Problema

O gerente comercial quer identificar vendas com falha de registro no
sistema — vendas que não têm status definido (nem Concluída, Cancelada
ou Devolvida), pra investigar o que causou a ausência do dado.

## Abordagem

```sql
SELECT id, vendedor, valor, status
FROM vendas
WHERE status IS NULL;
```

## Aprendizado

Tentei pensar em `WHERE status = NULL` primeiro, mas lembrei que NULL não
é comparável com `=` — ele representa "desconhecido", e nenhuma comparação
com `=` retorna verdadeiro para NULL, nem `NULL = NULL`. Só `IS NULL`
funciona pra esse filtro. Vi 2 linhas reais na minha tabela (`vendas`)
sem status, o que na vida real seria motivo pra abrir chamado com o time
de sistemas.
