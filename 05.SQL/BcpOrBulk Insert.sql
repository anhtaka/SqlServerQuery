--BULK INSERT
BULK INSERT TEST..TABLE 'E:\EDI\TEST.csv'
WITH (
  DATAFILETYPE = 'char',
  FIELDTERMINATOR = '\t', --ここが変わった
  ROWTERMINATOR = '\n',
  BATCHSIZE=100000
)

--参考URL
-- http://www.pasokuma.net/windows/server/sqlserver/sqlserverbulkinsert.html



--BCP Version
DECLARE @CMD VARCHAR(1000);
SET @CMD = ' bcp "TEST..TABLE" in E:\EDI\TEST.csv -c -S <server_name>\<db>,1434 -U <user> -P <password>'
EXECUTE master.dbo.xp_cmdshell @CMD
