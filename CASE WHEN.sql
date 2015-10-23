select 
CASE 
WHEN 売上予定年月 IS NULL THEN '' 
WHEN 完了年月 IS NULL THEN
	CASE WHEN 売上予定年月 <= left(convert(varchar,getdate(),111),7) THEN '×' ElSE '' END
WHEN 売上予定年月 <= 完了年月 THEN '×' 
ELSE ''
END AS  '売上判定',売上予定年月
from プロジェクトマスタ where 損単コード='BA24
