declare @dt datetime select @dt = cast(N'2011-03-16T12:03:27' as datetime) 

--�o�b�N�A�b�v�����̗���
EXECUTE msdb.dbo.sp_delete_backuphistory @dt

--SQL�G�[�W���G���g�@�W���u�̗���
EXECUTE msdb.dbo.sp_purge_jobhistory  @oldest_date=@dt

--�����e�i���X�v�����̗���
EXECUTE msdb..sp_maintplan_delete_log null,null,'2011-03-16T12:03:27'
