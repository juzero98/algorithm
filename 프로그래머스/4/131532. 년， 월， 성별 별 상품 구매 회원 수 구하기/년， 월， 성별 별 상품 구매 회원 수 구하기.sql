SELECT TO_CHAR(SALES_DATE,'YYYY') AS YEAR
    , TO_NUMBER(TO_CHAR(SALES_DATE,'MM')) AS MONTH
    , GENDER
    , COUNT(DISTINCT USER_ID) AS USERS
FROM (
    SELECT A.USER_ID, GENDER, AGE, SALES_DATE
    FROM USER_INFO A, ONLINE_SALE B
    WHERE A.USER_ID = B.USER_ID
)
GROUP BY TO_CHAR(SALES_DATE,'YYYY'), TO_CHAR(SALES_DATE,'MM'), GENDER
HAVING GENDER IS NOT NULL
ORDER BY 1, 2, 3
;