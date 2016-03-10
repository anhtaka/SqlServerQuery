--CREATE TABLE @TAB_SO
DECLARE @TAB_SO TABLE
(
    [SO_NO]                        NVARCHAR(10),
    [SO_NAME]                      NVARCHAR(30)
)

--DROP TABLE #TAB_SO


BEGIN TRANSACTION

INSERT INTO @TAB_SO
(
[SO_NO],
 [SO_NAME] 
)VALUES
(
2,'ddddd'
)
ROLLBACK

SELECT * FROM @TAB_SO

---------------------------------------------------------------------
CREATE TABLE #TAB_SO
(
    [SO_NO]                        NVARCHAR(10),
    [SO_NAME]                      NVARCHAR(30)
)

BEGIN TRANSACTION

INSERT INTO #TAB_SO
(
[SO_NO],
 [SO_NAME] 
)VALUES
(
2,'ddddd'
)
COMMIT

SELECT * FROM #TAB_SO
