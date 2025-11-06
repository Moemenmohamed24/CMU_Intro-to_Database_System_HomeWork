SELECT  a.name,  COUNT(r.medal_type) AS medalCount
FROM medals r  JOIN athletes a  
ON r.code = a.code  
WHERE a.disciplines = 'judo'  
GROUP BY a.name
ORDER BY COUNT(r.medal_type) DESC, a.name ASC;
