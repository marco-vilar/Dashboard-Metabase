-- Seleciona as  colunas language e watched_percentage, e calcula a média e renomeia como media
select 

language, avg(watched_percentage) as media

-- Seleciona da tabela leads_demo_watched_details estas colunas
from leads_demo_watched_details

-- Utiliza para realizar a média apenas percentuais que são maiores que 0,5. Não utiliza todos os percentuais.
where watched_percentage > 0.5

-- Agrupa por language 
group by language

-- Ordena a média por ordem ascendente.
order by media asc;

