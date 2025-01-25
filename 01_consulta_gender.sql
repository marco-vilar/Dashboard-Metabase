-- seleciona a coluna gender no meu banco de dados da tabela leads_basic_details

select
	
	gender,
	
-- 	realiza a contagem de linhas e renomeia como quantidade a coluna
	count(*) as quantidade

-- tabela do banco de dados
from leads_basic_details

-- realiza o agrupamento por gender
group by gender;
	
	