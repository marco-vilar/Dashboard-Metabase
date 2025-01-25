select
	
	gender,
	
	count(*) as quantidade

from leads_basic_details

group by gender;
	
	