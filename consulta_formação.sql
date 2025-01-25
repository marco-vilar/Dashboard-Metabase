select

count(*), current_education as formation

from leads_basic_details

group by formation

order by count(*) asc