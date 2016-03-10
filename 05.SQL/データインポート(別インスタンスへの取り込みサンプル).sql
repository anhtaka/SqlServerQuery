
------------------------
-- 勘定科目マスタ
------------------------
-- データ切捨て
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[ACCOUNT] 
-- データインポート
INSERT INTO [R_1_1_0_FI].[dbo].[ACCOUNT] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[ACCOUNT] WITH(NOLOCK)' ) AS TBL

------------------------
-- 集計科目マスタ
------------------------
-- データ切捨て
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[SUMMARY_ACCOUNT_LEVEL] 
-- データインポート
INSERT INTO [R_1_1_0_FI].[dbo].[SUMMARY_ACCOUNT_LEVEL] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[SUMMARY_ACCOUNT_LEVEL] WITH(NOLOCK)' ) AS TBL


------------------------
-- レイアウト構成マスタ
------------------------
-- データ切捨て
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT] 
-- データインポート
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT] WITH(NOLOCK) ' ) AS TBL

------------------------
-- レイアウト構成マスタ(フォーム)
------------------------
-- データ切捨て
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT_REPORT_FORM] 
-- データインポート
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT_REPORT_FORM] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT_REPORT_FORM] WITH(NOLOCK) ' ) AS TBL

------------------------
-- レイアウト構成マスタ(左辺フォーム)
------------------------
-- データ切捨て
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_LEFT] 
-- データインポート
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_LEFT] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_LEFT] WITH(NOLOCK) ' ) AS TBL

------------------------
-- レイアウト構成マスタ(右辺フォーム)
------------------------
-- データ切捨て
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_RIGHT] 
-- データインポート
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_RIGHT] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT_ACCOUNT_FORM_RIGHT] WITH(NOLOCK) ' ) AS TBL

------------------------
-- レイアウト構成マスタ(試算表)
------------------------
-- データ切捨て
TRUNCATE TABLE [R_1_1_0_FI].[dbo].[GL_LAYOUT_TRIAL_BALANCE] 
-- データインポート
INSERT INTO [R_1_1_0_FI].[dbo].[GL_LAYOUT_TRIAL_BALANCE] 
SELECT * FROM OPENROWSET('SQLOLEDB','172.29.41.235';'SSC';'SSC', 'SELECT * FROM [R_1_1_0_FI].[dbo].[GL_LAYOUT_TRIAL_BALANCE] WITH(NOLOCK) ' ) AS TBL







