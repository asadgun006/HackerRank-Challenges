WITH CTE AS(
SELECT st.*, ROW_NUMBER() OVER(ORDER BY LAT_N) as row_num
    FROM STATION st
)
SELECT ROUND(LAT_N, 4)
FROM CTE
WHERE CASE WHEN MOD((SELECT COUNT(*) FROM STATION), 2) = 1 THEN row_num=CEIL((SELECT COUNT(*) FROM STATION) / 2)
WHEN MOD((SELECT COUNT(*) FROM STATION), 2) = 0 THEN row_num IN (FLOOR((SELECT COUNT(*) FROM STATION) / 2), CEIL((SELECT COUNT(*) FROM STATION) / 2)) END;
