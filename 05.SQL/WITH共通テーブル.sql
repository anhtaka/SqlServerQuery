;WITH CTE AS 
(
	select EMP_CODE,EMP_LAST_NAME,EMP_FIRST_NAME from dbo.EMP
) 
, CTE1 AS 
(
	select EMP_CODE,EMP_LAST_NAME,EMP_FIRST_NAME from dbo.EMP
) 

SELECT * FROM CTE 
ORDER BY EMP_CODE
