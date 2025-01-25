/*
Seleciona as colunas lead_gen_source, call_done_date e call_status.
Para call_done_date renomeia como dia.
Para leads_interaction_details.lead_ID ( está em tabela diferente) 
ele realiza a contagem e renomeia para ligacoes.
*/
select

lead_gen_source,
call_done_date as dia,
call_status,
COUNT(leads_interaction_details.lead_ID) as ligacoes

-- Seleciona da tabela leads_basic_details	
from leads_interaction_details

/*
Realiza a junção das tabelas leads_basic_details e leads_interaction_details.	
Para realizar isto, ele utiliza o lead_id que é o ponto de ligação em ambas as tabelas
*/
left join

leads_basic_details ON leads_interaction_details.lead_ID = leads_basic_details.lead_id

/*
Será realizado apenas isto quando call_status = sucessful.
Isto ocorre poi solicitado apenas aquelas ligações que tiveram sucesso.
*/
where call_status = 'successful'

-- Agrupamento realizado por dia e lead_gen_source.

group by dia, lead_gen_source

-- Realiza a ordenação por dia
order by dia