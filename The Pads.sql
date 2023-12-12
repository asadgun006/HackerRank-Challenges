SELECT NAME || '(' || SUBSTR(occupation, 1,1) || ')'
FROM OCCUPATIONS
ORDER BY NAME;
SELECT 'There are a total of ' || COUNT(occupation) || ' ' || lower(occupation) ||'s.'
from occupations
group by occupation
order by count(occupation), occupation;
