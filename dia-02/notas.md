Problema: trazer produtos com venda total acima de 1000 em um período específico

Abordagem: filtrar linhas primeiro (WHERE na data), agrupar por produto,
           depois filtrar os grupos resultantes (HAVING no SUM)
           
Aprendizado: 1) tudo não-agregado no SELECT precisa estar no GROUP BY
             2) datas em formato ISO (YYYY-MM-DD) evitam ambiguidade —
                '26-01-16' seria lido como ano 0026, não 2026
