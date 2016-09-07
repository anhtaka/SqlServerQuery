USE [R_1_1_0_CM]
GO

/****** Object:  UserDefinedFunction [dbo].[CM_MS_GetLowerAllDeptLevel]    Script Date: 2016/09/07 15:32:04 ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO
USE [R_1_1_0_CM]
GO

SELECT * FROM [dbo].[SO_View] ('1')
GO

SELECT * FROM [dbo].[SO_View] ('2')
GO


-----------------------------------------------------------
--テーブル関数
-----------------------------------------------------------
CREATE  FUNCTION [dbo].[SO_View] (@TYPE AS NVARCHAR(10))
RETURNS @getSO TABLE (
	CUST_CODE NVARCHAR(12)
	,CUST_SBNO  NVARCHAR(12)
	,KEY_GRAND_TTL DECIMAL(14, 2)
	,PRIMARY KEY (
		CUST_CODE
		,CUST_SBNO
		,KEY_GRAND_TTL
		)
	)
AS
BEGIN


	IF (@TYPE = '1')
	BEGIN
		INSERT INTO @GETSO
		SELECT CUST_CODE
			,'XX'
			,SUM(KEY_GRAND_TTL) AS KEY_GRAND_TTL
		FROM ..SO
		GROUP BY CUST_CODE
	END

	IF (@TYPE = '2')
	BEGIN
		INSERT INTO @GETSO
		SELECT CUST_CODE
			,CUST_SBNO
			,SUM(KEY_GRAND_TTL) AS KEY_GRAND_TTL
		FROM ..SO
		GROUP BY CUST_CODE,CUST_SBNO
	END

	RETURN
END
