# 📊 SQL Exercícios Diários

Prática diária de SQL (PostgreSQL), aplicando 20+ anos de rigor analítico em risco e decisão (poker, trading, imóveis) na minha transição para Analytics.

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-336791?logo=postgresql&logoColor=white)
![Status](https://img.shields.io/badge/status-em%20andamento-yellow)
![Consistência](https://img.shields.io/badge/exercícios%20concluídos-8-brightgreen)

---

## 🎯 Por que este repositório existe

Depois de 20+ anos analisando risco, retorno e probabilidade em ambientes incertos, decidi aplicar essa mesma disciplina de rotina no aprendizado técnico: **1 exercício de SQL por dia, sem exceção**, documentado publicamente.

Este repositório não é sobre dominar SQL rápido. É sobre **provar consistência** — a métrica mais valiosa para quem está em transição de carreira e não tem ainda experiência formal na área.

---
## 🗺️ Plano de 60 dias

| Fase | Foco | Dias | Status |
|---|---|---|---|
| 1 | Fundamentos (SELECT, WHERE, ORDER BY) | 1–12 | 🟡 em andamento |
| 2 | Agregação (GROUP BY, HAVING, funções agregadas) | 13–24 | ⏳ |
| 3 | Joins (INNER, LEFT, RIGHT, FULL, self-join) | 25–36 | ⏳ |
| 4 | SQL avançado (subqueries, window functions, CTEs) | 37–48 | ⏳ |
| 5 | Projeto de portfólio (dataset real, análise completa | 49–60 | ⏳ |

## 📅 Progresso diário

| Dia | Tema | Query em destaque | Link |
|---|---|---|---|
| 01 | Setup + SELECT básico | Filtragem simples com WHERE | [dia-01](./dia-01) |
| 02 | WHERE + HAVING (agregação por produto) | Produtos com venda total acima de 1000 num período específico | [dia-02](./dia-02) |
| 03   | HAVING + ORDER BY               | Total por vendedor acima de 500   | [dia-03](dia-03) |
| 04 | Tratamento de NULL (IS NULL)      | Vendas sem status registrado      | [dia-04](dia-04) |
| 05 | Subquery no HAVING 		 | produtos com vendas acima da média| [dia-05](dia-05) |
| 06 | Normalização: criação de tabela vendedores | Extração de vendedores como tabela separada, ligada por FK | [dia-06](./dia-06) |
| 07 | WHERE, GROUP BY + HAVING, subquery no WHERE | Vendas acima da média geral da tabela | [dia-07](./dia-07) |
| 08 | JOIN, apelidos de tabela (alias) | Nome do vendedor, produto, valor e status das vendas concluídas |[dia-08](./dia-08) | 
| 09 | EXPLAIN ANALYZE, índice ignorado pelo planner | Investigação de por que o planner escolhe Seq Scan mesmo com índice criado, usando EXPLAIN ANALYZE para comparar custo estimado |[dia-09](./dia-09) |
---


## 🧠 Como cada dia é estruturado

Nota: a estrutura abaixo é o padrão vigente a partir do dia-07. Os dias 02 a 06 documentam
tudo dentro do notas.md (sem solucao.sql separado), e o dia-01 tem só solucao.sql, sem
notas.md, registro do processo antes de eu fixar este formato.

```
dia-XX/ (a partir do dia-07)
  ├── solucao.sql    → código SQL comentado
  └── notas.md
      ├── ## Problema      → enunciado do exercício
      ├── ## Abordagem     → raciocínio por trás da query
      └── ## Aprendizado   → 2-3 linhas: o que travou, o que entendi
```

Isso não é burocracia — é o que transforma prática solta em portfólio legível por qualquer pessoa que abra o repositório, mesmo sem contexto prévio.

---

## 🛠️ Tecnologias

- PostgreSQL
- DBeaver (cliente SQL)
- Git/GitHub para versionamento diário

---

## 📌 Sobre mim

20+ anos tomando decisões sob risco e incerteza como analista autônomo, poker e consultoria financeira. Agora aplico esse mesmo rigor analítico à transição para Dados.

[LinkedIn](https://www.linkedin.com/in/brunocunhajr) · Decision Lab (em construção)
