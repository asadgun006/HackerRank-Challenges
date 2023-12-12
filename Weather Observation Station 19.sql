SELECT ROUND(POWER((POWER(MAX_LAT - MIN_LAT,2) + POWER(MAX_LONG-MIN_LONG,2)), 0.5),4)
FROM 
(SELECT MIN(LAT_N) AS MIN_LAT, MIN(LONG_W) AS MIN_LONG, MAX(LAT_N) AS MAX_LAT, MAX(LONG_W) AS MAX_LONG FROM STATION);