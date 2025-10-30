SELECT  c.name AS coach_name, COUNT(*) AS medal_number
FROM coaches AS c
JOIN medals AS m
  ON c.country_code = m.country_code  
  AND c.disciplines = m.discipline
GROUP BY c.name
HAVING COUNT(*) >= 1
ORDER BY medal_number DESC, coach_name ASC;
