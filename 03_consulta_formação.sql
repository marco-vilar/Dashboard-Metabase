-- Seleciona e conta todas as linhas da coluna current_education e renomeia como formation.
select

count(*), current_education as formation

-- Seleciona ta tabela leads_basic_details do meu banco de dados
from leads_basic_details

-- Realiza agrupamento por formation que foi nomeado anteriormente
group by formation

-- Ordena os resultados por ordem ascendente
order by count(*) asc