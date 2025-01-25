select 

language, avg(watched_percentage) as media


from leads_demo_watched_details

where watched_percentage > 0.5

group by language
order by media asc;

