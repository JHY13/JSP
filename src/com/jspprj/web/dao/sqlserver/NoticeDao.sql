SELECT * FROM NOTICES

--INSERT INTO NOTICES(CODE, TITLE, WRITER, CONTENT) VALUES(1041, '안녕하세요', 'PPAP', '펭파잉애플애플팬')--

CREATE VIEW NOITICES_VIEW
AS
SELECT N.*, COUNT(C.CODE) AS CMTCNT
FROM
	NOTICES N LEFT OUTER JOIN COMMENTS C ON N.CODE = C.NOTICECODE
GROUP BY N.CODE, N.TITLE, N.WRITER, N.CONTENT, N.REGDATE, N.HIT;
	
SELECT * FROM NOTICES_VIEW;

--getList
SELECT * FROM
	(
		SELECT
			ROW_NUMBER()OVER (ORDER BY REGDATE DESC) NUM, NOTICES_VIEW.*
		FROM NOTICES_VIEW
		WHERE TITLE LIKE '%%'
	) N
WHERE NUM BETWEEN 1 AND 10;

--getCount
SELECT COUNT(NUM) FROM 
	(
		SELECT
			ROW_NUMBER()OVER (ORDER BY REGDATE DESC) NUM, NOTICES_VIEW.*
		FROM NOTICES_VIEW
		WHERE TITLE LIKE '%%'
	) N
	
SELECT * FROM NOTICES ;

SELECT * FROM NOTICEFILES;
	