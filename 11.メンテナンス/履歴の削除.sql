declare @dt datetime select @dt = cast(N'2011-03-16T12:03:27' as datetime) 

--バックアップ復元の履歴
EXECUTE msdb.dbo.sp_delete_backuphistory @dt

--SQLエージョエント　ジョブの履歴
EXECUTE msdb.dbo.sp_purge_jobhistory  @oldest_date=@dt

--メンテナンスプランの履歴
EXECUTE msdb..sp_maintplan_delete_log null,null,'2011-03-16T12:03:27'
