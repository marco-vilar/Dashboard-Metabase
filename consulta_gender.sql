SELECT 
    gender, 
    COUNT(*) AS quantidade
FROM 
    leads_basic_details
GROUP BY 
    gender;
