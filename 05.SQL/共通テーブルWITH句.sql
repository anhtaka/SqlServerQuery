-------------------------------------------
--共通テーブル
--http://blog.livedoor.jp/akf0/archives/51395599.html
-------------------------------------------
;WITH [ZANDAKA]
AS (
	SELECT SA_NO,SO_NO,KEY_GRAND_TTL FROM SA
	)
,[ZANDAKA2]
AS (
	SELECT SA_NO,SO_NO,KEY_GRAND_TTL FROM [ZANDAKA]
	WHERE KEY_GRAND_TTL > 81000.00
)
SELECT
SO.SO_NO,
SO.KEY_GRAND_TTL 
FROM SO 
INNER JOIN [ZANDAKA2] ON [ZANDAKA2].SO_NO = SO.SO_NO
ORDER BY KEY_GRAND_TTL
