DECLARE @TableName nvarchar(100)
DECLARE @DBName nvarchar(100)
DECLARE @UserName nvarchar(100)
DECLARE @SQL nvarchar(2000)

-- 実行結果を格納する
CREATE table #DB_COUNT (
	 [DB]         NVARCHAR(100)
	,[OWN]         NVARCHAR(20)
	,[TABLE_NAME]  NVARCHAR(100)
	,[COUNT] DECIMAL(15)
	PRIMARY KEY(
	 [DB]        
	,[OWN]        
	,[TABLE_NAME]  
	)
)

-- DB名を取得する
DECLARE DB_CUR CURSOR FOR SELECT db_name(s_mf.database_id) DBNAME 
FROM sys.master_files s_mf
where
    s_mf.state = 0 and -- ONLINE
    has_dbaccess(db_name(s_mf.database_id)) = 1 and-- Only look at databases to which we have access
    db_name(s_mf.database_id) <> 'tempdb'

group by s_mf.database_id
order by 1

OPEN DB_CUR;

FETCH NEXT FROM DB_CUR INTO @DBName;

WHILE (@@FETCH_STATUS = 0 )
BEGIN

-- DBからテーブル名を取得する
set @SQL = 
'DECLARE TABLE_CUR CURSOR FOR SELECT A.NAME,B.NAME
FROM ['+@DBName+'].[dbo].sysobjects A JOIN ['+@DBName+'].[sys].schemas B ON A.UID = B.schema_id
where TYPE=''U'' AND A.category = 0
ORDER BY  A.NAME';

EXEC  sp_executesql @SQL;

OPEN TABLE_CUR;

FETCH NEXT FROM TABLE_CUR INTO @TableName,@UserName;

WHILE (@@FETCH_STATUS = 0 )
BEGIN
-- 各テーブルから件数を取得する
	set @SQL = 'INSERT INTO #DB_COUNT SELECT '''+@DBName+''' DB ,'''+@UserName+''' OWN ,'''+@TableName+''' TABLE_NAME ,COUNT(*) AS [COUNT] FROM ['+@DBName+'].['+@UserName+'].' + @TableName;
	EXEC  sp_executesql @SQL;
	FETCH NEXT FROM TABLE_CUR INTO @TableName,@UserName;
END;
CLOSE TABLE_CUR;
DEALLOCATE TABLE_CUR;

FETCH NEXT FROM DB_CUR INTO @DBName;
END;

CLOSE DB_CUR;
DEALLOCATE DB_CUR;

select * from #DB_COUNT where [COUNT] > 1 
order by COUNT desc

drop table #DB_COUNT
