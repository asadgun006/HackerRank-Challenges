SELECT distinct city
FROM station
where SUBSTR(CITY, 1,1) in ('A', 'E', 'I', 'O', 'U');