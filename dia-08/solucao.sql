Quero que você me traga o nome de cada vendedor (vindo da tabela vendedores) 
junto com o produto, o valor e o status de cada venda que ele fez, 
mas só das vendas concluídas. Ordena por nome do vendedor.

select T2.nome, 
	   T1.produto,
	   T1.valor,
	   T1.status

from vendedores as T2

join vendas as T1
on T1.id_vendedor = T2.id

where T1.Status = 'Concluída'

order by T2.nome
