
--■文字から数字
select CONVERT(int,'0000000010')+1

--■数字から文字
select '000000000'+CONVERT(nvarchar,11)

--■文字列の一部の取得
select SUBSTRING(name2,5000,30),* from dbo.Table_1
