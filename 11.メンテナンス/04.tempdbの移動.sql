--Tempdb �̈ړ� 
--tempdb �f�[�^�x�[�X�� ALTER DATABASE �X�e�[�g�����g���g�p���Ĉړ��ł��܂��B 

--'1. ���̂悤�� sp_helpfile ���g�p���āAtempdb �f�[�^�x�[�X�̘_���t�@�C�������m�F���܂��B '
use tempdb
go
sp_helpfile
go
--�e�t�@�C���̘_�����́Aname ��Ɋ܂܂�܂��B���̗�ł́A�f�t�H���g�̃t�@�C������ tempdev �� templog ���g�p���܂��B

--'2. ALTER DATABASE �X�e�[�g�����g�ŁA�_���t�@�C���������̂悤�Ɏw�肵�܂��B use master'
go
Alter database tempdb modify file (name = tempdev, filename = 'E:\Sqldata\tempdb.mdf')
go
Alter database tempdb modify file (name = templog, filename = 'E:\Sqldata\templog.ldf')
go
--�ύX���m�F���鎟�̃��b�Z�[�W���\������܂��B 
--�t�@�C�� 'tempdev' �� sysaltfiles �ŕύX����܂����BSQL Server �ċN����ɌÂ��t�@�C�����폜���Ă��������B 

--�t�@�C�� 'templog' �� sysaltfiles �ŕύX����܂����BSQL Server �ċN����ɌÂ��t�@�C�����폜���Ă��������B  

--3. SQL Server ���ĊJ���Ȃ��ƁAtempdb �� sp_helpfile ���g�p���ĕύX���m�F�ł��܂���B  
--4. SQL Server ���~������A�ĊJ���܂��B
