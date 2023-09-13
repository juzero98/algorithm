SELECT A.BOOK_ID, B.AUTHOR_NAME, TO_CHAR(A.PUBLISHED_DATE, 'YYYY-MM-DD')
FROM BOOK A, AUTHOR B
WHERE A.AUTHOR_ID = B.AUTHOR_ID
AND A.CATEGORY = '경제'
ORDER BY 3
;