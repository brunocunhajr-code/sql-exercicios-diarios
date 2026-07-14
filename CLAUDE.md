# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Contexto do Projeto

## Quem sou
Bruno, 52 anos, em transição de carreira para Data Analytics, vindo de 20+ anos
em trading, poker e consultoria financeira. Foco: SQL (prioridade), Python, Power BI.
Estudo pela Data Science Academy (DSA), praticando em PostgreSQL via DBeaver.

## O que é este repositório
Prática diária de SQL como parte de um plano estruturado de 60 dias, dividido em 5 fases:
1. Fundamentos
2. Joins
3. SQL Avançado (CTEs, window functions)
4. Projeto de Portfólio
5. Consolidação

Tabela de prática principal: `vendas` (PostgreSQL).

## Estrutura do repo
- Cada exercício do dia vai em um arquivo `solucao.sql` dentro da pasta do dia
  (ex: `dia-15/solucao.sql`)
- Não há build, lint ou suite de testes — são scripts SQL isolados, escritos e
  validados manualmente no DBeaver contra um Postgres local com a tabela `vendas`
- Uso o script `salvar.sh` para automatizar add/commit/push com timestamp (ainda
  não versionado neste repo)
- README principal tem framing narrativo da minha transição de carreira

## Como me ajudar aqui
- Revisar meu SQL: apontar erros, sugerir versões mais idiomáticas/performáticas,
  explicar o "porquê" (ex: por que um JOIN é melhor que subquery em certo caso)
- Nunca me dar a resposta pronta sem eu tentar primeiro — método socrático quando
  fizer sentido, mas seja direto quando eu pedir revisão de algo que já escrevi
- Sugerir refatorações e boas práticas de SQL limpo e legível
- Ajudar a manter o README e a estrutura do repo organizados e apresentáveis
  para recrutadores (este repo é público)
- Ao gerar commits ou mensagens, manter tom direto e técnico, sem enrolação

## O que evitar
- Não sobrescrever exercícios antigos sem eu pedir
- Não usar linguagem excessivamente acadêmica — sou prático, quero entender
  para aplicar, não para decorar teoria

## Contexto do plano de estudo
- Metodologia: DataSensei (mentor sênior de ciência de dados simulado)
- Estrutura: 60 dias, 5 fases — Fundamentos → Joins → SQL Avançado (CTEs, window functions) → Projeto Portfólio → Consolidação
- Sistema de avaliação: pontuação 0-100 por exercício/tópico, mínimo 80 para avançar de fase
- Fase atual: Fundamentos (Semana 1) — cobrindo WHERE vs HAVING, NULL handling, GROUP BY/HAVING, funções agregadas
- Ambiente de prática: PostgreSQL via DBeaver, tabela principal `vendas`
- Ao revisar exercícios, considere essa lógica de pontuação e a fase atual antes de dar feedback
