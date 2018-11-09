

create PROCEDURE dbo.my_proc
    @first int = NULL,  -- NULL default value
    @second int = 2,    -- Default value of 2
    @third int = 3      -- Default value of 3
AS 
    SET NOCOUNT ON;
    SELECT @first as '@first', @second as '@second', @third as '@third';
GO

-- 基本の書き方
EXECUTE dbo.my_proc 40, 50 , 60

--引数を省略、デフォルト値設定の場合
EXECUTE dbo.my_proc 40, @third = 50 
--引数を省略
EXECUTE dbo.my_proc @third = 50 
--パラメータを指定
EXECUTE dbo.my_proc @first = 40, @second = 50 ,@third = 60
--パラメータを指定して順番を変更
EXECUTE dbo.my_proc @third = 60, @second = 50 ,@first = 40

--参考
--https://technet.microsoft.com/ja-jp/library/ms189330%28v=sql.105%29.aspx?f=255&MSPPError=-2147217396
