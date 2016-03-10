--Tempdb の移動 
--tempdb データベースは ALTER DATABASE ステートメントを使用して移動できます。 

--'1. 次のように sp_helpfile を使用して、tempdb データベースの論理ファイル名を確認します。 '
use tempdb
go
sp_helpfile
go
--各ファイルの論理名は、name 列に含まれます。この例では、デフォルトのファイル名の tempdev と templog を使用します。

--'2. ALTER DATABASE ステートメントで、論理ファイル名を次のように指定します。 use master'
go
Alter database tempdb modify file (name = tempdev, filename = 'E:\Sqldata\tempdb.mdf')
go
Alter database tempdb modify file (name = templog, filename = 'E:\Sqldata\templog.ldf')
go
--変更を確認する次のメッセージが表示されます。 
--ファイル 'tempdev' が sysaltfiles で変更されました。SQL Server 再起動後に古いファイルを削除してください。 

--ファイル 'templog' が sysaltfiles で変更されました。SQL Server 再起動後に古いファイルを削除してください。  

--3. SQL Server を再開しないと、tempdb で sp_helpfile を使用して変更を確認できません。  
--4. SQL Server を停止した後、再開します。
