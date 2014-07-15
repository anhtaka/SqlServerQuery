
--1) テンプテーブルを作成する。
create table #splock(spid int,dbid int,objid int,indid int,type varchar(100),resource varchar(100),
mode varchar(100), status varchar(100),checktime datetime default getdate())
CREATE TABLE #Inputbuffer(
EventType NVARCHAR(30) NULL,
Parameters INT NULL,
EventInfo NVARCHAR(3000) NULL
)
GO
--2) sp_lock を実行し、結果をテーブルに保存する。
insert into #splock(spid,dbid,objid,indid,type,resource,mode,status) exec sp_lock


--3実行している処理を表示
INSERT #Inputbuffer
EXEC('DBCC INPUTBUFFER(51)')
GO

select * from #Inputbuffer

--kill 59
